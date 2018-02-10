//
//  Person.swift
//  SwiftContacts
//
//  Created by Perry Davies on 09/02/2018.
//  Copyright © 2018 Perry Davies. All rights reserved.
//

import Foundation
import Contacts

class DataModel
{
    var contacts : [CNContact]?
    
    init()
    {
        let store = CNContactStore()
        
        if CNContactStore.authorizationStatus(for: .contacts) == .notDetermined
        {
            store.requestAccess(for: .contacts, completionHandler: {(authorized, error) in
                if authorized
                {
                    self.retrieveContacts(fromStore: store);
                }
            })
        }
        else if CNContactStore.authorizationStatus(for: .contacts) == .authorized
        {
            retrieveContacts(fromStore: store);        }
    }
 
    func retrieveContacts(fromStore store: CNContactStore)
    {
        let keysTofetch = [CNContactGivenNameKey as CNKeyDescriptor,
                           CNContactFamilyNameKey as CNKeyDescriptor]
        
        let containerId = store.defaultContainerIdentifier()
        let predicate = CNContact.predicateForContactsInContainer(withIdentifier: containerId)
        contacts = try? store.unifiedContacts(matching: predicate, keysToFetch: keysTofetch)
 
    }
}

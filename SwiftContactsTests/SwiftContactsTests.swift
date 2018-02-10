//
//  SwiftContactsTests.swift
//  SwiftContactsTests
//
//  Created by Perry Davies on 09/02/2018.
//  Copyright © 2018 Perry Davies. All rights reserved.
//
import Contacts
import XCTest
@testable import SwiftContacts

class SwiftContactsTests: XCTestCase {
    var contacts : [CNContact] = []
    var dataModel : DataModel?
    
    override func setUp() {
        super.setUp()
        dataModel = DataModel()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test methoddata in the class.
        super.tearDown()
        dataModel = nil
    }
    
    func testExample() {
        if let count = dataModel?.contacts?.count
        {
            XCTAssert(count > 0)
            print("Contacts cotains \(count) entries")
        }
        else
        {
            XCTFail("No Contacts available")
        }
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}

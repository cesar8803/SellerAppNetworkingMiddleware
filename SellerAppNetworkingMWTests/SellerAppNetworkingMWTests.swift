//
//  SellerAppNetworkingMWTests.swift
//  SellerAppNetworkingMWTests
//
//  Created by Bernardino Guerrero Ibarra on 6/23/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import XCTest
@testable import SellerAppNetworkingMW


class SellerAppNetworkingMWTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testServiceMenuLevels()
    {
        /*
        let ex = expectation(description: "Call to all Menu was successful")
        
        AsyncClientMW.getMenuLevel(categoryId: "root", completion: { (menuLevel) in
            XCTAssertNotNil(menuLevel)
            XCTAssertNotNil(menuLevel.categoryInfo)
            ex.fulfill()
        }) { (erroMsg) in
            
        }
        
        waitForExpectations(timeout: 1) { (error) in
            XCTAssertNil(error, "Test timeout \(error!.localizedDescription)")
        }
        */
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}

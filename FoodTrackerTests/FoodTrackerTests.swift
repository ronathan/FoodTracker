//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Ronald Victorino on 2016-02-29.
//  Copyright © 2016 Ronald Victorino. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    // MARK: FoodTracker Tests

    // Tests to confirm that the Meal initializer returns when no name or a negative rating is provided
    func testMealInitialization() {
        let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid.")
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative ratings are invalid, be positive.")
    }
}

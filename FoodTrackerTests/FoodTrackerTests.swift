//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Ralph on 23/10/2018.
//  Copyright © 2018 Ralph. All rights reserved.
//

import XCTest
@testable import FoodTracker

// EVERY FUNCTION SHOULD START WITH test

class FoodTrackerTests: XCTestCase {

    //MARK: Meal Class Tests
    //Confirm that meal initializer returns a meal object when passed valid parameter
    func testMealInitializationSucceeds(){
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    func testMealInitializationFails(){
        // Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        // Empty String
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
    }
}

//
//  Meal.swift
//  FoodTracker
//
//  Created by Preeti Patel on 2015-12-29.
//  Copyright © 2015 Jayesh Patel. All rights reserved.
//

import UIKit

class Meal {
  
  // MARK: Properties
  var name: String
  var photo: UIImage?
  var rating: Int

  // MARK: Initialization
  init?(name: String, photo: UIImage?, rating: Int) {
    // Initialize stored properties.
    self.name = name
    self.photo = photo
    self.rating = rating
    // Initialization should fail if there is no name or if the rating is negative.
    if name.isEmpty || rating < 0 || rating > 5 {
      return nil
    }
  }

}
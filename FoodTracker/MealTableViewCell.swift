//
//  MealTableViewCell.swift
//  FoodTracker
//
//  Created by Preeti Patel on 2015-12-31.
//  Copyright © 2015 Jayesh Patel. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {

  // MARK: Properties
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var photoImageView: UIImageView!
  @IBOutlet weak var ratingControl: RatingControl!

  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }

  override func setSelected(selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)

    // Configure the view for the selected state
  }

}

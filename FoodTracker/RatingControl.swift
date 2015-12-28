//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Preeti Patel on 2015-12-27.
//  Copyright © 2015 Jayesh Patel. All rights reserved.
//

import UIKit

class RatingControl: UIView {
  
  // MARK: Properties
  var rating = 0
  var ratingButtons = [UIButton]()

  // MARK: Initialization
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    let filledStarImage = UIImage(named: "filledStar")
    let emptyStarImage = UIImage(named: "emptyStar")
    for _ in 0..<5 {
      let button = UIButton()
      button.setImage(emptyStarImage, forState: .Normal)
      button.setImage(filledStarImage, forState: .Selected)
      button.setImage(filledStarImage, forState: [.Highlighted, .Selected])
      button.adjustsImageWhenHighlighted = false
      button.addTarget(self, action: "ratingButtonTapped:", forControlEvents: .TouchDown)
      ratingButtons += [button]
      addSubview(button)
    }
  }

  override func intrinsicContentSize() -> CGSize {
    let buttonSize = Int(frame.size.height)
    let width = (buttonSize + 4) * 5
    return CGSize(width: width, height: buttonSize)
  }
  
  override func layoutSubviews() {
    // Set the button's width and height to a square the size of the frame's height.
    let buttonSize = Int(frame.size.height)
    var buttonFrame = CGRect(x: 0, y:0, width: buttonSize, height: buttonSize)
    // Offset each button's origin by the length of the button plus spacing.
    for (index, button) in ratingButtons.enumerate() {
      buttonFrame.origin.x = CGFloat(index * (buttonSize + 5))
      button.frame = buttonFrame
    }
  }

  // MARK: Button Action
  func ratingButtonTapped(button: UIButton) {
    print("Button pressed 👍")
  }

}
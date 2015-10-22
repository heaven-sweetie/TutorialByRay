//
//  PlayerCell.swift
//  Ratings
//
//  Created by heaven on 10/21/15.
//  Copyright © 2015 heaven. All rights reserved.
//

import UIKit

class PlayerCell: UITableViewCell {
    
//    MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    
    var player: Player! {
        didSet {
            nameLabel.text = player.name
            gameLabel.text = player.game
            ratingImageView.image = imageForRating(player.rating)
        }
    }
    
    func imageForRating(rating: Int) -> UIImage? {
        return UIImage(named: "\(rating)Stars")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

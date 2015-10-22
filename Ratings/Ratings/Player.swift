//
//  Player.swift
//  Ratings
//
//  Created by heaven on 10/19/15.
//  Copyright © 2015 heaven. All rights reserved.
//

import UIKit

struct Player {
    var name: String?
    var game: String?
    var rating: Int
    
    init(name: String?, game: String?, rating: Int) {
        self.name = name
        self.game = game
        self.rating = rating
    }
}
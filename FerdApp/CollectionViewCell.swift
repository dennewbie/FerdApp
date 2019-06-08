//
//  CollectionViewCell.swift
//  FerdApp
//
//  Created by Denny Caruso on 15/11/2018.
//  Copyright © 2018 Denny Caruso. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    //summary
    @IBOutlet weak var meetLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var ferdy1: UIImageView!
    
    @IBOutlet weak var ferdy2: UIImageView!
    @IBOutlet weak var emojiFerdy: UILabel!
    
    @IBOutlet weak var quote: UILabel!
    
    @IBOutlet weak var cit: UILabel!
    @IBOutlet weak var insta: UIImageView!
    @IBOutlet weak var gmail: UIImageView!
    @IBOutlet weak var fb: UIImageView!
    @IBOutlet weak var follow: UILabel!
    
    
    
    //goals
    /*@IBOutlet weak var titleReached: UILabel!
    @IBOutlet weak var reachedGoals: UILabel!
    @IBOutlet weak var textReached: UILabel!
    @IBOutlet weak var FerdMoji: UIImageView!
     
     
    
    */
    @IBOutlet weak var ferdMoji: UIImageView!
    @IBOutlet weak var titleReached: UILabel!
    @IBOutlet weak var reachedGoals: UILabel!
    @IBOutlet weak var textReached: UILabel!
    
    
    //capabilities
    
    @IBOutlet weak var titleCapabilities: UILabel!
    @IBOutlet weak var firstCapabilities: UILabel!
    @IBOutlet weak var secondCapabilities: UILabel!
    @IBOutlet weak var thirdCapabilities: UILabel!
    @IBOutlet weak var firstCapabilitiesImage: UIImageView!
    @IBOutlet weak var secondCapabilitiesImage: UIImageView!
    
    
    // life story
    
    @IBOutlet weak var titleLifeStory: UILabel!
    @IBOutlet weak var textLifeStory: UILabel!
    @IBOutlet weak var imageLifeStory: UIImageView!
    
    
    @IBOutlet weak var firstHobby: UILabel!
    @IBOutlet weak var firstHobbyImage: UIImageView!
    
    @IBOutlet weak var secondHobby: UILabel!
    @IBOutlet weak var secondHobbyImage: UIImageView!
    
    @IBOutlet weak var thirdHobby: UILabel!
    //@IBOutlet weak var thirdHobbyImage: UIImageView!

}

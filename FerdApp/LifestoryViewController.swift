//
//  LifestoryViewController.swift
//  FerdApp
//
//  Created by Denny Caruso on 16/11/2018.
//  Copyright © 2018 Denny Caruso. All rights reserved.
//

import UIKit

class LifestoryViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var lifestoryCollectionView: UICollectionView!
    
    
    
    
    let titleLifeStory = ["Bio", "Hobbies"]
    let textLifeStory = ["", ""]
    
    
    let imageLifeStory: [UIImage] = [
        UIImage(named: "ferdySuperMan")!,
        UIImage(named: "collage3")!,
    ]
    
    
    let firstHobby = ["Ferdinando revealed me that he is a secret agent of the FBI. A few times ago, a dangerous criminal was scaring people in the city of Florence, so the FBI called him.", "-Rap and Rock Music -Tech Addicted             -Running             -Riding bikes"]
    
    let firstHobbyImage: [UIImage] = [
        
        UIImage(named: "fbi")!,
        UIImage(named: "collage1")!,
    
    ]
    
    
    let secondHobby = ["When He gets known that the criminal is probably in Naples, thanks to an informator, he flied here.", "-League of Legends            -Hitting Paolo Mancuso"]
    
    let secondHobbyImage: [UIImage] = [
        
        UIImage(named: "naples")!,
        UIImage(named: "collage2")!,
        
        ]
    
    
   let thirdHobby = ["In fact, there is a reason for Ferdinando to be here, at the Academy... where the criminal is... It can be one of the students, it can be one of the mentors, but surely he is here.", "-Reading Action books                     -Play the piano           -Play the guitar                    -Drink Coffee                    -Help change the world"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var layout = self.lifestoryCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        
        
        layout.sectionInset = UIEdgeInsets(top: 15, left: 5, bottom: 0, right: 5)
       
        /*let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
       
        layout.itemSize = CGSize(width: width / 2, height: width / 2)*/
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 20
        //lifestoryCollectionView!.collectionViewLayout = layout
        // Do any additional setup after loading the view.
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 2
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cellLifestory = collectionView.dequeueReusableCell(withReuseIdentifier: "CellLifeStory", for: indexPath) as! CollectionViewCell
        
        
        cellLifestory.titleLifeStory.text = titleLifeStory[indexPath.item]
        cellLifestory.textLifeStory.text = textLifeStory[indexPath.item]
        cellLifestory.imageLifeStory.image = imageLifeStory[indexPath.item]
        
        /* cellGoal.ferdMoji.image = ferdMoji[indexPath.item]
         cellGoal.titleReached.text = titleReached[indexPath.item]
         cellGoal.reachedGoals.text = reachedGoals[indexPath.item]
         cellGoal.textReached.text = textReached[indexPath.item]
         */

        cellLifestory.imageLifeStory.layer.borderWidth = 1
        cellLifestory.imageLifeStory.layer.masksToBounds = false
        cellLifestory.imageLifeStory.layer.borderColor = UIColor.black.cgColor
        cellLifestory.imageLifeStory.layer.cornerRadius = cellLifestory.imageLifeStory.frame.height/3 //This will change with corners of image and height/2 will make this circle shape
        cellLifestory.imageLifeStory.clipsToBounds = true
        
        
        
        cellLifestory.firstHobby.text = firstHobby[indexPath.item]
        cellLifestory.firstHobbyImage.image = firstHobbyImage[indexPath.item]
        
        
        cellLifestory.secondHobby.text = secondHobby[indexPath.item]
        cellLifestory.secondHobbyImage.image = secondHobbyImage[indexPath.item]
        
        cellLifestory.thirdHobby.text = thirdHobby[indexPath.item]
        
        
        
        
        
        
        
        
        
        
        
        
        return cellLifestory
        
    }
    
   func collectionView(_ collectionView: UICollectionView,
                                 willDisplay cell: UICollectionViewCell,
                                 forItemAt indexPath: IndexPath) {
        
        cell.alpha = 0
        UIView.animate(withDuration: 1.5) {
            cell.alpha = 1
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

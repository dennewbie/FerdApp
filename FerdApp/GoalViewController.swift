//
//  GoalViewController.swift
//  FerdApp
//
//  Created by Denny Caruso on 15/11/2018.
//  Copyright © 2018 Denny Caruso. All rights reserved.
//

import UIKit

class GoalViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var goalCollectionView: UICollectionView!
    
    let ferdMoji: [UIImage] = [
        UIImage(named: "ferdMoji1")!,
        UIImage(named: "ferdMoji2")!,
        UIImage(named: "ferdMoji3")!,
    ]
    
    let titleReached = ["Reached Goals", "Next Goals", "What I would like to achieve"]
    
    let reachedGoals = ["-Get an Electronic High School Diploma -Join Apple Developer Academy 18/19 -Go cycling regularly", "-Gain skills with Swift and xCode -Improve my public speaking skills -Be optimistic", "-WWDC 2018 -Marcellino Amato -Find a work in IT or Electronic Field -Travel and move out Naples"]
    let textReached = ["-Complete Mini Challenge 1", "-Complete Nano Challenge 1", ""]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        var layout = self.goalCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        
        
        layout.sectionInset = UIEdgeInsets(top: 15, left: 5, bottom: 0, right: 5)
        // Do any additional setup after loading the view.
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 3
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellGoal = collectionView.dequeueReusableCell(withReuseIdentifier: "CellGoal", for: indexPath) as! CollectionViewCell
        
        cellGoal.ferdMoji.image = ferdMoji[indexPath.item]
        cellGoal.titleReached.text = titleReached[indexPath.item]
        cellGoal.reachedGoals.text = reachedGoals[indexPath.item]
        cellGoal.textReached.text = textReached[indexPath.item]
        
        return cellGoal
        
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        willDisplay cell: UICollectionViewCell,
                        forItemAt indexPath: IndexPath) {
        
        cell.alpha = 0
        UIView.animate(withDuration: 1.5) {
            cell.alpha = 1
        }

    /*
    // MARK: - Navigation
*/
         
        
        /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
 
*/
}
}

//
//  CapabilitiesViewController.swift
//  FerdApp
//
//  Created by Denny Caruso on 16/11/2018.
//  Copyright © 2018 Denny Caruso. All rights reserved.
//

import UIKit

protocol CollectionPushAndPoppable {
    var sourceCell: UICollectionViewCell? { get }
    var collectionView: UICollectionView? { get }
    var view: UIView! { get }
}


class CapabilitiesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
//collection view dichiarazione outlet

    @IBOutlet weak var capabilitiesCollectionView: UICollectionView!
    
    
    
    //costanti
    
    let titleCapabilities = ["Technology", "Manual", "Other"]
    let firstCapabilities = ["-Coding (C, C++, Java, HTML)", "-Wood worker (little statue and furniture)", "-Active Listening                                                             -Happy and Funny person"]
    
    let secondCapabilities = ["-Industrial Hi-Tech Electronic  -Cybersecurity Essentials", "-Advanced Clay Modelling (Pokemon)", "-Working in Group -Self-control and Problem Solving"]
    let thirdCapabilities = ["-Windows and Linux Server", "-Painting ", ""]
    
    let firstCapabilitiesImage: [UIImage] = [
        UIImage(named: "firstCapabilitiesImage-1")!,
        UIImage(named: "firstCapabilitiesImage-2")!,
        UIImage(named: "firstCapabilitiesImage-3")!,
    ]
    
    let secondCapabilitiesImage: [UIImage] = [
        UIImage(named: "secondCapabilitiesImage-1")!,
        UIImage(named: "secondCapabilitiesImage-2")!,
        UIImage(named: "secondCapabilitiesImage-3")!,
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        var layout = self.capabilitiesCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        
        
        layout.sectionInset = UIEdgeInsets(top: 15, left: 5, bottom: 0, right: 5)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 20
        // Do any additional setup after loading the view.
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 3
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       var cellCapabilities = collectionView.dequeueReusableCell(withReuseIdentifier: "CellCapabilities", for: indexPath) as! CollectionViewCell
        
       /* cellGoal.ferdMoji.image = ferdMoji[indexPath.item]
        cellGoal.titleReached.text = titleReached[indexPath.item]
        cellGoal.reachedGoals.text = reachedGoals[indexPath.item]
        cellGoal.textReached.text = textReached[indexPath.item]
        */
        
        cellCapabilities.titleCapabilities.text = titleCapabilities[indexPath.item]
        cellCapabilities.firstCapabilities.text = firstCapabilities[indexPath.item]
        cellCapabilities.firstCapabilitiesImage.image = firstCapabilitiesImage[indexPath.item]
        cellCapabilities.secondCapabilities.text = secondCapabilities[indexPath.item]
        cellCapabilities.secondCapabilitiesImage.image = secondCapabilitiesImage[indexPath.item]
        cellCapabilities.thirdCapabilities.text = thirdCapabilities[indexPath.item]
        
        cellCapabilities.firstCapabilitiesImage.layer.borderWidth = 1
        cellCapabilities.firstCapabilitiesImage.layer.masksToBounds = false
        cellCapabilities.firstCapabilitiesImage.layer.borderColor = UIColor.black.cgColor
        cellCapabilities.firstCapabilitiesImage.layer.cornerRadius = cellCapabilities.firstCapabilitiesImage.frame.height/3 //This will change with corners of image and height/2 will make this circle shape
        cellCapabilities.firstCapabilitiesImage.clipsToBounds = true
        
        
        cellCapabilities.secondCapabilitiesImage.layer.borderWidth = 1
        cellCapabilities.secondCapabilitiesImage.layer.masksToBounds = false
        cellCapabilities.secondCapabilitiesImage.layer.borderColor = UIColor.black.cgColor
        cellCapabilities.secondCapabilitiesImage.layer.cornerRadius = cellCapabilities.secondCapabilitiesImage.frame.height/3 //This will change with corners of image and height/2 will make this circle shape
        cellCapabilities.secondCapabilitiesImage.clipsToBounds = true
        
        
        return cellCapabilities
        
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

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
*/
}
}

//
//  ViewController.swift
//  FerdApp
//
//  Created by Denny Caruso on 10/11/2018.
//  Copyright © 2018 Denny Caruso. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
       
    
    @IBOutlet weak var collectionView: UICollectionView!
    var conto: Int = 0
    
    let meet = ["Meet", "", "", ""]
    let quote = ["", "", "Tutto ciò di cui hai bisogno è l’amore,  ma un po’ di cioccolata non fa male.", ""]
    let cit = ["", "", "Charles Schultz", ""]
    let ferdinando = ["Ferdinando Coluni", "", "", ""]
    let descrizione = ["Apple Developer, Electronic, 20 y.o.             Naples, Italy", "", "", ""]
    let emoji = ["", "👨🏻‍💻 🎧 🚴🏻‍♂️", "", ""]
    
    let image1: [UIImage] = [
        
        UIImage(named: "t")!,
        UIImage(named: "1")!,
        UIImage(named: "t")!,
        UIImage(named: "t")!,
        ]
    
    let image2: [UIImage] = [
        
        UIImage(named: "t")!,
        UIImage(named: "2")!,
        UIImage(named: "t")!,
        UIImage(named: "t")!,
        ]
    
    
    let insta: [UIImage] = [
        UIImage(named: "t")!,
        UIImage(named: "t")!,
        UIImage(named: "t")!,
        UIImage(named: "insta")!,
    
    ]
    
    let fb: [UIImage] = [
        UIImage(named: "t")!,
        UIImage(named: "t")!,
        UIImage(named: "t")!,
        UIImage(named: "fb")!,
        
        ]
    
    
    let gmail: [UIImage] = [
        UIImage(named: "t")!,
        UIImage(named: "t")!,
        UIImage(named: "t")!,
        UIImage(named: "gmail")!,
        
        ]
    
    
    let follow = ["", "", "", "Follow Meee!"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
       var layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
    

        layout.sectionInset = UIEdgeInsets(top: 15, left: 5, bottom: 0, right: 5)
        //layout.minimumInteritemSpacing = 30
        /*layout.itemSize = CGSize(width: (self.collectionView.frame.size.width - 50), height: (self.collectionView.frame.size.height + 20)/3)*/
        // Do any additional setup after loading the view, typically from a nib.
    }

    

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        conto = conto + 1
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
       // let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "SocialCell", for: indexPath) as! CollectionViewCell
        
        
        cell.meetLabel.text = meet[indexPath.item]
        cell.nameLabel.text = ferdinando[indexPath.item]
        cell.descriptionLabel.text = descrizione[indexPath.item]
        
        
        cell.ferdy1.layer.cornerRadius = cell.ferdy1.frame.size.width / 2
        cell.ferdy1.clipsToBounds = true
        
        cell.ferdy2.layer.cornerRadius = cell.ferdy1.frame.size.width / 2
        cell.ferdy2.clipsToBounds = true
        
        
        cell.ferdy1.image = image1[indexPath.item]
        cell.ferdy2.image = image2[indexPath.item]
        cell.emojiFerdy.text = emoji[indexPath.item]
        
        
        cell.quote.text = quote[indexPath.item]
        cell.cit.text = cit[indexPath.item]
        
        
        cell.follow.text = follow[indexPath.item]
        cell.insta.image = insta[indexPath.item]
        cell.fb.image = fb[indexPath.item]
        cell.gmail.image = gmail[indexPath.item]
    
        if conto > 3 {
            
            
            let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
            cell.insta.isUserInteractionEnabled = true
            cell.insta.addGestureRecognizer(tapGestureRecognizer)
            
            let tapGestureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(imageTapped2(tapGestureRecognizer2:)))
            cell.fb.isUserInteractionEnabled = true
            cell.fb.addGestureRecognizer(tapGestureRecognizer2)
            
            let tapGestureRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(imageTapped3(tapGestureRecognizer3:)))
            cell.gmail.isUserInteractionEnabled = true
            cell.gmail.addGestureRecognizer(tapGestureRecognizer3)
            
            
        }
        
        
        
       /* cell2.insta.image = insta[indexPath.item]
        cell2.fb.image = fb[indexPath.item]
        cell2.gmail.image = gmail[indexPath.item]
        */
     
       
        
        /* for index in 3..<4{
         
         
         cell.insta.image = insta[index]
         cell.fb.image = fb[index]
         cell.gmail.image = gmail[index]
         
         }*/
        
    
        /* let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        cell.insta.isUserInteractionEnabled = true
        cell.insta.addGestureRecognizer(tapGestureRecognizer)
        
        let tapGestureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(imageTapped2(tapGestureRecognizer2:)))
        cell.fb.isUserInteractionEnabled = true
        cell.fb.addGestureRecognizer(tapGestureRecognizer2)
        
        let tapGestureRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(imageTapped3(tapGestureRecognizer3:)))
        cell.gmail.isUserInteractionEnabled = true
        cell.gmail.addGestureRecognizer(tapGestureRecognizer3)
        */
       return cell
        
    }
    
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        if let url = NSURL(string: "http://instagram.com/ferdinand_coluni/") {
            UIApplication.shared.openURL(url as URL)
        }
        
        // Your action
    }
    
    @objc func imageTapped2(tapGestureRecognizer2: UITapGestureRecognizer)
    {
        let tappedImage = tapGestureRecognizer2.view as! UIImageView
        if let url = NSURL(string: "http://faceboook.com/ferdinando.coluni.1") {
            UIApplication.shared.openURL(url as URL)
        }
        
        // Your action
    }
    
    
    @objc func imageTapped3(tapGestureRecognizer3: UITapGestureRecognizer)
    {
        let tappedImage = tapGestureRecognizer3.view as! UIImageView
        if let url = NSURL(string: "http://mail.google.com/mail/u/0/") {
            UIApplication.shared.openURL(url as URL)
        }
        
        // Your action
    }
    
    
    
   func collectionView(_ collectionView: UICollectionView,
                        willDisplay cell: UICollectionViewCell,
                        forItemAt indexPath: IndexPath) {
        
        cell.alpha = 0
        UIView.animate(withDuration: 1.5) {
            cell.alpha = 1
        }
 

    } 
}


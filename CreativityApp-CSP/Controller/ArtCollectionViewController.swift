//
//  ArtCollectionViewController.swift
//  CreativityApp-CSP
//
//  Created by Cody Henrichsen on 10/21/19.
//  Copyright © 2019 CTEC. All rights reserved.
//

import UIKit

class ArtCollectionViewController : UICollectionViewController
{
    //MARK: Data members for the ArtCollectionViewController
    var images : [String]!
    var titles : [String]!
    
    //MARK: - Lifecycle methods
    override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        
        loadImages()
    }
    
    // MARK: - Navigation / Layout
    
    private func loadImages() -> Void
    {
        let imageOne : String = "SunGlasses"
        
        let imageOneTitle : String = "Colorful sunglasses"
        
        let imageTwo : String = "bobpool"
        
        let imageTwoTitle : String = "Bob Ross as Dead Pool"
        
        let imageThree : String = "Wood"
        
        let imageThreeTitle : String = "Broken Wood"
        
        let imageFour : String = "Java"
        
        let imageFourTitle : String = "Java Haiku"
        
        let imageFive : String = "MTM"
        
        let imageFiveTitle : String = "MTM Haiku"
        
        let imageSix : String = "Swift Haiku"
        
        let imageSixTitle : String = "Swift Haiku"
        
        let imageList = [imageOne, imageTwo, imageThree, imageFour, imageFive, imageSix]
        let titleList : [String] = [imageOneTitle, imageTwoTitle, imageThreeTitle, imageFourTitle, imageFiveTitle, imageSixTitle]
        
        titles = titleList
        images = imageList
    }
    
    public override func numberOfSections(in collectionView: UICollectionView) -> Int
    {
        return 1
    }
    
    public override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section : Int) -> Int
    {
        if (images != nil)
        {
            return images.count
        }
        return 0
    }
    

}

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
    let reuseIdentifier = "artIdentifier"
    private let sectionInsets = UIEdgeInsets(top: 10.0, left: 2.0, bottom: 10.0, right: 2.0)
    
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
    
    public override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let artCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ArtCell
        
        artCell.backgroundColor = .blue
        artCell.artImage.image = UIImage.init(named: images[indexPath.row])
        //Gar
        
        //artCell.artImage.image = images[indexPath.row]
        
        artCell.artLabel.text = titles[indexPath.row]
        
        return artCell
    }
    
    //MARK: - Handle Touch
    @objc
    private func dismissFullscreenImage(_ sender: UITapGestureRecognizer) -> Void
    {
        sender.view?.removeFromSuperview()
    }
    
    public override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        let imageView = UIImageView(image: UIImage.init(named: images[indexPath.row]))
        imageView.frame = self.view.frame
        imageView.backgroundColor = .black
        imageView.contentMode = .scaleAspectFit
        imageView.isUserInteractionEnabled = true
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissFullscreenImage))
            imageView.addGestureRecognizer(tap)
        
            self.view.addSubview(imageView)
        
    }

    //MARK: - Handle spacing components
    
    public func collectionVew(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insertForSectionAt section: Int) -> UIEdgeInsets
    {
        return sectionInsets
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
    {
        return sectionInsets.left
    }
}

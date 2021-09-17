//
//  PhotoCollectionViewController.swift
//  PhotoSearch
//
//  Created by nil on 17.09.2021.
//

import UIKit
import AlamofireImage


class PhotoCollectionViewController: UICollectionViewController {
    
    var searchText: String = ""
    var photos: [ResultPhoto] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NetworkService.loadTst(searchText: searchText) { [weak self] photos in
            self?.photos = photos
            self?.collectionView.reloadData()
            
        }
        
        
    }
    
    
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return photos.count
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCollectionViewCell
        let urlPhoto = URL(string: photos[indexPath.item].urls.full)!
        cell.photoview.af.setImage(withURL: urlPhoto)
        
        return cell
    }
    
    
    
}

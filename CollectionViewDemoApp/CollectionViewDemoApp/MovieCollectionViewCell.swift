//
//  MovieCollectionViewCell.swift
//  CollectionViewDemoApp
//
//  Created by JayaShankar Mangina on 11/11/21.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView!
    
    func assignMovie(with movie: Movie){
           movieImageView.image = movie.image
       }
    
    
}

//
//  ViewController.swift
//  CollectionViewDemoApp
//
//  Created by JayaShankar Mangina on 11/11/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "movie", for: indexPath) as! MovieCollectionViewCell
        cell.assignMovie(with: movies[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            assignMovieDetails(index: indexPath)
        }
    
    func assignMovieDetails(index: IndexPath){
        movieTitle.text = "Movie title: \(movies[index.row].title)"
        yearReleased.text = "Year Released: \(movies[index.row].releasedYear)"
        rating.text = "Rating: \(movies[index.row].movieRating)"
        boxOffice.text = "Box Office: \(movies[index.row].boxOffice)"
        }

    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var yearReleased: UILabel!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var boxOffice: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
    }


}


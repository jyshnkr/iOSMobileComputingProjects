//
//  displayImageViewController.swift
//  Mangina_TableViewDisplay
//
//  Created by JayaShankar Mangina on 11/18/21.
//

import UIKit

class displayImageViewController: UIViewController {
    
    var prodInfoArray : Product?
    var image = UIImage()
    var productInfo = ""

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var displayLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageView.image = image
        
        
    }
    

    @IBAction func getInfo(_ sender: UIButton) {
        
    }
    

}

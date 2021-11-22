//
//  DataViewController.swift
//  ApiDemo
//
//  Created by JayaShankar Mangina on 11/18/21.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var heroName: UILabel!
    
    @IBOutlet weak var heroLocalName: UILabel!
    
    @IBOutlet weak var heroPrimaryAttr: UILabel!
    
    @IBOutlet weak var heroAttackType: UILabel!
    
    var heroes : HeroData?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        heroName.text = heroes?.name
        heroLocalName.text = heroes?.localized_name
        heroPrimaryAttr.text = heroes?.primary_attr
        heroAttackType.text = heroes?.attack_type
    }
    

}

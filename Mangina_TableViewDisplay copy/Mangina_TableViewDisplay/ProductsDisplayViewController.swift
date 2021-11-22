//
//  ProductsDisplayViewController.swift
//  Mangina_TableViewDisplay
//
//  Created by JayaShankar Mangina on 11/16/21.
//

import UIKit


class ProductsDisplayViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (products?.products.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = productsTableView.dequeueReusableCell(withIdentifier: "showProducts", for: indexPath)
        cell.textLabel?.text = products?.products[indexPath.row]
        return cell
    }
    
    
    var products : Product?
    
    @IBOutlet weak var productsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsTableView.delegate = self
        productsTableView.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let identifier = segue.identifier
        if identifier == "displayImages"{
            let dest2 = segue.destination as! displayImageViewController
            
        }
    }
    
}

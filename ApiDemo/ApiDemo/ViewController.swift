//
//  ViewController.swift
//  ApiDemo
//
//  Created by JayaShankar Mangina on 11/18/21.
//

import UIKit



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heros.count
    }
    
    var heros = [HeroData]()
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlt.dequeueReusableCell(withIdentifier: "showData", for: indexPath)
        cell.textLabel?.text = heros[indexPath.row].localized_name
        return cell
    }
    
    func getJsonData(completed: @escaping() -> ()){
        //Set up the URL
        let url = URL(string : "https://api.opendota.com/api/heroStats");
        
        URLSession.shared.dataTask(with: url!){data,response,error in
            if error == nil{
                do{
                    self.heros = try JSONDecoder().decode([HeroData].self, from: data!)
                    DispatchQueue.main.async{
                        completed()
                    }
                }catch{
                    print("error")
                }
            }
        }.resume()
    }
    

    @IBOutlet weak var tableViewOutlt: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getJsonData {
            self.tableViewOutlt.reloadData()
        }
        tableViewOutlt.delegate = self
        tableViewOutlt.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let transition = segue.identifier
            if transition == "revealData"{
                let destination = segue.destination as! DataViewController
                destination.heroes = heros[(tableViewOutlt.indexPathForSelectedRow?.row)!]
            }
            
        }


}


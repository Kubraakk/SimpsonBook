//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Kübra Akpunar (Teknoloji Mimarisi Bölümü) on 12.03.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var tableView: UITableView!
    
    var mySimpsons = [SimpsonClass]()
    var chosenSimpson : SimpsonClass?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "Simpsons")
        tableView.delegate = self
        tableView.dataSource = self
        
        //Simpson Object
        
        let homer = SimpsonClass(name: "Homer Simpson", job: "Nuclear Safety", image: UIImage(named:"Homer_Simpson.png" )!)
        let marge = SimpsonClass(name: "Marge Simpson", job: "Housewife", image: UIImage(named:"Marge_Simpson.png" )!)
        let bart = SimpsonClass(name: "Bart Simpson", job: "Student", image: UIImage(named:"Bart_Simpson.png" )!)
        let lisa = SimpsonClass(name: "Lisa Simpson", job: "Student", image: UIImage(named:"Lisa_Simpson.png" )!)
        let maggie = SimpsonClass(name: "Maggie Simpson", job: "Baby", image: UIImage(named:"Maggie_Simpson.png" )!)
        
        mySimpsons.append(homer)
        mySimpsons.append(marge)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedSimpson = chosenSimpson
        }
    }
}


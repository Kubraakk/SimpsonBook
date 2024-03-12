//
//  DetailsVC.swift
//  SimpsonBook
//
//  Created by Kübra Akpunar (Teknoloji Mimarisi Bölümü) on 12.03.2024.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var jobLabel: UILabel!
    
    var selectedSimpson : SimpsonClass?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image
    }
    

}

//
//  ViewController.swift
//  ClickerApp
//
//  Created by COREY ATKINSON on 10/3/23.
//

import UIKit

class ViewController: UIViewController {
    var total = 0
    var multiply = 1
    var two = true
    var five = true
    var twenty = true
    
    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var labelOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickAction(_ sender: UIButton) {
        total = total + (1 * multiply)
        print(total)
            labelOutlet.text = "\(total)"
    }
    
    @IBAction func toStoreAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "StoreSegue", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let nvc = segue.destination as! StoreViewController
        nvc.points = total
        nvc.two = two
        nvc.five = five
        nvc.twenty = twenty
        nvc.delegate = self
    }
    
    
    
    
    
    
    
    
}


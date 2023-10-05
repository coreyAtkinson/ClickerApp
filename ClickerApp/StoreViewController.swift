//
//  StoreViewController.swift
//  ClickerApp
//
//  Created by COREY ATKINSON on 10/3/23.
//

import UIKit

class StoreViewController: UIViewController {
    var points = 0
    var delegate : ViewController!
    var two: Bool
    var five: Bool
    var twenty: Bool
    
    @IBOutlet weak var twentyOutlet: UIButton!
    @IBOutlet weak var fiveOutlet: UIButton!
    @IBOutlet weak var twoOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
if two
        {
            twoOutlet.isEnabled = true
        }
        else
        {
            twoOutlet.isEnabled = false
        }
        if five
                {
                    fiveOutlet.isEnabled = true
                }
                else
                {
                    fiveOutlet.isEnabled = false
                }
        if twenty
                {
                    twentyOutlet.isEnabled = true
                }
                else
                {
                    twentyOutlet.isEnabled = false
                }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Action(_ sender: Any) {
        if delegate.total < 10
        {
            print("error")
        }
        else
        {
            delegate.total = delegate.total - 10
            delegate.multiply = 2
            twoOutlet.isEnabled = false
            delegate.labelOutlet.text = "\(delegate.total)"
            two = false
        }
    }
    
    @IBAction func fiveAction(_ sender: UIButton) {
        if delegate.total < 200
        {
            print("error")
        }
        else
        {
            delegate.total = delegate.total - 200
            delegate.multiply = 5
            fiveOutlet.isEnabled = false
            delegate.labelOutlet.text = "\(delegate.total)"
            five = false
        }
        
    }
    
    @IBAction func twentyAction(_ sender: UIButton) {
        if delegate.total < 1000
        {
            print("error")
        }
        else
        {
            delegate.total = delegate.total - 1000
            delegate.multiply = 20
            twentyOutlet.isEnabled = false
            delegate.labelOutlet.text = "\(delegate.total)"
            twenty = false
        }
        
    }
    
}

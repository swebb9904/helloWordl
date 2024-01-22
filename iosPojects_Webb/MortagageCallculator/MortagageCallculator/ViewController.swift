//
//  ViewController.swift
//  MortagageCallculator
//
//  Created by Steven Webb on 6/8/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var pleaseClickMe: UIButton!
    @IBOutlet weak var enterNameHere: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        text.text = "Morgage Calculator"
    }
    
    @IBAction func pleaseClickMe(_sender: Any) {
        
        let alert = UIAlertController(title: "Congrats!", message: "You created an alert", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Close", style: .default)
        
        alert.addAction(action)
        
        self.present(alert, animated: true)
    }

}

    
    

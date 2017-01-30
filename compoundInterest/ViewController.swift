//
//  ViewController.swift
//  compoundInterest
//
//  Created by Sierra 4 on 30/01/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var txtPricipal: UITextField!
    
    
    @IBOutlet weak var txtRate: UITextField!
    
    @IBOutlet weak var txtTime: UITextField!
    
    @IBOutlet weak var lblCompoundInterest: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

   

    
    @IBAction func btnClick1(_ sender: Any) {
        
        guard let value1 = Float(txtPricipal.text ?? "0") else {
            return
        }
        
        guard let value2 = Float(txtRate.text ?? "0") else {
            return
        }
        
        guard let value3 = Float(txtTime.text ?? "0") else {
            return
        }
        let value4 = 1 + value2
        
        let result = value1 * (pow(value4, value3))
        
        lblCompoundInterest.text = "\(result)"
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


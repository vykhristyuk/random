//
//  ViewController.swift
//  random
//
//  Created by Maxim Vykhristyuk on 28.03.2022.
//  Copyright © 2022 Maxim Vykhristyuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number: UIButton!
    @IBOutlet weak var maxfield: UITextField!
    @IBOutlet weak var minfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func generate(_ sender: Any) {
        //checking
        var min = Int(minfield.text!) ?? 1
        var max = Int(maxfield.text!) ?? 9
        if min > max {
            min = 1
            max = 9
        }
        //generating
        var range = Array(min...max)
        range.shuffle()
        let n = String(range.removeFirst())
        number.setTitle(n, for: .normal)
    }
    
}


//
//  ViewController.swift
//  G51L7
//
//  Created by Ivan Vasilevich on 2/14/17.
//  Copyright © 2017 Smoosh Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        performSegue(withIdentifier: "tutor", sender: nil)
    }


}


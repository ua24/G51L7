//
//  TutorialVC.swift
//  G51L7
//
//  Created by Ivan Vasilevich on 2/14/17.
//  Copyright © 2017 Smoosh Labs. All rights reserved.
//

import UIKit

let minute: TimeInterval = 60

class TutorialVC: UIViewController {

    let hour = minute * 60
    
    @IBAction func poehaliPressed() {
        dismiss(animated: true) { 
            print("kozhanuy appears")
        }
        
        let day = ["sleep#", "lanch", "sleep"]
        let week = [day, day, day]
    }
    
    
}

//
//  TutorialVC.swift
//  G51L7
//
//  Created by Ivan Vasilevich on 2/14/17.
//  Copyright © 2017 Smoosh Labs. All rights reserved.
//

import UIKit


class TutorialVC: UIViewController {
    
    @IBOutlet weak var drawingView: UIView!
    var timeTable: [String : String] = UserDefaults.standard.object(forKey: "timetable") as? [String : String] ?? [String : String]()
    
    @IBOutlet weak var eventNameTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(timeTable)
     
     
    }
    
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        if let eventName = timeTable[sender.date.toString()] {
            print(eventName, "at", sender.date.toString())
        }
    }
    @IBAction func poehaliPressed() {
        dismiss(animated: true) {
            self.timeTable[self.datePicker.date.toString()] = self.eventNameTextField.text!
            UserDefaults.standard.set(self.timeTable, forKey: "timetable")
            print("kozhanuy appears")
        }
//        let week = [day, day, day]
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        StyleKitName.drawCanvas1(frame: self.drawingView.frame, resizing: .stretch)
        self.drawingView.setNeedsDisplay()
    }
    
}

extension Date {
    func toString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM dd yyyy HH:mm"
        return dateFormatter.string(from: self)
    }
}

//
//  ViewController.swift
//  G51L7
//
//  Created by Ivan Vasilevich on 2/14/17.
//  Copyright © 2017 Smoosh Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var day = ["sleep#1", "lanch", "sleep2"]
    
    var text = "Created by Ivan Vasilevich on 2/14/17. Copyright © 2017 Smoosh Labs. All rights reserved."
    var currentWordIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        performSegue(withIdentifier: "tutor", sender: nil)
        tableView.dataSource = self
        tableView.delegate = self
        perform(#selector(addWord), with: nil, afterDelay: 1)
        
    }
    
    func addWord() {
        day.append(text.components(separatedBy: " ")[currentWordIndex])
        tableView.reloadData()
        tableView.scrollToRow(at: IndexPath.init(row: day.count-1, section: 0), at: .bottom, animated: true)
        currentWordIndex += 1
        if text.components(separatedBy: " ").count > currentWordIndex {
            perform(#selector(addWord), with: nil, afterDelay: 1)
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return day.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "at 0\(indexPath.row.description):00\t|\t\(day[indexPath.row])"
//        cell.detailTextLabel?.text = indexPath.row.description
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let element = day[indexPath.row]
        print(indexPath, element)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? UITableViewCell {
            if let indexPath = self.tableView.indexPath(for: cell) {
                let element = day[indexPath.row]
                print(indexPath, element)
                segue.destination.title = element
            }
        }
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "2" {
            return true
        }
        else {
            return false
        }
    }


}


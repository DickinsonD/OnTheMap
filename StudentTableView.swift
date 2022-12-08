//
//  StudentTableView.swift
//  OnTheMap
//
//  Created by DANIEL DICKINSON on 12/8/22.
//

import UIKit

class StudentTableView: UITableViewController {
    
    var studentModel = [StuData] ()
    var test: [String] = [
    "one",
    "two",
    "three",
    "four",
    "five",
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .lightGray

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentModel.count
        //return test.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentTableViewCell", for: indexPath)
        //cell.textLabel?.text = test[indexPath.row]
        let insertCell = studentModel[indexPath.row]
        cell.textLabel?.text = "\(studentModel.firstName)"
        return cell
    }
   

   
}
    

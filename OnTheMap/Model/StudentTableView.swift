//
//  StudentTableView.swift
//  OnTheMap
//
//  Created by DANIEL DICKINSON on 12/8/22.
//

import UIKit

class StudentTableView: UITableViewController {
    
    @IBOutlet var StudentTableView: UITableView!
    var studentModel = [StuData] ()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .lightGray
        
        UdacityAPI.fetchLocationResults { data in
            self.studentModel = data
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        

}

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentModel.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = StudentTableView.dequeueReusableCell(withIdentifier: "StudentTableViewCell", for: indexPath)
        let insertCell = studentModel[indexPath.row]
        cell.textLabel?.text = "\(insertCell.firstName)" + " " + "\(insertCell.lastName)"
        return cell
    }
}


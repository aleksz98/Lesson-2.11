//
//  ViewController.swift
//  Lesson 2.11
//
//  Created by Иван on 19.04.2023.
//

import UIKit

final class PersonsViewController: UIViewController {
    // MARK: - Private constant
    private let personList = (0..<10).map { _ in DataStore.randomPerson() }

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Private variables
    private var selectedPersonNameSurname: String?
    private var phone: String?
    private var email: String?
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailPersonVC = segue.destination as? DetailPersonViewController
        detailPersonVC?.phone = phone
        detailPersonVC?.email = email
        detailPersonVC?.navigationItem.title = selectedPersonNameSurname
    }
}

// MARK: - UITableViewDataSource
extension PersonsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let personName = personList[indexPath.row].name
        let personSurname = personList[indexPath.row].surname
        content.text = personName + " " + personSurname
        cell.contentConfiguration = content
        return cell
    }
}

// MARK: - UITableViewDelegate
extension PersonsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedPersonNameSurname = personList[indexPath.row].name + " " + personList[indexPath.row].surname
        phone = personList[indexPath.row].phone
        email = personList[indexPath.row].email
        performSegue(withIdentifier: "showDetailPerson", sender: self)
    }
}


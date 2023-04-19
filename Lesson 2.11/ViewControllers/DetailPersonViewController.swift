//
//  DetailPersonViewController.swift
//  Lesson 2.11
//
//  Created by Иван on 19.04.2023.
//

import UIKit

final class DetailPersonViewController: UIViewController {
    
    // MARK: - Private IBOutlet
    @IBOutlet private weak var phoneLabel: UILabel!
    @IBOutlet private weak var emailLabel: UILabel!
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = phone
        emailLabel.text = email
    }
    
    // MARK: - Variables
    var phone: String?
    var email: String?
}

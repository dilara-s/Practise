//
//  ProfileViewController.swift
//  Task2
//
//  Created by дилара  on 03.07.2024.
//

import UIKit

class ProfileViewController: UIViewController {

    var password: String?
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var birthdayTextField: UITextField!
    
    @IBOutlet weak var favGenreField3: UITextField!
    @IBOutlet weak var favGenreField2: UITextField!
    @IBOutlet weak var favGenreField1: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

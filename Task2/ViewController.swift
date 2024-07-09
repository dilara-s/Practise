////
////  ViewController.swift
////  Task2
////
////  Created by дилара  on 03.07.2024.
////

import UIKit

class ViewController: UIViewController {

    
    let login1: String = "qwerty"
    let password1: String = "qwerty"
    let login2: String = "login"
    let password2: String = "login"
    
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "123" {
            if let destVC = segue.destination as? ProfileViewController {
                destVC.password = "1234123"
            }
        }
    }

    @IBAction func signInButtonTapped(_ sender: Any) {
         if (loginTextField.text == login1 && passwordTextField.text == password1) || (loginTextField.text == login2 && passwordTextField.text == password2){
            performSegue(withIdentifier: "123", sender: self )
        }
    }
    
    
}

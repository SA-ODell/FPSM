//
//  SignInViewController.swift
//  FPSM
//
//  Created by Steve @work on 6/6/17.
//  Copyright © 2017 Mile High Devs. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class SignInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func signinTapped(_ sender: Any) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
                if error == nil {
                    // perform seque
                    
                }  else {
                    Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
                        if error != nil {
                            print("Cant sign in user")
                        } else {
                            // perform seque
                        }
                    }
                }
            }
            
        }
        
    }

}


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
import KeychainSwift

class SignInViewController: UIViewController {

    // MARK: email text field properties
    @IBOutlet weak var emailTextField: UITextField!
    // MARK: password text field properties
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let keyChain = DataService().keyChain
        if keyChain.get("uid") != nil {
            self.performSegue(withIdentifier: "SignedIn", sender: nil)
        }
    }
    
    func CompletedSignIn (id: String) {
        let keyChain = DataService().keyChain
        keyChain.set(id, forKey: "uid")
    }
    
    @IBAction func signinTapped(_ sender: Any) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
                if error == nil {
                    self.CompletedSignIn(id: user!.uid)
                    self.performSegue(withIdentifier: "SignedIn", sender: nil)
                    
                }  else {
                    Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
                        if error != nil {
                            print("Cant sign in user")
                        } else {
                            self.CompletedSignIn(id: user!.uid)
                            self.performSegue(withIdentifier: "SignedIn", sender: nil)
                        }
                    }
                }
            }
            
        }
        
    }

}


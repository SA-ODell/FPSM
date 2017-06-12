//
//  PageOneController.swift
//  FPSM
//
//  Created by Steve @work on 6/7/17.
//  Copyright © 2017 Mile High Devs. All rights reserved.
//

import UIKit
import Firebase
import KeychainSwift


class PageOneController: UIViewController {
    
    //Mark: Properties
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var childNameLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SignOut (_ sender: Any) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        DataService().keyChain.delete("uid")
        dismiss(animated: true, completion: nil)
    }

    //Mark: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        childNameLabel.text = "Default Text"
    }

}

// testing git status

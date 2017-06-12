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


class PageOneController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    //Mark: Properties

    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Handle the text field’s user input through delegate callbacks.

    }
    
    //MARK: UITextFieldDelegate
    

    

    
    //MARK: UIImagePickerControllerDelegate
    
    
    
    //Mark: Actions

    


    // Sign out actions
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

}


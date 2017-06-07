//
//  DataService.swift
//  FPSM
//
//  Created by Steve @work on 6/7/17.
//  Copyright © 2017 Mile High Devs. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase
import KeychainSwift

let User_DB = Database.database().reference()

class DataService {
    private var _keyChain = KeychainSwift()
    private var _refDatabase = User_DB
    
    var keyChain:KeychainSwift {
        get {
            return _keyChain
        } set {
            _keyChain = newValue
        }
    }
}

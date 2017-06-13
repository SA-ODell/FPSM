//
//  Kiddo.swift
//  
//
//  Created by Steve @work on 6/13/17.
//
//

import UIKit

class Kiddo {
    
    //Mark: Properties
    
    var name: String
    var photo: UIImage?
    var age: Int
    var gender: String
    var prescriptions: Bool?
    var overTheCounter: Bool?
    
    // Mark: Initialization
    
    init?(name: String, photo: UIImage?, age: Int, gender: String, prescriptions: Bool, overTheCounter: Bool) {
        
        // Mark: Initialize stored values
        
        self.name = name
        self.photo = photo
        self.age = age
        self.gender = gender
        self.prescriptions = false
        self.prescriptions = false
        
    }
    
}


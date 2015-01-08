//
//  CreateUser.swift
//  Login
//
//  Created by Santosh Sankar on 1/7/15.
//  Copyright (c) 2015 Santosh Sankar. All rights reserved.
//

import Foundation

func userCreation() {
    var user = PFUser()
    user.username = "test"
    user.password = "test123"
    user.email = "email@testexample.com"
    // other fields can be set just like with PFObject
    user["phone"] = "123-456-7890"
    
    user.signUpInBackgroundWithBlock {
        (succeeded: Bool!, error: NSError!) -> Void in
        if error == nil {
            println("Success")
        } else {
            println("Error")
        }
    }
}
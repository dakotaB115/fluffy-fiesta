//
//  main.swift
//  MultiTestLogin
//
//  Created by Dakota Brown on 9/8/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import Foundation

class user {
    var username: String
    var password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
}

var users: [user] = []

func login() {
    var currentUser = [String]()
    print("Username")
    let username = String(readLine()!)
    print("Password")
    let password = String(readLine()!)
    
    currentUser.append(username)
    currentUser.append(password)
    print(currentUser)
    
    //need it to do something like this
    if users.contains(currentUser) {
        print("login successful")
    }
}

func newUser() {
    print("Username")
    let username = String(readLine()!)
    print("Password")
    let password = String(readLine()!)
    
    users.append(user(username: username, password: password))
    
    dump(users)
    
    start()
}

func start() {
    print("Current user Y/N")
    var yN = String(readLine()!.uppercased())
    
    if yN == "Y" {
        login()
    } else if yN == "N" {
        newUser()
    } else if yN != "Y" || yN != "N" {
        print("Current user Y/N")
        yN = String(readLine()!.uppercased())
    }
}

start()

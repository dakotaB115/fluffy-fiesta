//
//  main.swift
//  MultiTestLogin
//
//  Created by Dakota Brown on 9/8/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import Foundation

var users = [String]()

func login() {
    print("Username")
    let username = String(readLine()!)
    print("Password")
    let password = String(readLine()!)
    
    if users.contains(password) && users.contains(username){
        print("login succsessful")
        start()
    } else {
        print("Username or password invalid")
    }
}
func newUser() {
    var newUser = [String]()
    print("Username")
    let username = String(readLine()!)
    print("Password")
    let password = String(readLine()!)
    
    newUser.append(username)
    newUser.append(password)
    
    users.append(contentsOf: newUser)
    print(users)
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

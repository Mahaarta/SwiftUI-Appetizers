//
//  User.swift
//  Appetizers
//
//  Created by Minata on 15/08/2024.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefill = false
}

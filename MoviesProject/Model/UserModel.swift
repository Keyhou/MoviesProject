//
//  UserModel.swift
//  MoviesProject
//
//  Created by Keyhan Mortezaeifar on 22/09/2022.
//

import Foundation

let dateFormatter = ISO8601DateFormatter()

let isoDateOfbirth = "1992-04-14T10:44:00+0100"
let exampleDateOfBirth = dateFormatter.date(from:isoDateOfbirth)!

let isoDateOfRegister = "2022-09-22T12:21:11+0100"
let exampleDateOfRegister = dateFormatter.date(from:isoDateOfRegister)!

struct User : Identifiable {
    var id = UUID()
    var username: String
    var avatar:String
    var profileMessage:String
    var dateOfBirth: Date
    var dateOfRegister: Date
    var timeSinceRegister : String
}

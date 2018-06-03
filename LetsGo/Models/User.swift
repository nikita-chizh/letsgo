//
//  User.swift
//  LetsGo
//
//  Created by Никита on 20/04/2018.
//  Copyright © 2018 Никита. All rights reserved.
//

import Foundation
import UIKit
class User{
    var name: String
    var info: String
    var birthDate: String
    var sex: Bool
    var user_photos: Array<UIImage> = []
    
    init() {
        name = ""
        info = ""
        birthDate = "00/00/2000"
        sex = false
    }
    
    init(uname: String, uinfo: String, ubirth: String, usex: Bool){
        name = uname
        info = uinfo
        birthDate = ubirth
        sex = usex
    }
}

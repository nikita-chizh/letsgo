//
//  UserController.swift
//  LetsGo
//
//  Created by Никита on 20/04/2018.
//  Copyright © 2018 Никита. All rights reserved.
//

import Foundation
import UIKit

class UserController: NSObject {
    static var user = User()
    
    class func setName(newName: String){
        user.name = newName
    }
}

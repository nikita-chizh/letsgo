//
//  Meeting.swift
//  LetsGo
//
//  Created by Никита on 01/06/2018.
//  Copyright © 2018 Никита. All rights reserved.
//

import Foundation
class Meeting{
    var name: String
    var info: String
    var date: DateComponents
    
    init() {
        name = ""
        info = ""
        date = DateComponents()
    }
    
    init(name_: String, info_: String, date_: DateComponents){
        name = name_
        info = info_
        date = date_
    }
}

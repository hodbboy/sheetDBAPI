//
//  data.swift
//  sheetDBAPI
//
//  Created by Onion on 2021/3/3.
//

import Foundation

struct data:Codable {
    var PCnumber : String
    var Typee : String
    var Count : String
    var Now : String
    var For_to : String
    var hostname : String
    var Vlan_ip : String
    var Wifi_ip : String
    var SN : String
    
    
}
struct AudtData:Codable {
    var autData:[data]
}
    
    
    


//
//  Corsa.swift
//  TaxiSharing
//
//  Created by Domenico Natella on 09/10/17.
//  Copyright © 2017 Santabarbara Pietro Giulio. All rights reserved.
//

import Foundation
import FirebaseDatabase

class Corsa {
    
    var codice : String?
    var data : String?
    var from : String?
    var fromLat : String?
    var fromLong : String?
    var toLong : String?
    var toLat : String?
    var note : String?
    var pass : String?
    var to : String?
    
    init (_ codice : String, _ data : String, _ from : String,_ fromLat : String ,_ fromLong : String,_ to: String ,_ toLat : String ,_ toLong : String,_ note : String, _ pass : String ){
        self.codice = codice
        self.data = data
        self.from = from
        self.fromLat = fromLat
        self.fromLong = fromLong
        self.to = to
        self.toLat = toLat
        self.toLong = toLong
        self.note = note
        self.pass = pass
    }
    
    init(snapshot: DataSnapshot) {
        self.codice = snapshot.key
        let snapshotValue = snapshot.value as! [String: AnyObject]
        self.data = snapshotValue["data"] as! String
        self.from = snapshotValue["from"] as! String
        self.fromLat = snapshotValue["fromLat"] as! String
        self.fromLong = snapshotValue["fromLong"] as! String
        self.to = snapshotValue["to"] as! String
        self.toLat = snapshotValue["toLat"] as! String
        self.toLong = snapshotValue["toLong"] as! String
        self.note = snapshotValue["note"] as! String
        self.pass = snapshotValue["pass"] as! String
    }
    
}

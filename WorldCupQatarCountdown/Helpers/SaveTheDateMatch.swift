//
//  SaveTheDateMatch.swift
//  WorldCupQatarCountdown
//
//  Created by Alexandre Cardoso on 10/11/22.
//

import Foundation

struct SaveTheDateMatch {
    private let userDefaults = UserDefaults.standard
    
    func saveMatch(_ mathID: String) {
        userDefaults.set(mathID, forKey: mathID)
    }
    
    func getMatch(_ mathID: String) -> Bool {
        return userDefaults.string(forKey: mathID) == nil ? false : true
    }
    
    func removeMatch(_ mathID: String) {
        userDefaults.removeObject(forKey: mathID)
    }

}

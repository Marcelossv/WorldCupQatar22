//
//  Fifa.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 07/05/22.
//

import Foundation
import UIKit


struct FifaRanking:Codable {
    let data: [Datum]
}

struct Datum: Codable {
    let rank: String
    let teamName: String
    let score: String
}



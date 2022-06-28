//
//  Fifa.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 07/05/22.
//

import Foundation
import UIKit

// MARK: - FifaRanking
struct FifaRanking: Codable {
    var code: Int
    var message: String
    var data: [Datum]
}

// MARK: - Datum
struct Datum: Codable {
    var type: TypeEnum
    var teamID, teamName: String
    var continent: Continent
    var rank, rankChange, score, scoreChange: Int
    var updateDate: UpdateDate

    enum CodingKeys: String, CodingKey {
        case type
        case teamID = "teamId"
        case teamName, continent, rank, rankChange, score, scoreChange, updateDate
    }
}

enum Continent: String, Codable {
    case africa = "Africa"
    case asia = "Asia"
    case empty = ""
    case europe = "Europe"
    case middleAndNorthAmerica = "Middle and North America"
    case oceania = "Oceania"
    case southAmerica = "South America"
}

enum TypeEnum: String, Codable {
    case club = "Club"
    case menSRanking = "MEN'S RANKING"
    case womenSRanking = "WOMEN'S RANKING"
}

enum UpdateDate: String, Codable {
    case the20222 = "2022-2"
    case the20226 = "2022-6"
}




//
//  FifaRankingError.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 31/05/22.
//

import Foundation

enum FifaRankingError: Error {
    case urlInvalidate(message: String)
    case dataInvalid(message: String)
    
    var description: String {
        switch self {
        case let .urlInvalidate(message),
            let .dataInvalid(message):
            return message
        }
    }

}

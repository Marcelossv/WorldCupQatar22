//
//  TopGoal.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 06/05/22.
//

import UIKit

struct Goals{
    let image: UIImage
    let namePlayer: String
    let gols: String
}

let topGoal: [Goals] = [
    .init(image: #imageLiteral(resourceName: "ronaldo-nazario-lima"), namePlayer: "🇧🇷 Ronaldo (1994, 1998, 2002, 2006)  ", gols: "⚽️ 15"),
    .init(image: #imageLiteral(resourceName: "fontaine2"), namePlayer: "🇫🇷 Just Fontaine (1958) ", gols: "⚽️ 13"),
    .init(image: #imageLiteral(resourceName: "pele"), namePlayer: "🇧🇷 Pelé (1958, 1962, 1966, 1970)", gols: "⚽️ 12"),
    .init(image: #imageLiteral(resourceName: "licensed-image"), namePlayer: "🇩🇪 Helmut Rahn (1954, 1958) ", gols: "⚽️ 10"),
    .init(image: #imageLiteral(resourceName: "teeeeee"), namePlayer: "🇵🇪 Teófilo Cubillas (1970, 1978 e 1982)", gols: "⚽️ 10"),
]

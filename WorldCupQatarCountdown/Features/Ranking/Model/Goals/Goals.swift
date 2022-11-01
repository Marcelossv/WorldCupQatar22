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
    let yearCup: String
    let gols: String
}

let topGoal: [Goals] = [
    .init(
        image: UIImage(named: "klosePlayer") ?? UIImage(),
        namePlayer: "🇩🇪 Miroslav Klose",
        yearCup: "🏆 2002, 2006, 2010, 2014",
        gols: "⚽️ 16"
    ),
    .init(
        image: UIImage(named: "ronaldoPlayer") ?? UIImage(),
        namePlayer: "🇧🇷 Ronaldo",
        yearCup: "🏆 1994, 1998, 2002, 2006",
        gols: "⚽️ 15"
    ),
    .init(
        image: UIImage(named: "gerdPlayer") ?? UIImage(),
        namePlayer: "🇩🇪 Gerd Müller",
        yearCup: "🏆 1970, 1974",
        gols: "⚽️ 14"
    ),
    .init(
        image: UIImage(named: "fontainePlayer") ?? UIImage(),
        namePlayer: "🇫🇷 Just Fontaine",
        yearCup: "🏆 1958",
        gols: "⚽️ 13"
    ),
    .init(
        image: UIImage(named: "pelePlayer") ?? UIImage(),
        namePlayer: "🇧🇷 Pelé",
        yearCup: "🏆 1958, 1962, 1966, 1970",
        gols: "⚽️ 12"
    ),
    .init(
        image: UIImage(named: "kocsisPlayer") ?? UIImage(),
        namePlayer: "🇭🇺 Sándor Kocsis",
        yearCup: "🏆 1954",
        gols: "⚽️ 10"
    ),
    .init(
        image: UIImage(named: "klinsmannPlayer") ?? UIImage(),
        namePlayer: "🇩🇪 Jürgen Klinsmann",
        yearCup: "🏆 1990, 1994, 1998",
        gols: "⚽️ 11"
    ),
    .init(
        image: UIImage(named: "helmutPlayer") ?? UIImage(),
        namePlayer: "🇩🇪 Helmut Rahn",
        yearCup: "🏆 1954, 1958",
        gols: "⚽️ 10"
    ),
    .init(
        image: UIImage(named: "teofiloPlayer") ?? UIImage(),
        namePlayer: "🇵🇪 Teófilo Cubillas",
        yearCup: "🏆 1970, 1978, 1982",
        gols: "⚽️ 10"
    )
]

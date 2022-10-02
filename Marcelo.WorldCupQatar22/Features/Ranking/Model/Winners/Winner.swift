//
//  Winner.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 03/05/22.
//

import UIKit

struct Winner {
    let image: UIImage
    let numberMedal: String
}

let medal: [Winner] = [
    .init(image: #imageLiteral(resourceName:"Brazil"), numberMedal: "5 (1958, 1962, 1970, 1994, 2002)"),
    .init(image: #imageLiteral(resourceName:"Germany-Flag-icon"), numberMedal: "4 (1954, 1974, 1990, 2014)"),
    .init(image: #imageLiteral(resourceName:"MicrosoftTeams-image (5)"), numberMedal: "4 (1934, 1938, 1982, 2006)"),
    .init(image: #imageLiteral(resourceName:"Argentina-Flag-icon"), numberMedal: "2 (1978, 1986)"),
    .init(image: #imageLiteral(resourceName:"France-Flag-icon"), numberMedal: "2 (1998, 2018)"),
    .init(image: #imageLiteral(resourceName:"Uruguay-Flag-icon"), numberMedal: "2 (1930, 1950)"),
    .init(image: #imageLiteral(resourceName:"England-Flag-icon"), numberMedal: "1 (1966)"),
    .init(image: #imageLiteral(resourceName:"Spain-Flag-icon"), numberMedal: "1 (2010)")
]

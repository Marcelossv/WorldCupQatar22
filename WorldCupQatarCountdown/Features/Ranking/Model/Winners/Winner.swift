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
    .init(
        image: UIImage(named: "brazilFlag") ?? UIImage(),
        numberMedal: "5 (1958, 1962, 1970, 1994, 2002)"
    ),
    .init(
        image: UIImage(named: "germanyFlag") ?? UIImage(),
        numberMedal: "4 (1954, 1974, 1990, 2014)"
    ),
    .init(
        image: UIImage(named: "italiaFlag") ?? UIImage(),
        numberMedal: "4 (1934, 1938, 1982, 2006)"
    ),
    .init(
        image: UIImage(named: "argentinaFlag") ?? UIImage(),
        numberMedal: "2 (1978, 1986)"
    ),
    .init(
        image: UIImage(named: "franceFlag") ?? UIImage(),
        numberMedal: "2 (1998, 2018)"
    ),
    .init(
        image: UIImage(named: "uruguayFlag") ?? UIImage(),
        numberMedal: "2 (1930, 1950)"
    ),
    .init(
        image: UIImage(named: "englandFlag") ?? UIImage(),
        numberMedal: "1 (1966)"
    ),
    .init(
        image: UIImage(named: "spainFlag") ?? UIImage(),
        numberMedal: "1 (2010)"
    )
]

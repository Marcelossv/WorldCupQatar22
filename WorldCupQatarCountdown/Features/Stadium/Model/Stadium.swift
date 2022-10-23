//
//  Stadium.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 02/05/22.
//

import UIKit

struct Stadium {
    let name: String
    let image: UIImage
    let capacity: String
    let city: String
    let matchesPlanned: String
    let youtubeLink: String
}

let stadiumList: [Stadium] = [
    .init(
        name: "Al Bayt Stadium",
        image: UIImage(named: "alBaytStadium") ?? UIImage(),
        capacity: "👤60.000",
        city: "📍Al Khor",
        matchesPlanned: "Opening game and all matches through to the semi-finals",
        youtubeLink: "bJavR2NsGF4"
    ),
    .init(
        name: "Al Janoub Stadium",
        image: UIImage(named: "alJanoubStadium") ?? UIImage(),
        capacity: "👤40.000",
        city: "📍Al Wakrah",
        matchesPlanned: "Group matches and round of 16",
        youtubeLink: "70KJEOBZzsY"
    ),
    .init(
        name: "Al Thumama Stadium",
        image: UIImage(named: "alThumamaStadium") ?? UIImage(),
        capacity: "👤40.000",
        city: "📍Al Thumama",
        matchesPlanned: "Group matches and round of 16, and quarter finals",
        youtubeLink: "s7BT33Mmn_I"
    ),
    .init(
        name: "Ahmad Bin Ali Stadium",
        image: UIImage(named: "ahmadBinAliStadium") ?? UIImage(),
        capacity: "👤40.000",
        city: "📍Al Rayyan",
        matchesPlanned: "Group matches, round of 16",
        youtubeLink: "zUSSg81SG8I"
    ),
    .init(
        name: "Khalifa International Stadium",
        image: UIImage(named: "khalifaInternationalStadium") ?? UIImage(),
        capacity: "👤48.000",
        city: "📍Doha",
        matchesPlanned: "Group matches, round of 16, and play off for third place game",
        youtubeLink: "3hCkWzGYc1M"
    ),
    .init(
        name: "Stadium 974",
        image: UIImage(named: "974Stadium") ?? UIImage(),
        capacity: "👤40.000",
        city: "📍Doha",
        matchesPlanned: "Group matches and round of 16",
        youtubeLink: "CDgzV4youzY"
    ),
    .init(
        name: "Education City Stadium",
        image: UIImage(named: "educationCityStadium") ?? UIImage(),
        capacity: "👤45.350",
        city: "📍Al Rayyan",
        matchesPlanned: "Group matches, round of 16, and and quarter-finals",
        youtubeLink: "1GoiYsy7H1A"
    ),
    .init(
        name: "Lusail Stadium",
        image: UIImage(named: "lusailStadium") ?? UIImage(),
        capacity: "👤86.250",
        city: "Lusail",
        matchesPlanned: "All matches through to the final match",
        youtubeLink: "-W_0f5ZLtQM"
    )
]

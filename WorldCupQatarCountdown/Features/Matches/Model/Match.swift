//
//  Match.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 05/05/22.
//

import UIKit

struct GroupGames {
    let group: String
    let matches: [Match]
}

struct Match {
    let titleMatch: String
    let homeName: String
    let visitName: String
    let dataTimeMatch: DataTimeMatch
    let imageH: UIImage
    let imageV: UIImage
    let nameStadium: String
    let capacityStadium: String
    let numberGame: String
    
    
}

struct DataTimeMatch {
    let month: Int
    let day: Int
    let hour: Int
}

let cupGames: [GroupGames] = [
    .init(
        group: "A",
        matches: [
            .init(
                titleMatch: "GROUP A - AL BAYT 🏟",
                homeName: "QAT",
                visitName: "ECU",
                dataTimeMatch: DataTimeMatch(month: 11, day: 20, hour: 19),
                imageH: UIImage(named: "qtarFlag") ?? UIImage(),
                imageV: UIImage(named: "ecuadorFlag") ?? UIImage(),
                nameStadium: "🏟 Al Bayt Stadium",
                capacityStadium: "👤 60.000",
                numberGame: "1"
            ),
            .init(
                titleMatch: "GROUP A - AL THUMAMA STADIUM 🏟",
                homeName: "SEN",
                visitName: "NED",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 19),
                imageH: UIImage(named: "senegalFlag") ?? UIImage(),
                imageV: UIImage(named: "netherlandsFlag") ?? UIImage(),
                nameStadium: "🏟 Al Thumama Stadium",
                capacityStadium: "👤 60.000",
                numberGame: "2"
            ),
            .init(
                titleMatch: "GROUP A - AL THUMAMA 🏟",
                homeName: "QAT",
                visitName: "SEN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 25, hour: 16),
                imageH: UIImage(named: "qtarFlag") ?? UIImage(),
                imageV: UIImage(named: "senegalFlag") ?? UIImage(),
                nameStadium: "🏟 Al Thumama Stadium",
                capacityStadium: "👤 60.000",
                numberGame: "18"
            ),
            
            .init(
                titleMatch: "GROUP A - KHALIFA 🏟",
                homeName: "NED",
                visitName: "ECU",
                dataTimeMatch: DataTimeMatch(month: 11, day: 25, hour: 19),
                imageH: UIImage(named: "netherlandsFlag") ?? UIImage(),
                imageV: UIImage(named: "ecuadorFlag") ?? UIImage(),
                nameStadium: "Khalifa International Stadium",
                capacityStadium: "👤 48.000",
                numberGame: "19"
            ),
            .init(
                titleMatch: "GROUP A - AL BAYT 🏟",
                homeName: "NED",
                visitName: "QAT",
                dataTimeMatch: DataTimeMatch(month: 11, day: 29, hour: 18),
                imageH: UIImage(named: "netherlandsFlag") ?? UIImage(),
                imageV: UIImage(named: "qtarFlag") ?? UIImage(),
                nameStadium: "Al Bayt Stadium",
                capacityStadium: "👤 60.000",
                numberGame: "36"
            ),
            .init(
                titleMatch: "GROUP A - KHALIFA 🏟",
                homeName: "ECU",
                visitName: "SEN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 29, hour: 18),
                imageH: UIImage(named: "ecuadorFlag") ?? UIImage(),
                imageV: UIImage(named: "senegalFlag") ?? UIImage(),
                nameStadium: "Khalifa International Stadium",
                capacityStadium: "👤 48.000",
                numberGame: "35"
            )
            
        ]
    ),
    .init(
        group: "B",
        matches: [
            .init(
                titleMatch: "GROUP B - KHALIFA 🏟",
                homeName: "ENG",
                visitName: "IRN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 16),
                imageH: UIImage(named: "englandFlag") ?? UIImage(),
                imageV: UIImage(named: "iranFlag") ?? UIImage(),
                nameStadium: "Khalifa International Stadium",
                capacityStadium: "👤 48.000",
                numberGame: "3"
            ),
            .init(
                titleMatch: "GROUP B - AHMAD BIN ALI STADIUM 🏟",
                homeName: "USA",
                visitName: "WAL",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 22),
                imageH: UIImage(named: "unitedStatesFlag") ?? UIImage(),
                imageV: UIImage(named: "walesFlag") ?? UIImage(),
                nameStadium: "Ahmad Bin Ali Stadium",
                capacityStadium: "👤 40.000",
                numberGame: "4"
            ),
            .init(
                titleMatch: "GROUP B - AHMAD BIN ALI STADIUM  🏟",
                homeName: "WAL",
                visitName: "IRN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 25, hour: 13),
                imageH: UIImage(named: "walesFlag") ?? UIImage(),
                imageV: UIImage(named: "iranFlag") ?? UIImage(),
                nameStadium: "Ahmad Bin Ali Stadium",
                capacityStadium: "👤 40.000",
                numberGame: "17"
            ),
            .init(
                titleMatch: "GROUP B - AL BAYT STADIUM 🏟",
                homeName: "ENG",
                visitName: "USA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 25, hour: 22),
                imageH: UIImage(named: "englandFlag") ?? UIImage(),
                imageV: UIImage(named: "unitedStatesFlag") ?? UIImage(),
                nameStadium: "Al Bayt Stadium",
                capacityStadium: "👤 60.000",
                numberGame: "20"
            ),
            .init(
                titleMatch: "GROUP B - AHMAD BIN ALI STADIUM  🏟",
                homeName: "WAL",
                visitName: "ENG",
                dataTimeMatch: DataTimeMatch(month: 11, day: 29, hour: 22),
                imageH: UIImage(named: "walesFlag") ?? UIImage(),
                imageV: UIImage(named: "englandFlag") ?? UIImage(),
                nameStadium: "Ahmad Bin Ali Stadium",
                capacityStadium: "👤 40.000",
                numberGame: "33"
            ),
            .init(
                titleMatch: "GROUP B - AL THUMAMA STADIUM 🏟",
                homeName: "IRA",
                visitName: "USA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 29, hour: 22),
                imageH: UIImage(named: "iranFlag") ?? UIImage(),
                imageV: UIImage(named: "unitedStatesFlag") ?? UIImage(),
                nameStadium: "Al Thumama Stadium",
                capacityStadium: "👤 60.000",
                numberGame: "34"
            )
            
        ]
    ),
    .init(
        group: "C",
        matches: [
            .init(
                titleMatch: "GROUP C - LUSAIL STADIUM 🏟",
                homeName: "ARG",
                visitName: "KSA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 22, hour: 13),
                imageH: UIImage(named: "argentinaFlag") ?? UIImage(),
                imageV: UIImage(named: "saudiArabiaFlag") ?? UIImage(),
                nameStadium: "Lusail Stadium",
                capacityStadium: "👤 86.250",
                numberGame: "8"
            ),
            .init(
                titleMatch: "GROUP C - STADIUM 974 🏟",
                homeName: "MEX",
                visitName: "POL",
                dataTimeMatch: DataTimeMatch(month: 11, day: 22, hour: 19),
                imageH: UIImage(named: "mexicoFlag") ?? UIImage(),
                imageV: UIImage(named: "polandFlag") ?? UIImage(),
                nameStadium: "Stadium 974",
                capacityStadium: "👤 40.000",
                numberGame: "7"
            ),
            .init(
                titleMatch: "GROUP C - EDUCATION CITY STADIUM  🏟",
                homeName: "POL",
                visitName: "KSA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 26, hour: 16),
                imageH: UIImage(named: "polandFlag") ?? UIImage(),
                imageV: UIImage(named: "saudiArabiaFlag") ?? UIImage(),
                nameStadium: "Education City Stadium",
                capacityStadium: "👤 45.350",
                numberGame: "22"
            ),
            .init(
                titleMatch: "GROUP C - LUSAIL 🏟",
                homeName: "ARG",
                visitName: "MEX",
                dataTimeMatch: DataTimeMatch(month: 11, day: 26, hour: 22),
                imageH: UIImage(named: "argentinaFlag") ?? UIImage(),
                imageV: UIImage(named: "mexicoFlag") ?? UIImage(),
                nameStadium: "Lusail Stadium",
                capacityStadium: "👤 86.250",
                numberGame: "24"
            ),
            .init(
                titleMatch: "GROUP C - STADIUM 974  🏟",
                homeName: "POL",
                visitName: "ARG",
                dataTimeMatch: DataTimeMatch(month: 11, day: 30, hour: 22),
                imageH: UIImage(named: "polandFlag") ?? UIImage(),
                imageV: UIImage(named: "argentinaFlag") ?? UIImage(),
                nameStadium: "Stadium 974",
                capacityStadium: "👤 40.000",
                numberGame: "39"
            ),
            .init(
                titleMatch: "GROUP C - LUSAIL STADIUM🏟",
                homeName: "KSA",
                visitName: "MEX",
                dataTimeMatch: DataTimeMatch(month: 11, day: 30, hour: 22),
                imageH: UIImage(named: "saudiArabiaFlag") ?? UIImage(),
                imageV: UIImage(named: "mexicoFlag") ?? UIImage(),
                nameStadium: "Lusail Stadium",
                capacityStadium: "👤 86.250",
                numberGame: "40"
            )
            
        ]
    ),
    .init(
        group: "D",
        matches: [
            .init(
                titleMatch: "GROUP D - EDUCATION CITY STADIUM 🏟",
                homeName: "DEN",
                visitName: "TUN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 22, hour: 16),
                imageH: UIImage(named: "denmarkFlag") ?? UIImage(),
                imageV: UIImage(named: "tunisiaFlag") ?? UIImage(),
                nameStadium: "Education City Stadium",
                capacityStadium: "👤 45.350",
                numberGame: "6"
            ),
            .init(
                titleMatch: "GROUP D - AL JANOUB STADIUM 🏟",
                homeName: "FRA",
                visitName: "AUS",
                dataTimeMatch: DataTimeMatch(month: 11, day: 22, hour: 22),
                imageH: UIImage(named: "franceFlag") ?? UIImage(),
                imageV: UIImage(named: "australiaFlag") ?? UIImage(),
                nameStadium: "Al Janoub Stadium",
                capacityStadium: "👤 40.000",
                numberGame: "5"
            ),
            .init(
                titleMatch: "GROUP D - AL JANOUB  🏟",
                homeName: "TUN",
                visitName: "AUS",
                dataTimeMatch: DataTimeMatch(month: 11, day: 26, hour: 13),
                imageH: UIImage(named: "tunisiaFlag") ?? UIImage(),
                imageV: UIImage(named: "australiaFlag") ?? UIImage(),
                nameStadium: "Al Janoub Stadium",
                capacityStadium: "👤 40.000",
                numberGame: "21"
            ),
            .init(
                titleMatch: "GROUP D - STADIUM 974 🏟",
                homeName: "FRA",
                visitName: "DEN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 26, hour: 19),
                imageH: UIImage(named: "franceFlag") ?? UIImage(),
                imageV: UIImage(named: "denmarkFlag") ?? UIImage(),
                nameStadium: "Stadium 974",
                capacityStadium: "👤 40.000",
                numberGame: "23"
            ),
            .init(
                titleMatch: "GROUP D - EDUCATION CITY  🏟",
                homeName: "TUN",
                visitName: "FRA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 30, hour: 18),
                imageH: UIImage(named: "tunisiaFlag") ?? UIImage(),
                imageV: UIImage(named: "franceFlag") ?? UIImage(),
                nameStadium: "Education City",
                capacityStadium: "👤 45.350",
                numberGame: "38"
            ),
            .init(
                titleMatch: "GROUP D - AL JANOUB STADIUM 🏟",
                homeName: "AUS",
                visitName: "DEN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 30, hour: 18),
                imageH: UIImage(named: "australiaFlag") ?? UIImage(),
                imageV: UIImage(named: "denmarkFlag") ?? UIImage(),
                nameStadium: "Al Janoub Stadium",
                capacityStadium: "👤 40.000",
                numberGame: "37"
            )
            
        ]
    ),
    .init(
        group: "E",
        matches: [
            .init(
                titleMatch: "GROUP E - KHALIFA INTERNATIONAL STADIUM 🏟",
                homeName: "GER",
                visitName: "JPN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 23, hour: 16),
                imageH: UIImage(named: "germanyFlag") ?? UIImage(),
                imageV: UIImage(named: "japanFlag") ?? UIImage(),
                nameStadium: "Khalifa International Stadium",
                capacityStadium: "👤 48.000",
                numberGame: "11"
            ),
            .init(
                titleMatch: "GROUP E - AL THUMAMA STADIUM 🏟",
                homeName: "ESP",
                visitName: "CRC",
                dataTimeMatch: DataTimeMatch(month: 11, day: 23, hour: 19),
                imageH: UIImage(named: "spainFlag") ?? UIImage(),
                imageV: UIImage(named: "costaRicaFlag") ?? UIImage(),
                nameStadium: "Al Thumama Stadium",
                capacityStadium: "👤 40.000",
                numberGame: "10"
            ),
            .init(
                titleMatch: "GROUP E - AHMAD BIN ALI STADIUM 🏟",
                homeName: "JPN",
                visitName: "CRC",
                dataTimeMatch: DataTimeMatch(month: 11, day: 27, hour: 13),
                imageH: UIImage(named: "japanFlag") ?? UIImage(),
                imageV: UIImage(named: "costaRicaFlag") ?? UIImage(),
                nameStadium: "Ahmad Bin Ali Stadium",
                capacityStadium: "👤 40.000",
                numberGame: "25"
            ),
            .init(
                titleMatch: "GROUP E - AL BAYT STADIUM 🏟",
                homeName: "ESP",
                visitName: "GER",
                dataTimeMatch: DataTimeMatch(month: 11, day: 27, hour: 22),
                imageH: UIImage(named: "spainFlag") ?? UIImage(),
                imageV: UIImage(named: "germanyFlag") ?? UIImage(),
                nameStadium: "Al Bayt Stadium",
                capacityStadium: "👤 60.000",
                numberGame: "28"
            ),
            .init(
                titleMatch: "GROUP E - KHALIFA INTERNATIONAL STADIUM 🏟",
                homeName: "JPN",
                visitName: "ESP",
                dataTimeMatch: DataTimeMatch(month: 12, day: 01, hour: 22),
                imageH: UIImage(named: "japanFlag") ?? UIImage(),
                imageV: UIImage(named: "spainFlag") ?? UIImage(),
                nameStadium: "Khalifa International Stadium",
                capacityStadium: "👤 48.000",
                numberGame: "43"
            ),
            .init(
                titleMatch: "GROUP E - AL BAYT STADIUM 🏟",
                homeName: "CRC",
                visitName: "GER",
                dataTimeMatch: DataTimeMatch(month: 12, day: 01, hour: 22),
                imageH: UIImage(named: "costaRicaFlag") ?? UIImage(),
                imageV: UIImage(named: "germanyFlag") ?? UIImage(),
                nameStadium: "Al Bayt Stadium",
                capacityStadium: "👤 60.000",
                numberGame: "44"
            )
            
        ]
    ),
    .init(
        group: "F",
        matches: [
            .init(
                titleMatch: "GROUP F - AL BAYT STADIUM 🏟",
                homeName: "MAR",
                visitName: "CRO",
                dataTimeMatch: DataTimeMatch(month: 11, day: 23, hour: 13),
                imageH: UIImage(named: "moroccoFlag") ?? UIImage(),
                imageV: UIImage(named: "croaciaFlag") ?? UIImage(),
                nameStadium: "Al Bayt Stadium",
                capacityStadium: "👤 60.000",
                numberGame: "12"
            ),
            .init(
                titleMatch: "GROUP F - AHMAD BIN ALI STADIUM 🏟",
                homeName: "BEL",
                visitName: "CAN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 23, hour: 22),
                imageH: UIImage(named: "belgiumFlag") ?? UIImage(),
                imageV: UIImage(named: "canadaFlag") ?? UIImage(),
                nameStadium: "Ahmad Bin Ali Stadium",
                capacityStadium: "👤 60.000",
                numberGame: "9"
            ),
            .init(
                titleMatch: "GROUP F - AL THUMAMA STADIUM 🏟",
                homeName: "BEL",
                visitName: "MAR",
                dataTimeMatch: DataTimeMatch(month: 11, day: 27, hour: 16),
                imageH: UIImage(named: "belgiumFlag") ?? UIImage(),
                imageV: UIImage(named: "moroccoFlag") ?? UIImage(),
                nameStadium: "Al Thumama Stadium",
                capacityStadium: "👤 40.000",
                numberGame: "26"
            ),
            .init(
                titleMatch: "GROUP F - KHALIFA INTERNATIONAL STADIUM 🏟",
                homeName: "CRO",
                visitName: "CAN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 27, hour: 19),
                imageH: UIImage(named: "croaciaFlag") ?? UIImage(),
                imageV: UIImage(named: "canadaFlag") ?? UIImage(),
                nameStadium: "Khalifa International Stadium",
                capacityStadium: "👤 48.000",
                numberGame: "27"
            ),
            .init(
                titleMatch: "GROUP F - AHMAD BIN ALI STADIUM 🏟",
                homeName: "CRO",
                visitName: "BEL",
                dataTimeMatch: DataTimeMatch(month: 12, day: 01, hour: 18),
                imageH: UIImage(named: "croaciaFlag") ?? UIImage(),
                imageV: UIImage(named: "belgiumFlag") ?? UIImage(),
                nameStadium: "Ahmad Bin Ali Stadium",
                capacityStadium: "👤 40.000",
                numberGame: "41"
            ),
            .init(
                titleMatch: "GROUP F - AL THUMAMA STADIUM 🏟",
                homeName: "CAN",
                visitName: "MAR",
                dataTimeMatch: DataTimeMatch(month: 12, day: 01, hour: 18),
                imageH: UIImage(named: "canadaFlag") ?? UIImage(),
                imageV: UIImage(named: "moroccoFlag") ?? UIImage(),
                nameStadium: "Al Thumama Stadium",
                capacityStadium: "👤 40.000",
                numberGame: "42"
            )
            
        ]
    ),
    .init(
        group: "G",
        matches: [
            .init(
                titleMatch: "GROUP G - AL JANOUB STADIUM 🏟",
                homeName: "SUI",
                visitName: "CMR",
                dataTimeMatch: DataTimeMatch(month: 11, day: 24, hour: 13),
                imageH: UIImage(named: "switzerlandFlag") ?? UIImage(),
                imageV: UIImage(named: "cameroonFlag") ?? UIImage(),
                nameStadium: "Al Janoub Stadium",
                capacityStadium: "👤 40.000",
                numberGame: "13"
            ),
            .init(
                titleMatch: "GROUP G - LUSAIL STADIUM🏟",
                homeName: "BRA",
                visitName: "SRB",
                dataTimeMatch: DataTimeMatch(month: 11, day: 24, hour: 22),
                imageH: UIImage(named: "brazilFlag") ?? UIImage(),
                imageV: UIImage(named: "serbiaFlag") ?? UIImage(),
                nameStadium: "Lusail Stadium",
                capacityStadium: "👤 86.250",
                numberGame: "16"
            ),
            .init(
                titleMatch: "GROUP G - AL JANOUB STADIUM 🏟",
                homeName: "CMR",
                visitName: "SRB",
                dataTimeMatch: DataTimeMatch(month: 11, day: 28, hour: 13),
                imageH: UIImage(named: "cameroonFlag") ?? UIImage(),
                imageV: UIImage(named: "serbiaFlag") ?? UIImage(),
                nameStadium: "AL Janoub Stadium",
                capacityStadium: "👤 40.000",
                numberGame: "29"
            ),
            .init(
                titleMatch: "GROUP G - 974 STADIUM 🏟",
                homeName: "BRA",
                visitName: "SUI",
                dataTimeMatch: DataTimeMatch(month: 11, day: 28, hour: 19),
                imageH: UIImage(named: "brazilFlag") ?? UIImage(),
                imageV: UIImage(named: "switzerlandFlag") ?? UIImage(),
                nameStadium: "974 Stadium",
                capacityStadium: "👤 40.000",
                numberGame: "31"
            ),
            .init(
                titleMatch: "GROUP G - LUSAIL STADIUM 🏟",
                homeName: "CMR",
                visitName: "BRA",
                dataTimeMatch: DataTimeMatch(month: 12, day: 02, hour: 22),
                imageH: UIImage(named: "cameroonFlag") ?? UIImage(),
                imageV: UIImage(named: "brazilFlag") ?? UIImage(),
                nameStadium: "Lusail Stadium",
                capacityStadium: "👤 86.250",
                numberGame: "48"
            ),
            .init(
                titleMatch: "GROUP G - 974 STADIUM🏟",
                homeName: "SRB",
                visitName: "SUI",
                dataTimeMatch: DataTimeMatch(month: 12, day: 02, hour: 22),
                imageH: UIImage(named: "serbiaFlag") ?? UIImage(),
                imageV: UIImage(named: "switzerlandFlag") ?? UIImage(),
                nameStadium: "974 Stadium",
                capacityStadium: "👤 40.000",
                numberGame: "47"
            )
        ]
    ),
    .init(
        group: "H",
        matches: [
            .init(
                titleMatch: "GROUP H - EDUCATION CITY STADIUM 🏟",
                homeName: "URU",
                visitName: "KOR",
                dataTimeMatch: DataTimeMatch(month: 11, day: 24, hour: 16),
                imageH: UIImage(named: "uruguayFlag") ?? UIImage(),
                imageV: UIImage(named: "koreaFlag") ?? UIImage(),
                nameStadium: "Education City Stadium",
                capacityStadium: "👤 45.350",
                numberGame: "14"
            ),
            .init(
                titleMatch: "GROUP H - 974 STADIUM 🏟",
                homeName: "POR",
                visitName: "GHA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 24, hour: 19),
                imageH: UIImage(named: "portugalFlag") ?? UIImage(),
                imageV: UIImage(named: "ghanaFlag") ?? UIImage(),
                nameStadium: "974 Stadium",
                capacityStadium: "👤 40.000",
                numberGame: "15"
            ),
            .init(
                titleMatch: "GROUP H - EDUCATION CITY STADIUM 🏟",
                homeName: "KOR",
                visitName: "GHA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 28, hour: 16),
                imageH: UIImage(named: "koreaFlag") ?? UIImage(),
                imageV: UIImage(named: "ghanaFlag") ?? UIImage(),
                nameStadium: "Education City Stadium",
                capacityStadium: "👤 45.350",
                numberGame: "30"
            ),
            .init(
                titleMatch: "GROUP H - LUSAIL STADIUM🏟",
                homeName: "POR",
                visitName: "URU",
                dataTimeMatch: DataTimeMatch(month: 11, day: 28, hour: 22),
                imageH: UIImage(named: "portugalFlag") ?? UIImage(),
                imageV: UIImage(named: "uruguayFlag") ?? UIImage(),
                nameStadium: "Lusail Stadium",
                capacityStadium: "👤 86.250",
                numberGame: "32"
            ),
            .init(
                titleMatch: "GROUP H - EDUCATION CITY STADIUM🏟",
                homeName: "KOR",
                visitName: "POR",
                dataTimeMatch: DataTimeMatch(month: 12, day: 02, hour: 18),
                imageH: UIImage(named: "koreaFlag") ?? UIImage(),
                imageV: UIImage(named: "portugalFlag") ?? UIImage(),
                nameStadium: "Education City Stadium",
                capacityStadium: "👤 45.350",
                numberGame: "46"
            ),
            .init(
                titleMatch: "GROUP H - AL JANOUB STADIUM 🏟",
                homeName: "GHA",
                visitName: "URU",
                dataTimeMatch: DataTimeMatch(month: 12, day: 02, hour: 18),
                imageH: UIImage(named: "ghanaFlag") ?? UIImage(),
                imageV: UIImage(named: "uruguayFlag") ?? UIImage(),
                nameStadium: "Al Janoub Stadium",
                capacityStadium: "👤 40.000",
                numberGame: "45"
            )
            
        ]
    )
]

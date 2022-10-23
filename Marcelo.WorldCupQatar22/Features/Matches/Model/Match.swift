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
                imageV: UIImage(named: "ecuadorFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP A - AL THUMAMA STADIUM 🏟",
                homeName: "SEN",
                visitName: "NED",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 19),
                imageH: UIImage(named: "senegalFlag") ?? UIImage(),
                imageV: UIImage(named: "netherlandsFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP A - AL THUMAMA 🏟",
                homeName: "QAT",
                visitName: "SEN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 25, hour: 16),
                imageH: UIImage(named: "qtarFlag") ?? UIImage(),
                imageV: UIImage(named: "senegalFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP A - KHALIFA 🏟",
                homeName: "NED",
                visitName: "ECU",
                dataTimeMatch: DataTimeMatch(month: 11, day: 25, hour: 19),
                imageH: UIImage(named: "netherlandsFlag") ?? UIImage(),
                imageV: UIImage(named: "ecuadorFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP A - AL BAYT 🏟",
                homeName: "NED",
                visitName: "QAT",
                dataTimeMatch: DataTimeMatch(month: 11, day: 29, hour: 18),
                imageH: UIImage(named: "netherlandsFlag") ?? UIImage(),
                imageV: UIImage(named: "qtarFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP A - KHALIFA 🏟",
                homeName: "ECU",
                visitName: "SEN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 29, hour: 18),
                imageH: UIImage(named: "ecuadorFlag") ?? UIImage(),
                imageV: UIImage(named: "senegalFlag") ?? UIImage()
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
                imageV: UIImage(named: "iranFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP B - AL RAYYAN 🏟",
                homeName: "USA",
                visitName: "WAL",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 22),
                imageH: UIImage(named: "unitedStatesFlag") ?? UIImage(),
                imageV: UIImage(named: "walesFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP B - AL RAYYAN  🏟",
                homeName: "WAL",
                visitName: "IRN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 25, hour: 13),
                imageH: UIImage(named: "walesFlag") ?? UIImage(),
                imageV: UIImage(named: "iranFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP B - AL BAYT STADIUM 🏟",
                homeName: "ENG",
                visitName: "USA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 25, hour: 22),
                imageH: UIImage(named: "englandFlag") ?? UIImage(),
                imageV: UIImage(named: "unitedStatesFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP B - AL RAYYAN  🏟",
                homeName: "WAL",
                visitName: "ENG",
                dataTimeMatch: DataTimeMatch(month: 11, day: 29, hour: 22),
                imageH: UIImage(named: "walesFlag") ?? UIImage(),
                imageV: UIImage(named: "englandFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP B - AL THUMAMA 🏟",
                homeName: "IRA",
                visitName: "USA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 29, hour: 22),
                imageH: UIImage(named: "iranFlag") ?? UIImage(),
                imageV: UIImage(named: "unitedStatesFlag") ?? UIImage()
            )
            
        ]
    ),
    .init(
        group: "C",
        matches: [
            .init(
                titleMatch: "GROUP C - LUSAIL 🏟",
                homeName: "ARG",
                visitName: "KSA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 22, hour: 13),
                imageH: UIImage(named: "argentinaFlag") ?? UIImage(),
                imageV: UIImage(named: "saudiArabiaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP C - 974 🏟",
                homeName: "MEX",
                visitName: "POL",
                dataTimeMatch: DataTimeMatch(month: 11, day: 22, hour: 19),
                imageH: UIImage(named: "mexicoFlag") ?? UIImage(),
                imageV: UIImage(named: "polandFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP C - EDUCATION CITY  🏟",
                homeName: "POL",
                visitName: "KSA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 26, hour: 16),
                imageH: UIImage(named: "polandFlag") ?? UIImage(),
                imageV: UIImage(named: "saudiArabiaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP C - LUSAIL 🏟",
                homeName: "ARG",
                visitName: "MEX",
                dataTimeMatch: DataTimeMatch(month: 11, day: 26, hour: 22),
                imageH: UIImage(named: "argentinaFlag") ?? UIImage(),
                imageV: UIImage(named: "mexicoFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP C - 974  🏟",
                homeName: "POL",
                visitName: "ARG",
                dataTimeMatch: DataTimeMatch(month: 11, day: 30, hour: 22),
                imageH: UIImage(named: "polandFlag") ?? UIImage(),
                imageV: UIImage(named: "argentinaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP C - LUSAIL 🏟",
                homeName: "KSA",
                visitName: "MEX",
                dataTimeMatch: DataTimeMatch(month: 11, day: 30, hour: 22),
                imageH: UIImage(named: "saudiArabiaFlag") ?? UIImage(),
                imageV: UIImage(named: "mexicoFlag") ?? UIImage()
            )
            
        ]
    ),
    .init(
        group: "D",
        matches: [
            .init(
                titleMatch: "GROUP D - EDUCATION CITY 🏟",
                homeName: "DEN",
                visitName: "TUN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 22, hour: 16),
                imageH: UIImage(named: "denmarkFlag") ?? UIImage(),
                imageV: UIImage(named: "tunisiaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP D - AL JANOUB 🏟",
                homeName: "FRA",
                visitName: "AUS",
                dataTimeMatch: DataTimeMatch(month: 11, day: 22, hour: 22),
                imageH: UIImage(named: "franceFlag") ?? UIImage(),
                imageV: UIImage(named: "australiaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP D - AL JANOUB  🏟",
                homeName: "TUN",
                visitName: "AUS",
                dataTimeMatch: DataTimeMatch(month: 11, day: 26, hour: 13),
                imageH: UIImage(named: "tunisiaFlag") ?? UIImage(),
                imageV: UIImage(named: "australiaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP D - 974 🏟",
                homeName: "FRA",
                visitName: "DEN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 26, hour: 19),
                imageH: UIImage(named: "franceFlag") ?? UIImage(),
                imageV: UIImage(named: "denmarkFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP D - EDUCATION CITY  🏟",
                homeName: "TUN",
                visitName: "FRA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 30, hour: 18),
                imageH: UIImage(named: "tunisiaFlag") ?? UIImage(),
                imageV: UIImage(named: "franceFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP D - AL JANOUB 🏟",
                homeName: "AUS",
                visitName: "DEN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 30, hour: 18),
                imageH: UIImage(named: "australiaFlag") ?? UIImage(),
                imageV: UIImage(named: "denmarkFlag") ?? UIImage()
            )
            
        ]
    ),
    .init(
        group: "E",
        matches: [
            .init(
                titleMatch: "GROUP E - KHALIFA 🏟",
                homeName: "GER",
                visitName: "JPN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 23, hour: 16),
                imageH: UIImage(named: "germanyFlag") ?? UIImage(),
                imageV: UIImage(named: "japanFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP E - AL THUMAMA 🏟",
                homeName: "ESP",
                visitName: "CRC",
                dataTimeMatch: DataTimeMatch(month: 11, day: 23, hour: 19),
                imageH: UIImage(named: "spainFlag") ?? UIImage(),
                imageV: UIImage(named: "costaRicaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP E - AHMAD BIN ALI  🏟",
                homeName: "JPN",
                visitName: "CRC",
                dataTimeMatch: DataTimeMatch(month: 11, day: 27, hour: 13),
                imageH: UIImage(named: "japanFlag") ?? UIImage(),
                imageV: UIImage(named: "costaRicaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP E - AL BAYT 🏟",
                homeName: "ESP",
                visitName: "GER",
                dataTimeMatch: DataTimeMatch(month: 11, day: 27, hour: 22),
                imageH: UIImage(named: "spainFlag") ?? UIImage(),
                imageV: UIImage(named: "germanyFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP E - KHALIFA 🏟",
                homeName: "JPN",
                visitName: "ESP",
                dataTimeMatch: DataTimeMatch(month: 12, day: 01, hour: 22),
                imageH: UIImage(named: "japanFlag") ?? UIImage(),
                imageV: UIImage(named: "spainFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP E - AL BAYT 🏟",
                homeName: "CRC",
                visitName: "GER",
                dataTimeMatch: DataTimeMatch(month: 12, day: 01, hour: 22),
                imageH: UIImage(named: "costaRicaFlag") ?? UIImage(),
                imageV: UIImage(named: "germanyFlag") ?? UIImage()
            )
            
        ]
    ),
    .init(
        group: "F",
        matches: [
            .init(
                titleMatch: "GROUP F - AL BAYT 🏟",
                homeName: "MAR",
                visitName: "CRO",
                dataTimeMatch: DataTimeMatch(month: 11, day: 23, hour: 13),
                imageH: UIImage(named: "moroccoFlag") ?? UIImage(),
                imageV: UIImage(named: "croaciaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP F - AHMAD BIN ALI 🏟",
                homeName: "BEL",
                visitName: "CAN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 23, hour: 22),
                imageH: UIImage(named: "belgiumFlag") ?? UIImage(),
                imageV: UIImage(named: "canadaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP F - AL THUMAMA  🏟",
                homeName: "BEL",
                visitName: "MAR",
                dataTimeMatch: DataTimeMatch(month: 11, day: 27, hour: 16),
                imageH: UIImage(named: "belgiumFlag") ?? UIImage(),
                imageV: UIImage(named: "moroccoFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP F - KHALIFA 🏟",
                homeName: "CRO",
                visitName: "CAN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 27, hour: 19),
                imageH: UIImage(named: "croaciaFlag") ?? UIImage(),
                imageV: UIImage(named: "canadaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP F - AHMAD BIN ALI 🏟",
                homeName: "CRO",
                visitName: "BEL",
                dataTimeMatch: DataTimeMatch(month: 12, day: 01, hour: 18),
                imageH: UIImage(named: "croaciaFlag") ?? UIImage(),
                imageV: UIImage(named: "belgiumFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP F - AL THUMAMA 🏟",
                homeName: "CAN",
                visitName: "MAR",
                dataTimeMatch: DataTimeMatch(month: 12, day: 01, hour: 18),
                imageH: UIImage(named: "canadaFlag") ?? UIImage(),
                imageV: UIImage(named: "moroccoFlag") ?? UIImage()
            )
            
        ]
    ),
    .init(
        group: "G",
        matches: [
            .init(
                titleMatch: "GROUP G - AL JANOUB 🏟",
                homeName: "SUI",
                visitName: "CMR",
                dataTimeMatch: DataTimeMatch(month: 11, day: 24, hour: 13),
                imageH: UIImage(named: "switzerlandFlag") ?? UIImage(),
                imageV: UIImage(named: "cameroonFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP G - LUSAIL 🏟",
                homeName: "BRA",
                visitName: "SRB",
                dataTimeMatch: DataTimeMatch(month: 11, day: 24, hour: 22),
                imageH: UIImage(named: "brazilFlag") ?? UIImage(),
                imageV: UIImage(named: "serbiaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP G - AL JANOUB  🏟",
                homeName: "CMR",
                visitName: "SRB",
                dataTimeMatch: DataTimeMatch(month: 11, day: 28, hour: 13),
                imageH: UIImage(named: "cameroonFlag") ?? UIImage(),
                imageV: UIImage(named: "serbiaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP G - 974 🏟",
                homeName: "BRA",
                visitName: "SUI",
                dataTimeMatch: DataTimeMatch(month: 11, day: 28, hour: 19),
                imageH: UIImage(named: "brazilFlag") ?? UIImage(),
                imageV: UIImage(named: "switzerlandFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP G - LUSAIL 🏟",
                homeName: "CMR",
                visitName: "BRA",
                dataTimeMatch: DataTimeMatch(month: 12, day: 02, hour: 22),
                imageH: UIImage(named: "cameroonFlag") ?? UIImage(),
                imageV: UIImage(named: "brazilFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP G - 974 🏟",
                homeName: "SRB",
                visitName: "SUI",
                dataTimeMatch: DataTimeMatch(month: 12, day: 02, hour: 22),
                imageH: UIImage(named: "serbiaFlag") ?? UIImage(),
                imageV: UIImage(named: "switzerlandFlag") ?? UIImage()
            )
            
        ]
    ),
    .init(
        group: "H",
        matches: [
            .init(
                titleMatch: "GROUP H - EDUCATION CITY 🏟",
                homeName: "URU",
                visitName: "KOR",
                dataTimeMatch: DataTimeMatch(month: 11, day: 24, hour: 16),
                imageH: UIImage(named: "uruguayFlag") ?? UIImage(),
                imageV: UIImage(named: "koreaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP H - 974 🏟",
                homeName: "POR",
                visitName: "GHA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 24, hour: 19),
                imageH: UIImage(named: "portugalFlag") ?? UIImage(),
                imageV: UIImage(named: "ghanaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP H - EDUCATION CITY  🏟",
                homeName: "KOR",
                visitName: "GHA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 28, hour: 16),
                imageH: UIImage(named: "koreaFlag") ?? UIImage(),
                imageV: UIImage(named: "ghanaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP H - LUSAIL 🏟",
                homeName: "POR",
                visitName: "URU",
                dataTimeMatch: DataTimeMatch(month: 11, day: 28, hour: 22),
                imageH: UIImage(named: "portugalFlag") ?? UIImage(),
                imageV: UIImage(named: "uruguayFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP H - EEDUCATION CITY 🏟",
                homeName: "KOR",
                visitName: "POR",
                dataTimeMatch: DataTimeMatch(month: 12, day: 02, hour: 18),
                imageH: UIImage(named: "koreaFlag") ?? UIImage(),
                imageV: UIImage(named: "portugalFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP H - AL JANOUB 🏟",
                homeName: "GHA",
                visitName: "URU",
                dataTimeMatch: DataTimeMatch(month: 12, day: 02, hour: 18),
                imageH: UIImage(named: "ghanaFlag") ?? UIImage(),
                imageV: UIImage(named: "uruguayFlag") ?? UIImage()
            )
            
        ]
    )
]

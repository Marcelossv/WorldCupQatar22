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
                titleMatch: "GROUP A - AL THUMAMA 🏟",
                homeName: "SEN",
                visitName: "NLD",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 05),
                imageH: UIImage(named: "senegalFlag") ?? UIImage(),
                imageV: UIImage(named: "netherlandsFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP A - AL BAYT STADIUM 🏟",
                homeName: "QTR",
                visitName: "ECU",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 11),
                imageH: UIImage(named: "qtarFlag") ?? UIImage(),
                imageV: UIImage(named: "ecuadorFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP A - AL THUMAMA 🏟",
                homeName: "QTR",
                visitName: "SEN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 25, hour: 08),
                imageH: UIImage(named: "qtarFlag") ?? UIImage(),
                imageV: UIImage(named: "senegalFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP A - KHALIFA 🏟",
                homeName: "NLD",
                visitName: "ECU",
                dataTimeMatch: DataTimeMatch(month: 11, day: 25, hour: 11),
                imageH: UIImage(named: "netherlandsFlag") ?? UIImage(),
                imageV: UIImage(named: "ecuadorFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP A - AL BAYT 🏟",
                homeName: "NLD",
                visitName: "QTR",
                dataTimeMatch: DataTimeMatch(month: 11, day: 29, hour: 10),
                imageH: UIImage(named: "netherlandsFlag") ?? UIImage(),
                imageV: UIImage(named: "qtarFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP A - KHALIFA 🏟",
                homeName: "ECU",
                visitName: "SEN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 29, hour: 10),
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
                visitName: "IRA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "englandFlag") ?? UIImage(),
                imageV: UIImage(named: "iranFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP B - AHMAD BIN ALI 🏟",
                homeName: "USA",
                visitName: "WAL",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "unitedStatesFlag") ?? UIImage(),
                imageV: UIImage(named: "walesFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP B - AHMAD BIN ALI  🏟",
                homeName: "WAL",
                visitName: "IRA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "walesFlag") ?? UIImage(),
                imageV: UIImage(named: "iranFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP B - AL BAYT STADIUM 🏟",
                homeName: "ENG",
                visitName: "USA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "englandFlag") ?? UIImage(),
                imageV: UIImage(named: "unitedStatesFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP B - AHMAD BIN ALI  🏟",
                homeName: "WAL",
                visitName: "ENG",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "walesFlag") ?? UIImage(),
                imageV: UIImage(named: "englandFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP B - AL THUMAMA 🏟",
                homeName: "IRA",
                visitName: "USA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
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
                visitName: "ARA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "argentinaFlag") ?? UIImage(),
                imageV: UIImage(named: "saudiArabiaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP C - 974 🏟",
                homeName: "MEX",
                visitName: "POL",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "mexicoFlag") ?? UIImage(),
                imageV: UIImage(named: "polandFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP C - EDUCATION CITY  🏟",
                homeName: "POL",
                visitName: "ARA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "polandFlag") ?? UIImage(),
                imageV: UIImage(named: "saudiArabiaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP C - LUSAIL 🏟",
                homeName: "ARG",
                visitName: "MEX",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "argentinaFlag") ?? UIImage(),
                imageV: UIImage(named: "mexicoFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP C - 974  🏟",
                homeName: "POL",
                visitName: "ARG",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "polandFlag") ?? UIImage(),
                imageV: UIImage(named: "argentinaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP C - LUSAIL 🏟",
                homeName: "ARA",
                visitName: "MEX",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
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
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "denmarkFlag") ?? UIImage(),
                imageV: UIImage(named: "tunisiaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP D - AL JANOUB 🏟",
                homeName: "FRA",
                visitName: "AUS",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "franceFlag") ?? UIImage(),
                imageV: UIImage(named: "australiaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP D - AL JANOUB  🏟",
                homeName: "TUN",
                visitName: "AUS",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "tunisiaFlag") ?? UIImage(),
                imageV: UIImage(named: "australiaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP D - 974 🏟",
                homeName: "FRA",
                visitName: "DEN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "franceFlag") ?? UIImage(),
                imageV: UIImage(named: "denmarkFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP D - EDUCATION CITY  🏟",
                homeName: "TUN",
                visitName: "FRA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "tunisiaFlag") ?? UIImage(),
                imageV: UIImage(named: "franceFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP D - AL JANOUB 🏟",
                homeName: "AUS",
                visitName: "DEN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
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
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "germanyFlag") ?? UIImage(),
                imageV: UIImage(named: "japanFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP E - AL THUMAMA 🏟",
                homeName: "SPA",
                visitName: "COR",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "spainFlag") ?? UIImage(),
                imageV: UIImage(named: "costaRicaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP E - AHMAD BIN ALI  🏟",
                homeName: "JPN",
                visitName: "COR",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "japanFlag") ?? UIImage(),
                imageV: UIImage(named: "costaRicaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP E - AL BAYT 🏟",
                homeName: "SPA",
                visitName: "GER",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "spainFlag") ?? UIImage(),
                imageV: UIImage(named: "germanyFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP E - KHALIFA 🏟",
                homeName: "JPN",
                visitName: "SPA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "japanFlag") ?? UIImage(),
                imageV: UIImage(named: "spainFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP E - AL BAYT 🏟",
                homeName: "COR",
                visitName: "GER",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
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
                homeName: "MOC",
                visitName: "CRO",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "moroccoFlag") ?? UIImage(),
                imageV: UIImage(named: "croaciaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP F - AHMAD BIN ALI 🏟",
                homeName: "BEL",
                visitName: "CAN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "belgiumFlag") ?? UIImage(),
                imageV: UIImage(named: "canadaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP F - AL THUMAMA  🏟",
                homeName: "BEL",
                visitName: "MOC",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "belgiumFlag") ?? UIImage(),
                imageV: UIImage(named: "moroccoFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP F - KHALIFA 🏟",
                homeName: "CRO",
                visitName: "CAN",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "croaciaFlag") ?? UIImage(),
                imageV: UIImage(named: "canadaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP F - AHMAD BIN ALI 🏟",
                homeName: "CRO",
                visitName: "BEL",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "croaciaFlag") ?? UIImage(),
                imageV: UIImage(named: "belgiumFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP F - AL THUMAMA 🏟",
                homeName: "CAN",
                visitName: "MOC",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
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
                homeName: "SWZ",
                visitName: "CAM",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "switzerlandFlag") ?? UIImage(),
                imageV: UIImage(named: "cameroonFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP G - LUSAIL 🏟",
                homeName: "BRA",
                visitName: "SER",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "brazilFlag") ?? UIImage(),
                imageV: UIImage(named: "serbiaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP G - AL JANOUB  🏟",
                homeName: "CAM",
                visitName: "SER",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "cameroonFlag") ?? UIImage(),
                imageV: UIImage(named: "serbiaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP G - 974 🏟",
                homeName: "BRA",
                visitName: "SWZ",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "brazilFlag") ?? UIImage(),
                imageV: UIImage(named: "switzerlandFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP G - LUSAIL 🏟",
                homeName: "CAM",
                visitName: "BRA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "cameroonFlag") ?? UIImage(),
                imageV: UIImage(named: "brazilFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP G - 974 🏟",
                homeName: "SER",
                visitName: "SWZ",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
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
                visitName: "SKO",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "uruguayFlag") ?? UIImage(),
                imageV: UIImage(named: "koreaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP H - 974 🏟",
                homeName: "POR",
                visitName: "GHA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "portugalFlag") ?? UIImage(),
                imageV: UIImage(named: "ghanaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP H - EDUCATION CITY  🏟",
                homeName: "SKO",
                visitName: "GHA",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "koreaFlag") ?? UIImage(),
                imageV: UIImage(named: "ghanaFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP H - LUSAIL 🏟",
                homeName: "POR",
                visitName: "URU",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "portugalFlag") ?? UIImage(),
                imageV: UIImage(named: "uruguayFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP H - EEDUCATION CITY 🏟",
                homeName: "SKO",
                visitName: "POR",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "koreaFlag") ?? UIImage(),
                imageV: UIImage(named: "portugalFlag") ?? UIImage()
            ),
            .init(
                titleMatch: "GROUP H - AL JANOUB 🏟",
                homeName: "GHA",
                visitName: "URU",
                dataTimeMatch: DataTimeMatch(month: 11, day: 21, hour: 08),
                imageH: UIImage(named: "ghanaFlag") ?? UIImage(),
                imageV: UIImage(named: "uruguayFlag") ?? UIImage()
            )
            
        ]
    )
]

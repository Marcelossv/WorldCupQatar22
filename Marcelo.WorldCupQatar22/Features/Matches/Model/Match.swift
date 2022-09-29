//
//  Match.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 05/05/22.
//

import UIKit

struct Match {
    let titleMatch: String
    let homeName: String
    let visitName: String
    let dataTimeMatch: String
    let imageH: UIImage
    let imageV: UIImage
}

struct GroupGames {
    let group: String
    let matches: [Match]
}

let cupGames: [GroupGames] = [
    .init(
        group: "A",
        matches: [
            .init(
                titleMatch: "GROUP A - AL THUMAMA 🏟",
                homeName: "SEN",
                visitName: "NLD",
                dataTimeMatch: "MON 21/11 - 05H00",
                imageH: #imageLiteral(resourceName: "Senegal"),
                imageV: #imageLiteral(resourceName: "Netherlands-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP A - AL BAYT STADIUM 🏟",
                homeName: "QTR",
                visitName: "ECU",
                dataTimeMatch: "MON 21/11 - 11H00",
                imageH: #imageLiteral(resourceName: "Qtar"), imageV: #imageLiteral(resourceName: "Ecuador")
            ),
            .init(
                titleMatch: "GROUP A - AL THUMAMA 🏟",
                homeName: "QTR",
                visitName: "SEN",
                dataTimeMatch: "FRI 25/11 - 08H00",
                imageH: #imageLiteral(resourceName: "Qtar"),
                imageV: #imageLiteral(resourceName: "Ghana-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP A - KHALIFA 🏟",
                homeName: "NLD",
                visitName: "ECU",
                dataTimeMatch: "FRI 25/11 - 11H00",
                imageH: #imageLiteral(resourceName: "Netherlands-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Ecuador")
            ),
            .init(
                titleMatch: "GROUP A - AL BAYT 🏟",
                homeName: "NLD",
                visitName: "QTR",
                dataTimeMatch: "TUE 29/11 - 10H00",
                imageH: #imageLiteral(resourceName: "Netherlands-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Qtar")
            ),
            .init(
                titleMatch: "GROUP A - KHALIFA 🏟",
                homeName: "ECU",
                visitName: "SEN",
                dataTimeMatch: "TUE 29/11 - 10H00",
                imageH: #imageLiteral(resourceName: "Ecuador"),
                imageV: #imageLiteral(resourceName: "Ghana-Flag-icon")
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
                dataTimeMatch: "MON 21/11 - 08H00",
                imageH: #imageLiteral(resourceName: "England-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Iran-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP B - AHMAD BIN ALI 🏟",
                homeName: "USA",
                visitName: "WAL",
                dataTimeMatch: "MON 21/11 - 14H00",
                imageH: #imageLiteral(resourceName: "United-States-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Wales-Flag")
            ),
            .init(
                titleMatch: "GROUP B - AHMAD BIN ALI  🏟",
                homeName: "WAL",
                visitName: "IRA",
                dataTimeMatch: "FRI 25/11 - 17H00",
                imageH: #imageLiteral(resourceName: "Wales-Flag"),
                imageV: #imageLiteral(resourceName: "Iran-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP B - AL BAYT STADIUM 🏟",
                homeName: "ENG",
                visitName: "USA",
                dataTimeMatch: "FRI 25/11 - 14H00",
                imageH: #imageLiteral(resourceName: "England-Flag-icon"),
                imageV: #imageLiteral(resourceName: "United-States-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP B - AHMAD BIN ALI  🏟",
                homeName: "WAL",
                visitName: "ENG",
                dataTimeMatch: "TUE 29/11 - 14H00",
                imageH: #imageLiteral(resourceName: "Wales-Flag"),
                imageV: #imageLiteral(resourceName: "England-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP B - AL THUMAMA 🏟",
                homeName: "IRA",
                visitName: "USA",
                dataTimeMatch: "TUE 29/11 - 14H00",
                imageH: #imageLiteral(resourceName: "Iran-Flag-icon"),
                imageV: #imageLiteral(resourceName: "United-States-Flag-icon")
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
                dataTimeMatch: "TUE 22/11 - 05H00",
                imageH: #imageLiteral(resourceName: "Argentina-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Saudi-Arabia-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP C - 974 🏟",
                homeName: "MEX",
                visitName: "POL",
                dataTimeMatch: "TUE 22/11 - 11H00",
                imageH: #imageLiteral(resourceName: "Mexico-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Poland-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP C - EDUCATION CITY  🏟",
                homeName: "POL",
                visitName: "ARA",
                dataTimeMatch: "SAT 26/11 - 08H00",
                imageH: #imageLiteral(resourceName: "Poland-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Saudi-Arabia-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP C - LUSAIL 🏟",
                homeName: "ARG",
                visitName: "MEX",
                dataTimeMatch: "SAT 26/11 - 14H00",
                imageH: #imageLiteral(resourceName: "Argentina-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Mexico-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP C - 974  🏟",
                homeName: "POL",
                visitName: "ARG",
                dataTimeMatch: "WED 30/11 - 14H00",
                imageH: #imageLiteral(resourceName: "Poland-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Argentina-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP C - LUSAIL 🏟",
                homeName: "ARA",
                visitName: "MEX",
                dataTimeMatch: "WED 30/11 - 14H00",
                imageH: #imageLiteral(resourceName: "Saudi-Arabia-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Mexico-Flag-icon")
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
                dataTimeMatch: "TUE 22/11 - 08H00",
                imageH: #imageLiteral(resourceName: "Denmark-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Tunisia-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP D - AL JANOUB 🏟",
                homeName: "FRA",
                visitName: "AUS",
                dataTimeMatch: "TUE 22/11 - 14H00",
                imageH: #imageLiteral(resourceName: "France-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Australia-Flag")
            ),
            .init(
                titleMatch: "GROUP D - AL JANOUB  🏟",
                homeName: "TUN",
                visitName: "AUS",
                dataTimeMatch: "SAT 26/11 - 05H00",
                imageH: #imageLiteral(resourceName: "Tunisia-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Australia-Flag")
            ),
            .init(
                titleMatch: "GROUP D - 974 🏟",
                homeName: "FRA",
                visitName: "DEN",
                dataTimeMatch: "SAT 26/11 - 11H00",
                imageH: #imageLiteral(resourceName: "France-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Denmark-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP D - EDUCATION CITY  🏟",
                homeName: "TUN",
                visitName: "FRA",
                dataTimeMatch: "WED 30/11 - 10H00",
                imageH: #imageLiteral(resourceName: "Tunisia-Flag-icon"),
                imageV: #imageLiteral(resourceName: "France-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP D - AL JANOUB 🏟",
                homeName: "AUS",
                visitName: "DEN",
                dataTimeMatch: "WED 30/11 - 10H00",
                imageH: #imageLiteral(resourceName: "Australia-Flag"),
                imageV: #imageLiteral(resourceName: "Denmark-Flag-icon")
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
                dataTimeMatch: "WED 23/11 - 08H00",
                imageH: #imageLiteral(resourceName: "Germany-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Japan-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP E - AL THUMAMA 🏟",
                homeName: "SPA",
                visitName: "CR",
                dataTimeMatch: "WED 23/11 - 11H00",
                imageH: #imageLiteral(resourceName: "Spain-Flag-icon"),
                imageV: #imageLiteral(resourceName: "costaRica-Flag")
            ),
            .init(
                titleMatch: "GROUP E - AHMAD BIN ALI  🏟",
                homeName: "JPN",
                visitName: "CR",
                dataTimeMatch: "SUN 27/11 - 05H00",
                imageH: #imageLiteral(resourceName: "Japan-Flag-icon"),
                imageV: #imageLiteral(resourceName: "costaRica-Flag")
            ),
            .init(
                titleMatch: "GROUP E - AL BAYT 🏟",
                homeName: "SPA",
                visitName: "GER",
                dataTimeMatch: "SUN 27/11 - 14H00",
                imageH: #imageLiteral(resourceName: "Spain-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Germany-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP E - KHALIFA 🏟",
                homeName: "JPN",
                visitName: "SPA",
                dataTimeMatch: "THURS 01/12 - 14H00",
                imageH: #imageLiteral(resourceName: "Japan-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Spain-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP E - AL BAYT 🏟",
                homeName: "CR",
                visitName: "GER",
                dataTimeMatch: "THURS 01/12 - 14H00",
                imageH: #imageLiteral(resourceName: "costaRica-Flag"),
                imageV: #imageLiteral(resourceName: "Germany-Flag-icon")
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
                dataTimeMatch: "WED 23/11 - 05H00",
                imageH: #imageLiteral(resourceName: "Morocco-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Croatian-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP F - AHMAD BIN ALI 🏟",
                homeName: "BEL",
                visitName: "CAN",
                dataTimeMatch: "WED 23/11 - 14H00",
                imageH: #imageLiteral(resourceName: "Belgium-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Canada-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP F - AL THUMAMA  🏟",
                homeName: "BEL",
                visitName: "MOC",
                dataTimeMatch: "SUN 27/11 - 08H00",
                imageH: #imageLiteral(resourceName: "Belgium-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Morocco-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP F - KHALIFA 🏟",
                homeName: "CRO",
                visitName: "CAN",
                dataTimeMatch: "SUN 27/11 - 11H00",
                imageH: #imageLiteral(resourceName: "Croatian-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Canada-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP F - AHMAD BIN ALI 🏟",
                homeName: "CRO",
                visitName: "BEL",
                dataTimeMatch: "THURS 01/12 - 10H00",
                imageH: #imageLiteral(resourceName: "Croatian-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Belgium-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP F - AL THUMAMA 🏟",
                homeName: "CAN",
                visitName: "MOC",
                dataTimeMatch: "THURS 01/12 - 10H00",
                imageH: #imageLiteral(resourceName: "Canada-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Morocco-Flag-icon")
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
                dataTimeMatch: "THURS 24/11 - 05H00",
                imageH: #imageLiteral(resourceName: "Switzerland-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Cameroon-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP G - LUSAIL 🏟",
                homeName: "BRA",
                visitName: "SER",
                dataTimeMatch: "THURS 24/11 - 14H00",
                imageH: #imageLiteral(resourceName: "Brazil"),
                imageV: #imageLiteral(resourceName: "Serbia-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP G - AL JANOUB  🏟",
                homeName: "CAM",
                visitName: "SER",
                dataTimeMatch: "MON 28/11 - 17H00",
                imageH: #imageLiteral(resourceName: "Cameroon-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Serbia-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP G - 974 🏟",
                homeName: "BRA",
                visitName: "SWZ",
                dataTimeMatch: "MON 28/11 - 11H00",
                imageH: #imageLiteral(resourceName: "Brazil"),
                imageV: #imageLiteral(resourceName: "Switzerland-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP G - LUSAIL 🏟",
                homeName: "CAM",
                visitName: "BRA",
                dataTimeMatch: "FRI 02/12 - 14H00",
                imageH: #imageLiteral(resourceName: "Cameroon-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Brazil")
            ),
            .init(
                titleMatch: "GROUP G - 974 🏟",
                homeName: "SEB",
                visitName: "SWZ",
                dataTimeMatch: "FRI 02/12 - 14H00",
                imageH: #imageLiteral(resourceName: "Serbia-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Switzerland-Flag-icon")
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
                dataTimeMatch: "THURS 24/11 - 08H00",
                imageH: #imageLiteral(resourceName: "Uruguay-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Korea-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP H - 974 🏟",
                homeName: "POR",
                visitName: "GHA",
                dataTimeMatch: "THURS 24/11 - 11H00",
                imageH: #imageLiteral(resourceName: "Portugal-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Ghana-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP H - EDUCATION CITY  🏟",
                homeName: "SKO",
                visitName: "GHA",
                dataTimeMatch: "MON 28/11 - 08H00",
                imageH: #imageLiteral(resourceName: "Korea-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Ghana-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP H - LUSAIL 🏟",
                homeName: "POT",
                visitName: "URU",
                dataTimeMatch: "MON 28/11 - 14H00",
                imageH: #imageLiteral(resourceName: "Portugal-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Uruguay-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP H - EEDUCATION CITY 🏟",
                homeName: "SKO",
                visitName: "POR",
                dataTimeMatch: "FRI 02/12 - 10H00",
                imageH: #imageLiteral(resourceName: "Korea-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Portugal-Flag-icon")
            ),
            .init(
                titleMatch: "GROUP H - AL JANOUB 🏟",
                homeName: "GHA",
                visitName: "URU",
                dataTimeMatch: "FRI 02/12 - 10H00",
                imageH: #imageLiteral(resourceName: "Ghana-Flag-icon"),
                imageV: #imageLiteral(resourceName: "Uruguay-Flag-icon")
            )
            
        ]
    )
]

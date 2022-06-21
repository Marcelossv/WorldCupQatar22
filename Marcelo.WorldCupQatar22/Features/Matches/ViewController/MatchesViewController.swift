//
//  Matchs.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 04/05/22.
//

import UIKit

class MatchesViewController: UIViewController{

    @IBOutlet weak var segControl: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!

    //Master Array
    lazy var rowsTodisplay = groupA
    // #imageLiteral(resourceName:"Senegal")
    var groupA : [Matches] = [
        Matches(titleMatch: "GROUP A - AL THUMAMA 🏟", homeName: "SEN", visitName: "NLD", vs: "X", dataTimeMatch: "MON 21/11 - 05H00", imageH: #imageLiteral(resourceName: "Senegal"), imageV: #imageLiteral(resourceName: "Netherlands-Flag-icon")),
        Matches(titleMatch: "GROUP A - AL BAYT STADIUM 🏟", homeName: "QTR", visitName: "ECU", vs: "X", dataTimeMatch: "MON 21/11 - 11H00", imageH: #imageLiteral(resourceName: "Qtar"), imageV: #imageLiteral(resourceName: "Ecuador")),
        Matches(titleMatch: "GROUP A - AL THUMAMA 🏟", homeName: "QTR", visitName: "SEN", vs: "X", dataTimeMatch: "FRI 25/11 - 08H00", imageH: #imageLiteral(resourceName: "Qtar"), imageV: #imageLiteral(resourceName: "Ghana-Flag-icon")),
        Matches(titleMatch: "GROUP A - KHALIFA 🏟", homeName: "NLD", visitName: "ECU", vs: "X", dataTimeMatch: "FRI 25/11 - 11H00", imageH: #imageLiteral(resourceName: "Netherlands-Flag-icon"), imageV: #imageLiteral(resourceName: "Ecuador")),
        Matches(titleMatch: "GROUP A - AL BAYT 🏟", homeName: "NLD", visitName: "QTR", vs: "X", dataTimeMatch: "TUE 29/11 - 10H00", imageH: #imageLiteral(resourceName: "Netherlands-Flag-icon"), imageV: #imageLiteral(resourceName: "Qtar")),
        Matches(titleMatch: "GROUP A - KHALIFA 🏟", homeName: "ECU", visitName: "SEN", vs: "X", dataTimeMatch: "TUE 29/11 - 10H00", imageH: #imageLiteral(resourceName: "Ecuador"), imageV: #imageLiteral(resourceName: "Ghana-Flag-icon"))
    ]
    
    var groupB : [Matches] = [
       Matches(titleMatch: "GROUP B - KHALIFA 🏟", homeName: "ENG", visitName: "IRA", vs: "X", dataTimeMatch: "MON 21/11 - 08H00", imageH: #imageLiteral(resourceName: "England-Flag-icon"), imageV: #imageLiteral(resourceName: "Iran-Flag-icon")),
       Matches(titleMatch: "GROUP B - AHMAD BIN ALI 🏟", homeName: "USA", visitName: "WAL", vs: "X", dataTimeMatch: "MON 21/11 - 14H00", imageH: #imageLiteral(resourceName: "United-States-Flag-icon"), imageV: #imageLiteral(resourceName: "MicrosoftTeams-image (6)")),
       Matches(titleMatch: "GROUP B - AHMAD BIN ALI  🏟", homeName: "WAL", visitName: "IRA", vs: "X", dataTimeMatch: "FRI 25/11 - 17H00", imageH: #imageLiteral(resourceName: "MicrosoftTeams-image (6)"), imageV: #imageLiteral(resourceName: "Iran-Flag-icon")),
       Matches(titleMatch: "GROUP B - AL BAYT STADIUM 🏟", homeName: "ENG", visitName: "USA", vs: "X", dataTimeMatch: "FRI 25/11 - 14H00", imageH: #imageLiteral(resourceName: "England-Flag-icon"), imageV: #imageLiteral(resourceName: "United-States-Flag-icon")),
       Matches(titleMatch: "GROUP B - AHMAD BIN ALI  🏟", homeName: "WAL", visitName: "ENG", vs: "X", dataTimeMatch: "TUE 29/11 - 14H00", imageH: #imageLiteral(resourceName: "MicrosoftTeams-image (6)"), imageV: #imageLiteral(resourceName: "England-Flag-icon")),
       Matches(titleMatch: "GROUP B - AL THUMAMA 🏟", homeName: "IRA", visitName: "USA", vs: "X", dataTimeMatch: "TUE 29/11 - 14H00", imageH: #imageLiteral(resourceName: "Iran-Flag-icon"), imageV: #imageLiteral(resourceName: "United-States-Flag-icon"))
    ]
    
    var groupC : [Matches] = [
       Matches(titleMatch: "GROUP C - LUSAIL 🏟", homeName: "ARG", visitName: "ARA", vs: "X", dataTimeMatch: "TUE 22/11 - 05H00", imageH: #imageLiteral(resourceName: "Argentina-Flag-icon"), imageV: #imageLiteral(resourceName: "Saudi-Arabia-Flag-icon")),
       Matches(titleMatch: "GROUP C - 974 🏟", homeName: "MEX", visitName: "POL", vs: "X", dataTimeMatch: "TUE 22/11 - 11H00", imageH: #imageLiteral(resourceName: "Mexico-Flag-icon"), imageV: #imageLiteral(resourceName: "Poland-Flag-icon")),
       Matches(titleMatch: "GROUP C - EDUCATION CITY  🏟", homeName: "POL", visitName: "ARA", vs: "X", dataTimeMatch: "SAT 26/11 - 08H00", imageH: #imageLiteral(resourceName: "Poland-Flag-icon"), imageV: #imageLiteral(resourceName: "Saudi-Arabia-Flag-icon")),
       Matches(titleMatch: "GROUP C - LUSAIL 🏟", homeName: "ARG", visitName: "MEX", vs: "X", dataTimeMatch: "SAT 26/11 - 14H00", imageH: #imageLiteral(resourceName: "Argentina-Flag-icon"), imageV: #imageLiteral(resourceName: "Mexico-Flag-icon")),
       Matches(titleMatch: "GROUP C - 974  🏟", homeName: "POL", visitName: "ARG", vs: "X", dataTimeMatch: "WED 30/11 - 14H00", imageH: #imageLiteral(resourceName: "Poland-Flag-icon"), imageV: #imageLiteral(resourceName: "Argentina-Flag-icon")),
       Matches(titleMatch: "GROUP C - LUSAIL 🏟", homeName: "ARA", visitName: "MEX", vs: "X", dataTimeMatch: "WED 30/11 - 14H00", imageH: #imageLiteral(resourceName: "Saudi-Arabia-Flag-icon"), imageV: #imageLiteral(resourceName: "Mexico-Flag-icon"))
    ]
    
    var groupD : [Matches] = [
       Matches(titleMatch: "GROUP D - EDUCATION CITY 🏟", homeName: "DEN", visitName: "TUN", vs: "X", dataTimeMatch: "TUE 22/11 - 08H00", imageH: #imageLiteral(resourceName: "Denmark-Flag-icon"), imageV: #imageLiteral(resourceName: "Tunisia-Flag-icon")),
       Matches(titleMatch: "GROUP D - AL JANOUB 🏟", homeName: "FRA", visitName: "AUS", vs: "X", dataTimeMatch: "TUE 22/11 - 14H00", imageH: #imageLiteral(resourceName: "France-Flag-icon"), imageV: #imageLiteral(resourceName: "MicrosoftTeams-image (6)")),
       Matches(titleMatch: "GROUP D - AL JANOUB  🏟", homeName: "TUN", visitName: "AUS", vs: "X", dataTimeMatch: "SAT 26/11 - 05H00", imageH: #imageLiteral(resourceName: "Tunisia-Flag-icon"), imageV: #imageLiteral(resourceName: "MicrosoftTeams-image (6)")),
       Matches(titleMatch: "GROUP D - 974 🏟", homeName: "FRA", visitName: "DEN", vs: "X", dataTimeMatch: "SAT 26/11 - 11H00", imageH: #imageLiteral(resourceName: "France-Flag-icon"), imageV: #imageLiteral(resourceName: "Denmark-Flag-icon")),
       Matches(titleMatch: "GROUP D - EDUCATION CITY  🏟", homeName: "TUN", visitName: "FRA", vs: "X", dataTimeMatch: "WED 30/11 - 10H00", imageH: #imageLiteral(resourceName: "Tunisia-Flag-icon"), imageV: #imageLiteral(resourceName: "France-Flag-icon")),
       Matches(titleMatch: "GROUP D - AL JANOUB 🏟", homeName: "AUS", visitName: "DEN", vs: "X", dataTimeMatch: "WED 30/11 - 10H00", imageH: #imageLiteral(resourceName: "MicrosoftTeams-image (6)"), imageV: #imageLiteral(resourceName: "Denmark-Flag-icon"))
    ]
    
    var groupE : [Matches] = [
       Matches(titleMatch: "GROUP E - KHALIFA 🏟", homeName: "GER", visitName: "JPN", vs: "X", dataTimeMatch: "WED 23/11 - 08H00", imageH: #imageLiteral(resourceName: "Germany-Flag-icon"), imageV: #imageLiteral(resourceName: "Japan-Flag-icon")),
       Matches(titleMatch: "GROUP E - AL THUMAMA 🏟", homeName: "SPA", visitName: "CR", vs: "X", dataTimeMatch: "WED 23/11 - 11H00", imageH: #imageLiteral(resourceName: "Spain-Flag-icon"), imageV: #imageLiteral(resourceName: "MicrosoftTeams-image (6)")),
       Matches(titleMatch: "GROUP E - AHMAD BIN ALI  🏟", homeName: "JPN", visitName: "CR", vs: "X", dataTimeMatch: "SUN 27/11 - 05H00", imageH: #imageLiteral(resourceName: "Japan-Flag-icon"), imageV: #imageLiteral(resourceName: "MicrosoftTeams-image (6)")),
       Matches(titleMatch: "GROUP E - AL BAYT 🏟", homeName: "SPA", visitName: "GER", vs: "X", dataTimeMatch: "SUN 27/11 - 14H00", imageH: #imageLiteral(resourceName: "Spain-Flag-icon"), imageV: #imageLiteral(resourceName: "Germany-Flag-icon")),
       Matches(titleMatch: "GROUP E - KHALIFA 🏟", homeName: "JPN", visitName: "SPA", vs: "X", dataTimeMatch: "THURS 01/12 - 14H00", imageH: #imageLiteral(resourceName: "Japan-Flag-icon"), imageV: #imageLiteral(resourceName: "Spain-Flag-icon")),
       Matches(titleMatch: "GROUP E - AL BAYT 🏟", homeName: "CR", visitName: "GER", vs: "X", dataTimeMatch: "THURS 01/12 - 14H00", imageH: #imageLiteral(resourceName: "MicrosoftTeams-image (6)"), imageV: #imageLiteral(resourceName: "Germany-Flag-icon"))
    ]
    
    
    var groupF : [Matches] = [
       Matches(titleMatch: "GROUP F - AL BAYT 🏟", homeName: "MOC", visitName: "CRO", vs: "X", dataTimeMatch: "WED 23/11 - 05H00", imageH: #imageLiteral(resourceName: "Morocco-Flag-icon"), imageV: #imageLiteral(resourceName: "Croatian-Flag-icon")),
       Matches(titleMatch: "GROUP F - AHMAD BIN ALI 🏟", homeName: "BEL", visitName: "CAN", vs: "X", dataTimeMatch: "WED 23/11 - 14H00", imageH: #imageLiteral(resourceName: "Belgium-Flag-icon"), imageV: #imageLiteral(resourceName: "Canada-Flag-icon")),
       Matches(titleMatch: "GROUP F - AL THUMAMA  🏟", homeName: "BEL", visitName: "MOC", vs: "X", dataTimeMatch: "SUN 27/11 - 08H00", imageH: #imageLiteral(resourceName: "Belgium-Flag-icon"), imageV: #imageLiteral(resourceName: "Morocco-Flag-icon")),
       Matches(titleMatch: "GROUP F - KHALIFA 🏟", homeName: "CRO", visitName: "CAN", vs: "X", dataTimeMatch: "SUN 27/11 - 11H00", imageH: #imageLiteral(resourceName: "Croatian-Flag-icon"), imageV: #imageLiteral(resourceName: "Canada-Flag-icon")),
       Matches(titleMatch: "GROUP F - AHMAD BIN ALI 🏟", homeName: "CRO", visitName: "BEL", vs: "X", dataTimeMatch: "THURS 01/12 - 10H00", imageH: #imageLiteral(resourceName: "Croatian-Flag-icon"), imageV: #imageLiteral(resourceName: "Belgium-Flag-icon")),
       Matches(titleMatch: "GROUP F - AL THUMAMA 🏟", homeName: "CAN", visitName: "MOC", vs: "X", dataTimeMatch: "THURS 01/12 - 10H00", imageH: #imageLiteral(resourceName: "Canada-Flag-icon"), imageV: #imageLiteral(resourceName: "Morocco-Flag-icon"))
    ]
    
    var groupG : [Matches] = [
       Matches(titleMatch: "GROUP G - AL JANOUB 🏟", homeName: "SWZ", visitName: "CAM", vs: "X", dataTimeMatch: "THURS 24/11 - 05H00", imageH: #imageLiteral(resourceName: "Switzerland-Flag-icon"), imageV: #imageLiteral(resourceName: "Cameroon-Flag-icon")),
       Matches(titleMatch: "GROUP G - LUSAIL 🏟", homeName: "BRA", visitName: "SER", vs: "X", dataTimeMatch: "THURS 24/11 - 14H00", imageH: #imageLiteral(resourceName: "Brazil"), imageV: #imageLiteral(resourceName: "Serbia-Flag-icon")),
       Matches(titleMatch: "GROUP G - AL JANOUB  🏟", homeName: "CAM", visitName: "SER", vs: "X", dataTimeMatch: "MON 28/11 - 17H00", imageH: #imageLiteral(resourceName: "Cameroon-Flag-icon"), imageV: #imageLiteral(resourceName: "Serbia-Flag-icon")),
       Matches(titleMatch: "GROUP G - 974 🏟", homeName: "BRA", visitName: "SWZ", vs: "X", dataTimeMatch: "MON 28/11 - 11H00", imageH: #imageLiteral(resourceName: "Brazil"), imageV: #imageLiteral(resourceName: "Switzerland-Flag-icon")),
       Matches(titleMatch: "GROUP G - LUSAIL 🏟", homeName: "CAM", visitName: "BRA", vs: "X", dataTimeMatch: "FRI 02/12 - 14H00", imageH: #imageLiteral(resourceName: "Cameroon-Flag-icon"), imageV: #imageLiteral(resourceName: "Brazil")),
       Matches(titleMatch: "GROUP G - 974 🏟", homeName: "SEB", visitName: "SWZ", vs: "X", dataTimeMatch: "FRI 02/12 - 14H00", imageH: #imageLiteral(resourceName: "Serbia-Flag-icon"), imageV: #imageLiteral(resourceName: "Switzerland-Flag-icon"))
    ]
    
    var groupH : [Matches] = [
       Matches(titleMatch: "GROUP H - EDUCATION CITY 🏟", homeName: "URU", visitName: "SKO", vs: "X", dataTimeMatch: "THURS 24/11 - 08H00", imageH: #imageLiteral(resourceName: "Uruguay-Flag-icon"), imageV: #imageLiteral(resourceName: "Korea-Flag-icon")),
       Matches(titleMatch: "GROUP H - 974 🏟", homeName: "POR", visitName: "GHA", vs: "X", dataTimeMatch: "THURS 24/11 - 11H00", imageH: #imageLiteral(resourceName: "Portugal-Flag-icon"), imageV: #imageLiteral(resourceName: "Ghana-Flag-icon")),
       Matches(titleMatch: "GROUP H - EDUCATION CITY  🏟", homeName: "SKO", visitName: "GHA", vs: "X", dataTimeMatch: "MON 28/11 - 08H00", imageH: #imageLiteral(resourceName: "Korea-Flag-icon"), imageV: #imageLiteral(resourceName: "Ghana-Flag-icon")),
       Matches(titleMatch: "GROUP H - LUSAIL 🏟", homeName: "POT", visitName: "URU", vs: "X", dataTimeMatch: "MON 28/11 - 14H00", imageH: #imageLiteral(resourceName: "Portugal-Flag-icon"), imageV: #imageLiteral(resourceName: "Uruguay-Flag-icon")),
       Matches(titleMatch: "GROUP H - EEDUCATION CITY 🏟", homeName: "SKO", visitName: "POR", vs: "X", dataTimeMatch: "FRI 02/12 - 10H00", imageH: #imageLiteral(resourceName: "Korea-Flag-icon"), imageV: #imageLiteral(resourceName: "Portugal-Flag-icon")),
       Matches(titleMatch: "GROUP H - AL JANOUB 🏟", homeName: "GHA", visitName: "URU", vs: "X", dataTimeMatch: "FRI 02/12 - 10H00", imageH: #imageLiteral(resourceName: "Ghana-Flag-icon"), imageV: #imageLiteral(resourceName: "Uruguay-Flag-icon"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
    }
    
    @IBAction func tappedSegControl(_ sender: UISegmentedControl) {
    
        switch segControl.selectedSegmentIndex {
        case 0:
            rowsTodisplay = groupA
        case 1:
            rowsTodisplay = groupB
        case 2:
            rowsTodisplay = groupC
        case 3:
            rowsTodisplay = groupD
        case 4:
            rowsTodisplay = groupE
        case 5:
            rowsTodisplay = groupF
        case 6:
            rowsTodisplay = groupG
        default:
            rowsTodisplay = groupH
        }
        self.tableView.reloadData()
    }
    
    private func configTableView(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(MatchesTableViewCell.getNib(), forCellReuseIdentifier: MatchesTableViewCell.identifier)
    }
    
}

extension MatchesViewController: UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowsTodisplay.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MatchesTableViewCell.identifier, for: indexPath) as? MatchesTableViewCell
        cell?.titleMatchLabel.text = rowsTodisplay[indexPath.row].titleMatch
        cell?.homeNameTeam.text = rowsTodisplay[indexPath.row].homeName
        cell?.visitNameTeam.text = rowsTodisplay[indexPath.row].visitName
        cell?.vsLabel.text = rowsTodisplay[indexPath.row].vs
        cell?.dataTimeMAtch.text = rowsTodisplay[indexPath.row].dataTimeMatch
        cell?.imageHome.image = rowsTodisplay[indexPath.row].imageH
        cell?.imageVisit.image = rowsTodisplay[indexPath.row].imageV
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 133
    }
}

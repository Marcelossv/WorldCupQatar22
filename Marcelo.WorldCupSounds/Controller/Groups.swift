//
//  Groups.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 02/05/22.
//

import UIKit
class Groups: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    // #imageLiteral(resourceName:"EDUCATION1")
    
    var group:[Group] = [
        Group(nameGroup: "Group A", image: [#imageLiteral(resourceName:"Qtar"),#imageLiteral(resourceName:"Ecuador"),#imageLiteral(resourceName:"Senegal"),#imageLiteral(resourceName:"Netherlands-Flag-icon")], name: ["Qtar", "Ecuador", "Senegal", "Netherlands"]),
        Group(nameGroup: "Group B", image: [#imageLiteral(resourceName: "England-Flag-icon"),#imageLiteral(resourceName:"Iran-Flag-icon"),#imageLiteral(resourceName:"United-States-Flag-icon"),#imageLiteral(resourceName:"MicrosoftTeams-image (6)")], name: ["England", "IR Iran", "USA", "Wales"]),
        Group(nameGroup: "Group C", image: [#imageLiteral(resourceName: "Argentina-Flag-icon"),#imageLiteral(resourceName:"Saudi-Arabia-Flag-icon"),#imageLiteral(resourceName:"Mexico-Flag-icon"),#imageLiteral(resourceName:"Poland-Flag-icon")], name: ["Argentina","Saudi Arabia", "Mexico", "Poland"]),
        Group(nameGroup: "Group D", image: [#imageLiteral(resourceName: "France-Flag-icon"),#imageLiteral(resourceName:"MicrosoftTeams-image (6)"),#imageLiteral(resourceName:"Denmark-Flag-icon"),#imageLiteral(resourceName:"Tunisia-Flag-icon")], name: ["France","Australia", "Denmark", "Tunisia"]),
        Group(nameGroup: "Group E", image: [#imageLiteral(resourceName: "Spain-Flag-icon"),#imageLiteral(resourceName:"MicrosoftTeams-image (6)"),#imageLiteral(resourceName:"Germany-Flag-icon"),#imageLiteral(resourceName:"Japan-Flag-icon")], name: ["Spain","Costa Rica", "Germany", "Japan"]),
        Group(nameGroup: "Group F", image: [#imageLiteral(resourceName: "Belgium-Flag-icon"),#imageLiteral(resourceName:"Canada-Flag-icon"),#imageLiteral(resourceName:"Morocco-Flag-icon"),#imageLiteral(resourceName:"Croatian-Flag-icon")], name: ["Belgium","Canada", "Morocco", "Croatia"]),
        Group(nameGroup: "Group G", image: [#imageLiteral(resourceName: "Brazil"),#imageLiteral(resourceName:"Serbia-Flag-icon"),#imageLiteral(resourceName:"Switzerland-Flag-icon"),#imageLiteral(resourceName:"Cameroon-Flag-icon")], name: ["Brazil","Serbia", "Switzerland", "Cameroon"]),
        Group(nameGroup: "Group H", image: [#imageLiteral(resourceName: "Portugal-Flag-icon"),#imageLiteral(resourceName:"Ghana-Flag-icon"),#imageLiteral(resourceName:"Uruguay-Flag-icon"),#imageLiteral(resourceName:"Korea-Flag-icon")], name: ["Portugal","Ghana", "Uruguay", "Korea Republic"]),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
    }

    private func configTableView(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(GroupsCustomTableViewCell.getNib(), forCellReuseIdentifier: "GroupsCustomTableViewCell")
        self.tableView.register(InfoTeamTableViewCell.getNib(), forCellReuseIdentifier: "InfoTeamTableViewCell")
    }
    
}

extension Groups: UITableViewDelegate, UITableViewDataSource {
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return group.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return 4
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:GroupsCustomTableViewCell.identifier , for: indexPath) as? GroupsCustomTableViewCell
        cell?.imageProfile.image = group[indexPath.section].image[indexPath.row]
        cell?.nameLabel.text = group[indexPath.section].name[indexPath.row]
        
        switch indexPath.section{
        case 0:
            let imageTeam = infoTeamGroup0[indexPath.row ].imageTeam
            let teamTitle = infoTeamGroup0[indexPath.row ].nameTeam
            let teamText = infoTeamGroup0[indexPath.row ].labelTeam
            cell?.setupCell(imageTeam: imageTeam, teamTitle: teamTitle, teamText: teamText, vc: self)
        case 1:
            let imageTeam = infoTeamGroup1[indexPath.row ].imageTeam
            let teamTitle = infoTeamGroup1[indexPath.row ].nameTeam
            let teamText = infoTeamGroup1[indexPath.row ].labelTeam
            cell?.setupCell(imageTeam: imageTeam, teamTitle: teamTitle, teamText: teamText, vc: self)
        case 2:
            let imageTeam = infoTeamGroup2[indexPath.row ].imageTeam
            let teamTitle = infoTeamGroup2[indexPath.row ].nameTeam
            let teamText = infoTeamGroup2[indexPath.row ].labelTeam
            cell?.setupCell(imageTeam: imageTeam, teamTitle: teamTitle, teamText: teamText, vc: self)
        case 3:
            let imageTeam = infoTeamGroup3[indexPath.row ].imageTeam
            let teamTitle = infoTeamGroup3[indexPath.row ].nameTeam
            let teamText = infoTeamGroup3[indexPath.row ].labelTeam
            cell?.setupCell(imageTeam: imageTeam, teamTitle: teamTitle, teamText: teamText, vc: self)
        case 4:
            let imageTeam = infoTeamGroup4[indexPath.row ].imageTeam
            let teamTitle = infoTeamGroup4[indexPath.row ].nameTeam
            let teamText = infoTeamGroup4[indexPath.row ].labelTeam
            cell?.setupCell(imageTeam: imageTeam, teamTitle: teamTitle, teamText: teamText, vc: self)
        case 5:
            let imageTeam = infoTeamGroup5[indexPath.row ].imageTeam
            let teamTitle = infoTeamGroup5[indexPath.row ].nameTeam
            let teamText = infoTeamGroup5[indexPath.row ].labelTeam
            cell?.setupCell(imageTeam: imageTeam, teamTitle: teamTitle, teamText: teamText, vc: self)
        case 6:
            let imageTeam = infoTeamGroup6[indexPath.row ].imageTeam
            let teamTitle = infoTeamGroup6[indexPath.row ].nameTeam
            let teamText = infoTeamGroup6[indexPath.row ].labelTeam
            cell?.setupCell(imageTeam: imageTeam, teamTitle: teamTitle, teamText: teamText, vc: self)
        default:
            let imageTeam = infoTeamGroup7[indexPath.row ].imageTeam
            let teamTitle = infoTeamGroup7[indexPath.row ].nameTeam
            let teamText = infoTeamGroup7[indexPath.row ].labelTeam
            cell?.setupCell(imageTeam: imageTeam, teamTitle: teamTitle, teamText: teamText, vc: self)
        }
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return group[section].nameGroup
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 83
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    
}

    
    


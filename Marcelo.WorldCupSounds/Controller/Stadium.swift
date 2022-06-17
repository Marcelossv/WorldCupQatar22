//
//  ViewController.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 02/05/22.
//

import UIKit
import youtube_ios_player_helper

class Stadium
: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var stadium:[StadiumNames] = [
        StadiumNames(nameStadium: "Al Bayt Stadium", imageStadium: #imageLiteral(resourceName:"Stadium"), capacity: "👤60.000", city: "📍Al Khor", matchesPlanned: "Opening game and all matches through to the semi-finals"),
        
        StadiumNames( nameStadium: "Al Janoub Stadium", imageStadium: #imageLiteral(resourceName: "stadium3"), capacity: "👤40.000", city: "📍Al Wakrah", matchesPlanned: "Group matches and round of 16"),
        
        StadiumNames( nameStadium: "Al Thumama Stadium", imageStadium: #imageLiteral(resourceName: "Stadium 4"), capacity: "👤40.000", city: "📍Al Thumama", matchesPlanned: "Group matches and round of 16, and quarter finals"),
        
        StadiumNames( nameStadium: "Ahmad Bin Ali Stadium", imageStadium: #imageLiteral(resourceName:"Ahmad-Bin-Ali-Stadium"), capacity: "👤40.000", city: "📍Al Rayyan", matchesPlanned: "Group matches, round of 16"),
        
        StadiumNames( nameStadium: "Khalifa International Stadium", imageStadium: #imageLiteral(resourceName:"Screenshot-2021-06-24-at-16.07.45-1170x400"), capacity: "👤48.000", city: "📍Doha", matchesPlanned: "Group matches, round of 16, and play off for third place game "),
        
        StadiumNames( nameStadium: "Stadium 974", imageStadium: #imageLiteral(resourceName:"974"), capacity: "👤40.000", city: "📍Doha", matchesPlanned: "Group matches and round of 16"),
        
        StadiumNames( nameStadium: "Education City Stadium", imageStadium: #imageLiteral(resourceName:"EDUCATION1"), capacity: "👤45.350", city: "📍Al Rayyan", matchesPlanned: "Group matches, round of 16, and and quarter-finals"),
        
        StadiumNames( nameStadium: "Lusail Stadium", imageStadium: #imageLiteral(resourceName:"Lusail"), capacity: "👤86.250", city: "Lusail", matchesPlanned: "All matches through to the final match")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
        // Do any additional setup after loading the view.
    }

    private func configTableView(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(StadiumTableViewCell.getNib(), forCellReuseIdentifier: "StadiumTableViewCell")
    }

}

extension Stadium: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return stadium.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: StadiumTableViewCell.identifier, for: indexPath) as? StadiumTableViewCell
        cell?.setupCell(stadiumNames: StadiumNames(nameStadium: "", imageStadium: stadium[indexPath.section].imageStadium, capacity: stadium[indexPath.section].capacity, city:stadium[indexPath.section].city, matchesPlanned: stadium[indexPath.section].matchesPlanned))
        cell?.delegate = self

        return cell ?? UITableViewCell()
    }
     
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        382
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return stadium[section].nameStadium
    }
}

extension Stadium:StadiumTableViewCellDelegate{
    func tappedPLayedButton() {
        let vc = UIStoryboard(name:
        "Main", bundle: nil).instantiateViewController (withIdentifier: "ModalStadiumViewController") as? ModalStadiumViewController
        self.present(vc ?? UIViewController(), animated: true, completion: nil)
        
            
    }
    func swipeStadium(indexPath:IndexPath) -> String {
        switch indexPath.section{
        case 0:
            return ""
        default:
            return ""
        }
        
    }
    
}

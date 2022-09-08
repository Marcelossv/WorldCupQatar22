//
//  ViewController.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 02/05/22.
//

import UIKit

class StadiumViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var stadium:[Stadium] = [
        Stadium(nameStadium: "Al Bayt Stadium", imageStadium: #imageLiteral(resourceName:"Stadium"), capacity: "👤60.000", city: "📍Al Khor", matchesPlanned: "Opening game and all matches through to the semi-finals"),
        
        Stadium( nameStadium: "Al Janoub Stadium", imageStadium: #imageLiteral(resourceName: "stadium3"), capacity: "👤40.000", city: "📍Al Wakrah", matchesPlanned: "Group matches and round of 16"),
        
        Stadium( nameStadium: "Al Thumama Stadium", imageStadium: #imageLiteral(resourceName: "Stadium 4"), capacity: "👤40.000", city: "📍Al Thumama", matchesPlanned: "Group matches and round of 16, and quarter finals"),
        
        Stadium( nameStadium: "Ahmad Bin Ali Stadium", imageStadium: #imageLiteral(resourceName:"Ahmad-Bin-Ali-Stadium"), capacity: "👤40.000", city: "📍Al Rayyan", matchesPlanned: "Group matches, round of 16"),
        
        Stadium( nameStadium: "Khalifa International Stadium", imageStadium: #imageLiteral(resourceName:"Screenshot-2021-06-24-at-16.07.45-1170x400"), capacity: "👤48.000", city: "📍Doha", matchesPlanned: "Group matches, round of 16, and play off for third place game "),
        
        Stadium( nameStadium: "Stadium 974", imageStadium: #imageLiteral(resourceName:"974"), capacity: "👤40.000", city: "📍Doha", matchesPlanned: "Group matches and round of 16"),
        
        Stadium( nameStadium: "Education City Stadium", imageStadium: #imageLiteral(resourceName:"EDUCATION1"), capacity: "👤45.350", city: "📍Al Rayyan", matchesPlanned: "Group matches, round of 16, and and quarter-finals"),
        
        Stadium( nameStadium: "Lusail Stadium", imageStadium: #imageLiteral(resourceName:"Lusail"), capacity: "👤86.250", city: "Lusail", matchesPlanned: "All matches through to the final match")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
        // Do any additional setup after loading the view.
    }

    private func configTableView(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(StadiumTableViewCell.getNib(), forCellReuseIdentifier: StadiumTableViewCell.identifier)
    }
}

extension StadiumViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return stadium.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: StadiumTableViewCell.identifier, for: indexPath) as? StadiumTableViewCell
        cell?.setupCell(stadiumNames: Stadium(nameStadium: "", imageStadium: stadium[indexPath.section].imageStadium, capacity: stadium[indexPath.section].capacity, city:stadium[indexPath.section].city, matchesPlanned: stadium[indexPath.section].matchesPlanned))
        return cell ?? UITableViewCell()
    }
     
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        382
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return stadium[section].nameStadium
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presentModal(indexPath: indexPath)
    }
    
    private func presentModal(indexPath: IndexPath) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController (withIdentifier: "ModalStadiumViewController") as? ModalStadiumViewController
        let nav = UINavigationController(rootViewController: vc ?? UIViewController())
        nav.modalPresentationStyle = .pageSheet
        vc?.linkYoutube = showStadiumVideo(indexPath: indexPath)
        if let sheet = nav.sheetPresentationController {
            sheet.detents = [.medium()]
        }
        self.present(nav, animated: true, completion: nil)
    }
    
    private func showStadiumVideo(indexPath: IndexPath) -> String {
        switch indexPath.section {
        case 0:
            return "bJavR2NsGF4"
        case 1:
            return "70KJEOBZzsY"
        case 2:
            return "s7BT33Mmn_I"
        case 3:
            return "zUSSg81SG8I"
        case 4:
            return "3hCkWzGYc1M"
        case 5:
            return "CDgzV4youzY"
        case 6:
            return "1GoiYsy7H1A"
        default:
            return "-W_0f5ZLtQM"
        }
    }
}

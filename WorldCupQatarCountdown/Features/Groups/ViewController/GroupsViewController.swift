//
//  GroupsViewController.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 02/05/22.
//

import UIKit

final class GroupsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
    }

    private func configTableView(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(GroupsTableViewCell.getNib(), forCellReuseIdentifier: GroupsTableViewCell.identifier)
    }
    
}

extension GroupsViewController: UITableViewDataSource {
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return listGroup.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listGroup[section].countries.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: GroupsTableViewCell.identifier,
            for: indexPath) as? GroupsTableViewCell
        else {
            return UITableViewCell()
        }
        
        let country = listGroup[indexPath.section].countries[indexPath.row]
        cell.setupCell(.init(nameCountry: country.name, flag: country.flag))
        
        cell.accessoryType = .detailButton
        cell.tintColor = .red
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return listGroup[section].groupName
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 83
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
}

extension GroupsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let country = listGroup[indexPath.section].countries[indexPath.row]
        
        guard let teamInfoViewController = UIStoryboard(name: "TeamInfo", bundle: nil)
            .instantiateViewController(
                withIdentifier: "TeamInfoViewController"
            ) as? TeamInfoViewController else { return }
        
        teamInfoViewController.informationViewModel = .init(
            name: country.name, image: country.teamImage, information: country.information
        )
        present(teamInfoViewController, animated: true)
    }
    
}

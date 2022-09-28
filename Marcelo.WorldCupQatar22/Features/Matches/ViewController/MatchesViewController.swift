//
//  Matchs.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 04/05/22.
//

import UIKit

final class MatchesViewController: UIViewController {

    @IBOutlet weak var segControl: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
    }
    
    @IBAction func tappedSegControl(_ sender: UISegmentedControl) {
        self.tableView.reloadData()
    }
    
    private func configTableView() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.register(MatchesTableViewCell.getNib(), forCellReuseIdentifier: MatchesTableViewCell.identifier)
    }
    
}

extension MatchesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cupGames[segControl.selectedSegmentIndex].matches.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: MatchesTableViewCell.identifier, for: indexPath) as? MatchesTableViewCell
        else {
            return UITableViewCell ()
        }
        
        let match = cupGames[segControl.selectedSegmentIndex].matches[indexPath.row]
        cell.setupCell(matches: match)

        return cell
    }
    
}

extension MatchesViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 133
    }
    
}

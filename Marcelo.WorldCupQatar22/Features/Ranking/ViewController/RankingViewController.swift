//
//  Ranking.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 02/05/22.
//

import UIKit

final class RankingViewController: UIViewController {
    
    @IBOutlet private weak var segControl: UISegmentedControl!
    @IBOutlet private weak var tableView: UITableView!
    
//    lazy var service: FifaRankingAPI = {
//        return FifaRankingService()
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
    }
    
    private func configTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(RankingTableViewCell.getNib(), forCellReuseIdentifier: RankingTableViewCell.identifier)
        self.tableView.register(TopGoalTableViewCell.getNib(), forCellReuseIdentifier: TopGoalTableViewCell.identifier)
        self.tableView.register(PlayersTableViewCell.getNib(), forCellReuseIdentifier: PlayersTableViewCell.identifier)
        self.tableView.register(FifaTableViewCell.getNib(), forCellReuseIdentifier: FifaTableViewCell.identifier)
    }
    
//    private func getFifaRanking() {
//        service.getRanking { [weak self] response in
//            switch response {
//            case let .success(data):
//                fifaRanking = data
//                self?.tableView.reloadData()
//            case let .failure(error):
//                print("Erro na chamada da API - \(error.description)")
//            }
//        }
//    }
    
    private func modelCount() -> Int {
        switch segControl.selectedSegmentIndex {
        case 0:
            return medal.count
        case 1:
            return topGoal.count
        case 2:
            return player.count
        default:
            return rk.count
        }
    }

    @IBAction func tappedSegmentedControl(_ sender: UISegmentedControl) {
        if segControl.selectedSegmentIndex == 4 {
//            getFifaRanking()
        } else {
            self.tableView.reloadData()
        }
    }

}

extension RankingViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch segControl.selectedSegmentIndex {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: RankingTableViewCell.identifier, for: indexPath) as? RankingTableViewCell
            cell?.setupCell(medal: medal[indexPath.row])
            return cell ?? UITableViewCell()
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: TopGoalTableViewCell.identifier, for: indexPath) as?
            TopGoalTableViewCell
            cell?.setupCell(topGoal: topGoal[indexPath.row])
            return cell ?? UITableViewCell()
            
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: PlayersTableViewCell.identifier, for: indexPath) as? PlayersTableViewCell
            cell?.setupCell(player: player[indexPath.row])
            return cell ?? UITableViewCell()
            
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: FifaTableViewCell.identifier, for: indexPath) as? FifaTableViewCell
            cell?.setupCell(fifaRanking: rk[indexPath.row])
            return cell ?? UITableViewCell()
        }
    }

}

extension RankingViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        switch segControl.selectedSegmentIndex {
        case 0:
            return 92
        case 1:
            return 86
        case 2:
            return 70
        default:
            return 70
        }

    }
    
}

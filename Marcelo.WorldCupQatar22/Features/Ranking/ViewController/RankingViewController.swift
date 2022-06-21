//
//  Ranking.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 02/05/22.
//

import UIKit

protocol RankingDelegate: AnyObject{
    func sucess()
    func error()
}

class RankingViewController: UIViewController {

    
    @IBOutlet weak var segControl: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var labelTop: UILabel!
    
    weak var delegate: RankingDelegate?
    var service = Service()
    //Master Array
    lazy var goalTodisplay = topGoal
    // #imageLiteral(resourceName:"Screen Shot 2022-05-07 at 14.24.13")
    
    var fifaRaking: [Datum] = []
    
    var medal: [Winners] = [
        Winners(image: #imageLiteral(resourceName:"Brazil"), numberMedal: "5 (1958, 1962, 1970, 1994, 2002)"),
        Winners(image: #imageLiteral(resourceName:"Germany-Flag-icon"), numberMedal: "4 (1954, 1974, 1990, 2014)"),
        Winners(image: #imageLiteral(resourceName:"MicrosoftTeams-image (5)"), numberMedal: "4 (1934, 1938, 1982, 2006)"),
        Winners(image: #imageLiteral(resourceName:"Argentina-Flag-icon"), numberMedal: "2 (1978, 1986)"),
        Winners(image: #imageLiteral(resourceName:"France-Flag-icon"), numberMedal: "2 (1998, 2018)"),
        Winners(image: #imageLiteral(resourceName:"Uruguay-Flag-icon"), numberMedal: "2 (1930, 1950)"),
        Winners(image: #imageLiteral(resourceName:"England-Flag-icon"), numberMedal: "1 (1966)"),
        Winners(image: #imageLiteral(resourceName:"Spain-Flag-icon"), numberMedal: "1 (2010)")
    ]
    
    
    var topGoal: [Goals] = [
        Goals(image: #imageLiteral(resourceName: "Screen Shot 2022-05-07 at 14.24.13"), namePlayer: "🇩🇪 Klose (2002, 2006, 2010, 2014)", gols: "⚽️ 16"),
        Goals(image: #imageLiteral(resourceName: "ronaldo-nazario-lima"), namePlayer: "🇧🇷 Ronaldo (1994, 1998, 2002, 2006)  ", gols: "⚽️ 15"),
        Goals(image: #imageLiteral(resourceName: "Screen Shot 2022-05-07 at 14.22.16"), namePlayer: "🇩🇪 Gerd Müller (1970, 1974)", gols: "⚽️ 14"),
        Goals(image: #imageLiteral(resourceName: "fontaine2"), namePlayer: "🇫🇷 Just Fontaine (1958) ", gols: "⚽️ 13"),
        Goals(image: #imageLiteral(resourceName: "pele"), namePlayer: "🇧🇷 Pelé (1958, 1962, 1966, 1970)", gols: "⚽️ 12"),
        Goals(image: #imageLiteral(resourceName: "Sándor Kocsis"), namePlayer: "🇹🇯 Sándor Kocsis (1954)", gols: "⚽️ 11"),
        Goals(image: #imageLiteral(resourceName: "Jürgen-Klinsmann-alemanha"), namePlayer: "🇩🇪 Jurgen Klinsmann (1994, 1998)", gols: "⚽️ 11"),
        Goals(image: #imageLiteral(resourceName: "licensed-image"), namePlayer: "🇩🇪 Helmut Rahn (1954, 1958) ", gols: "⚽️ 10"),
        Goals(image: #imageLiteral(resourceName: "teeeeee"), namePlayer: "🇵🇪 Teófilo Cubillas (1970, 1978 e 1982)", gols: "⚽️ 10"),
        Goals(image: #imageLiteral(resourceName: "Screen Shot 2022-05-07 at 14.23.51"), namePlayer: "🇵🇱 Grzegorz Lato (1975, 1982) ", gols: "⚽️ 10")
    ]
    
    
   
    
    var player: [Player] = [
        Player(name: "Kylian Mbappé", age: "23", nation: "🇫🇷", valueMarket: "€160.00m"),
        Player(name: "Erling Haaland", age: "21", nation: "🇳🇴", valueMarket: "€150.00m"),
        Player(name: "Vinicius Junior", age: "21", nation: "🇧🇷", valueMarket: "€100.00m"),
        Player(name: "Mohamed Salah", age: "29", nation: "🇪🇬", valueMarket: "€100.00m"),
        Player(name: "Harry Kane", age: "28", nation: "🏴󠁧󠁢󠁥󠁮󠁧󠁿", valueMarket: "€100.00m"),
        Player(name: "Phil Foden", age: "21", nation: "🏴󠁧󠁢󠁥󠁮󠁧󠁿", valueMarket: "€90.00m"),
        Player(name: "Bruno Fernandes", age: "27", nation: "🇵🇹", valueMarket: "€90.00m"),
        Player(name: "Kevin De Bruyne", age: "30", nation: "🇧🇪", valueMarket: "€90.00m"),
        Player(name: "Neymar", age: "30", nation: "🇧🇷", valueMarket: "€90.00m"),
        Player(name: "Dusan Vlahovic", age: "22", nation: "🇷🇸", valueMarket: "€85.00m"),
        Player(name: "Joshua Kimmich", age: "27", nation: "🇩🇪", valueMarket: "€85.00m"),
        Player(name: "Raheem Sterling", age: "27", nation: "🏴󠁧󠁢󠁥󠁮󠁧󠁿", valueMarket: "€85.00m"),
        Player(name: "Romelu Lukaku", age: "28", nation: "🇧🇪", valueMarket: "€85.00m"),
        Player(name: "Pedri", age: "19", nation: "🇪🇸", valueMarket: "€80.00m"),
        Player(name: "Jadon Sancho", age: "22", nation: "🏴󠁧󠁢󠁥󠁮󠁧󠁿", valueMarket: "€80.00m"),
        Player(name: "Jack Grealish", age: "26", nation: "🏴󠁧󠁢󠁥󠁮󠁧󠁿", valueMarket: "€80.00m"),
        Player(name: "Sadio Mané", age: "30", nation: "🇸🇳", valueMarket: "€80.00m"),
        Player(name: "Heung - min Son", age: "29", nation: "🇰🇷", valueMarket: "€80.00m"),
        Player(name: "Jude Bellingham", age: "18", nation: "🏴󠁧󠁢󠁥󠁮󠁧󠁿", valueMarket: "€75.00m"),
        Player(name: "Declan Rice", age: "23", nation: "🏴󠁧󠁢󠁥󠁮󠁧󠁿", valueMarket: "€75.00m"),
        Player(name: "Mason Mount", age: "23", nation: "🏴󠁧󠁢󠁥󠁮󠁧󠁿", valueMarket: "€75.00m"),
        Player(name: "Rúben Dias", age: "18", nation: "🇵🇹", valueMarket: "€75.00m"),
        Player(name: "Bernardo Silva", age: "27", nation: "🇵🇹", valueMarket: "€75.00m"),
        Player(name: "Marquinhos", age: "27", nation: "🇧🇷", valueMarket: "€75.00m"),
        Player(name: "Bernardo Silva", age: "27", nation: "🇵🇹", valueMarket: "€75.00m"),
        Player(name: "Florian Wirtz", age: "19", nation: "🇩🇪", valueMarket: "€70.00m"),
        Player(name: "Joāo Felix", age: "22", nation: "🇵🇹", valueMarket: "€70.00m"),
        Player(name: "Alphonso Davies", age: "21", nation: "🇨🇦", valueMarket: "€70.00m"),
        Player(name: "Lautaro Martinez", age: "24", nation: "🇦🇷", valueMarket: "€70.00m"),
        Player(name: "Achraf Hakimi", age: "23", nation: "🇲🇦", valueMarket: "€70.00m"),
        Player(name: "Rodri", age: "25", nation: "🇪🇸", valueMarket: "€70.00m"),
        Player(name: "Mikel Oyarzabal", age: "25", nation: "🇪🇸", valueMarket: "€70.00m"),
        Player(name: "Federico Chiesa", age: "24", nation: "🇮🇹", valueMarket: "€70.00m"),
        Player(name: "Frenkie de Jong", age: "24", nation: "🇳🇱", valueMarket: "€70.00m"),
        Player(name: "Matthijs de Ligt", age: "22", nation: "🇳🇱", valueMarket: "€70.00m"),
        Player(name: "Kai Havertz", age: "22", nation: "🇩🇪", valueMarket: "€75.00m"),
        Player(name: "Alisson", age: "29", nation: "🇧🇷", valueMarket: "€60.00m"),
        Player(name: "Éder Militão", age: "24", nation: "🇧🇷", valueMarket: "€60.00m"),
        Player(name: "Eduardo Camavinga", age: "19", nation: "🇫🇷", valueMarket: "€55.00m"),
        Player(name: "Piotr Zielinski", age: "27", nation: "🇵🇱", valueMarket: "€50.00m"),
        Player(name: "Casemiro", age: "30", nation: "🇧🇷", valueMarket: "€50.00m"),
        Player(name: "Robert Lewandowski", age: "33", nation: "🇵🇱", valueMarket: "€50.00m"),
        Player(name: "Kanté", age: "31", nation: "🇫🇷", valueMarket: "€55.00m"),
        Player(name: "Virgil van Dijk", age: "30", nation: "🇳🇱", valueMarket: "€55.00m"),
        Player(name: "Lionel Messi", age: "34", nation: "🇦🇷", valueMarket: "€60.00m"),
        Player(name: "Rodrygo", age: "21", nation: "🇧🇷", valueMarket: "€40.00m"),
        Player(name: "Cristiano Ronaldo", age: "37", nation: "🇵🇹", valueMarket: "€35.00m"),
        Player(name: "Edouard Mendy", age: "30", nation: "🇸🇳", valueMarket: "€32.00m"),
        Player(name: "Karim Benzema", age: "34", nation: "🇫🇷", valueMarket: "€25.00m"),


    ]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
        self.configLabelTop()
        // Do any additional setup after loading the view.
        
        
    }

    
    @IBAction func tappedSegmentedControl(_ sender: UISegmentedControl) {
        
        switch segControl.selectedSegmentIndex {
        case 0:
            goalTodisplay = topGoal
        case 1:
            goalTodisplay = topGoal
        case 2:
            goalTodisplay = topGoal
        default:
            goalTodisplay = topGoal
    }
        self.configLabelTop()
        self.tableView.reloadData()

    }
    
    private func configTableView(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(RankingTableViewCell.getNib(), forCellReuseIdentifier: "RankingTableViewCell")
        self.tableView.register(TopGoalTableViewCell.getNib(), forCellReuseIdentifier: "TopGoalTableViewCell")
        self.tableView.register(PlayersTableViewCell.getNib(), forCellReuseIdentifier: "PlayersTableViewCell")
        self.tableView.register(FifaTableViewCell.getNib(), forCellReuseIdentifier: "FifaTableViewCell")
        self.tableView.reloadData()
    }
    
    private func configLabelTop(){
        if segControl.selectedSegmentIndex == 3 {
            labelTop.isHidden = false
        }else{
            labelTop.isHidden = true
        }
        
    }

    func getFifaRanking() {
        service.getRanking { sucess, error in
            if let sucess = sucess{
                self.fifaRaking = sucess
                self.delegate?.sucess()
            }else{
                self.delegate?.error()
            }
                
        }
            
        
    }
    
    
}
extension RankingViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch segControl.selectedSegmentIndex {
        case 0:
            return medal.count
        case 1:
            return topGoal.count
        case 2:
            return player.count
        default:
            self.getFifaRanking()
            return fifaRaking.count
    }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            switch segControl.selectedSegmentIndex {
            case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: RankingTableViewCell.identifier, for: indexPath) as? RankingTableViewCell
                cell?.setupCell(medal: medal[indexPath.row])
        return cell ?? UITableViewCell()

            case 1:
            let cell2 = tableView.dequeueReusableCell(withIdentifier: TopGoalTableViewCell.identifier, for: indexPath) as?
                TopGoalTableViewCell
                cell2?.setupCell(topGoal: topGoal[indexPath.row])
           return cell2 ?? UITableViewCell()
            
           case 2:
                let cell3 = tableView.dequeueReusableCell(withIdentifier: PlayersTableViewCell.identifier, for: indexPath) as? PlayersTableViewCell
                cell3?.setupCell(player: player[indexPath.row])
            return cell3 ?? UITableViewCell()
           
            default:
                let cell4 = tableView.dequeueReusableCell(withIdentifier: FifaTableViewCell.identifier, for: indexPath) as? FifaTableViewCell
                cell4?.setupCell(data: fifaRaking[indexPath.row])
            return cell4 ?? UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch segControl.selectedSegmentIndex {
        case 0:
            return 98
        case 1:
            return 86
        case 2:
            return 46
        default:
            return 53
    }
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch segControl.selectedSegmentIndex {
        case 0:
            return ""
        case 1:
            return ""
        case 2:
            return "                                       Age            Nat             Market Value"
        default:
            return "                                 Avg.Age           Total Value        Points"
    }
}
}

extension RankingViewController:RankingDelegate {
    func sucess() {
        DispatchQueue.main.async {
            self.configTableView()
        }
    }
    
    func error() {
        print("deu ruim")
    }
    
    
    
}

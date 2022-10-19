//
//  ViewController.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 02/05/22.
//

import UIKit

final class StadiumViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
    }

    private func configTableView(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(StadiumTableViewCell.getNib(), forCellReuseIdentifier: StadiumTableViewCell.identifier)
    }

    private func presentModal(linkYoutube: String) {
        guard let modalStadiumViewController = UIStoryboard(name: "YTPlayer", bundle: nil)
            .instantiateViewController(withIdentifier: "YTPlayerViewController") as? YTPlayerViewController else { return }
        let navigationController = UINavigationController(rootViewController: modalStadiumViewController)
        
        modalStadiumViewController.linkYoutube = linkYoutube
        navigationController.modalPresentationStyle = .pageSheet
        navigationController.sheetPresentationController?.detents = [.medium()]
        
        present(navigationController, animated: true)
    }
    
}

extension StadiumViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return stadiumList.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: StadiumTableViewCell.identifier, for: indexPath
        ) as? StadiumTableViewCell else {
            return UITableViewCell ()
        }
        
        let stadium = stadiumList[indexPath.section]
        cell.setupCell(
            .init(
                imageStadium: stadium.image,
                capacity: stadium.capacity,
                city: stadium.city,
                matchesPlanned: stadium.matchesPlanned
            )
        )
        
        return cell
    }
     
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        382
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return stadiumList[section].name
    }
        
}


extension StadiumViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let youtubeLink = stadiumList[indexPath.section].youtubeLink

        presentModal(linkYoutube: youtubeLink)
    }
    
}

//
//  Player.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 07/05/22.
//

import Foundation
import UIKit

struct Player {
    let image: UIImage
    let name: String
    let age: String
    let nation: String
    let valueMarket: String
}

let player: [Player] = [
    Player(image: #imageLiteral(resourceName: "Kylian mb"), name: "Kylian Mbappé", age: "23", nation: "🇫🇷", valueMarket: "€160.00m"),
    Player(image: #imageLiteral(resourceName: "haaland"), name: "Erling Haaland", age: "22", nation: "🇳🇴", valueMarket: "€150.00m"),
    Player(image: #imageLiteral(resourceName: "vini JR"), name: "Vinicius Junior", age: "22", nation: "🇧🇷", valueMarket: "€120.00m"),
    Player(image: #imageLiteral(resourceName: "pedri"), name: "Pedri", age: "19", nation: "🇪🇸", valueMarket: "€90.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 01.29.35"), name: "Jude Bellingham", age: "19", nation: "🏴󠁧󠁢󠁥󠁮󠁧󠁿", valueMarket: "€90.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 01.29.41"), name: "Phil Foden", age: "22", nation: "🏴󠁧󠁢󠁥󠁮󠁧󠁿", valueMarket: "€90.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 01.29.48"), name: "Mohamed Salah", age: "30", nation: "🇪🇬", valueMarket: "€90.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 01.29.58"), name: "Harry Kane", age: "29", nation: "🏴󠁧󠁢󠁥󠁮󠁧󠁿", valueMarket: "€90.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 01.30.08"), name: "Dusan Vlahovic", age: "22", nation: "🇷🇸", valueMarket: "€85.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 01.30.23"), name: "Bruno Fernandes", age: "28", nation: "🇵🇹", valueMarket: "€85.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 01.30.29"), name: "Kevin De Bruyne", age: "31", nation: "🇧🇪", valueMarket: "€85.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.10.21"), name: "Jamal Musiala", age: "19", nation: "🇩🇪", valueMarket: "€80.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.11.58"),name: "Declan Rice", age: "23", nation: "🏴󠁧󠁢󠁥󠁮󠁧󠁿", valueMarket: "€80.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.14.07"),name: "Trent Arnold", age: "24", nation: "🏴󠁧󠁢󠁥󠁮󠁧󠁿", valueMarket: "€80.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.14.58"),name: "Bernardo Silva", age: "28", nation: "🇵🇹", valueMarket: "€80.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.16.10"),name: "Joshua Kimmich", age: "27", nation: "🇩🇪", valueMarket: "€80.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.16.17"),name: "Antony", age: "22", nation: "🇧🇷", valueMarket: "€75.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.18.08"),name: "Lautaro Martinez", age: "25", nation: "🇦🇷", valueMarket: "€75.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.20.45"),name: "Rúben Dias", age: "25", nation: "🇵🇹", valueMarket: "€75.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.21.50"),name: "Heung - min Son", age: "30", nation: "🇰🇷", valueMarket: "€75.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.21.57"),name: "Neymar", age: "30", nation: "🇧🇷", valueMarket: "€75.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.29.27"),name: "Mason Mount", age: "23", nation: "🏴󠁧󠁢󠁥󠁮󠁧󠁿", valueMarket: "€75.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.22.08"), name: "Gavi", age: "18", nation: "🇪🇸", valueMarket: "€70.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.22.28"),name: "João Félix", age: "22", nation: "🇵🇹", valueMarket: "€70.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.27.58"), name: "Rodrygo", age: "21", nation: "🇧🇷", valueMarket: "€70.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.32.13"),name: "Raheem Sterling", age: "27", nation: "🏴󠁧󠁢󠁥󠁮󠁧󠁿", valueMarket: "€70.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.28.05"),name: "Marquinhos", age: "28", nation: "🇧🇷", valueMarket: "€70.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.28.19"),name: "Romelu Lukaku", age: "29", nation: "🇧🇪", valueMarket: "€70.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.36.08.png"),name: "Thibaut Courtois", age: "30", nation: "🇧🇪", valueMarket: "€60.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.28.31"),name: "G. Jesus", age: "25", nation: "🇧🇷", valueMarket: "€65.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.35.20"), name: "Éder Militão", age: "24", nation: "🇧🇷", valueMarket: "€60.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.35.49"), name: "Frenkie de Jong", age: "25", nation: "🇳🇱", valueMarket: "€60.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.36.01"), name: "Sadio Mané", age: "30", nation: "🇸🇳", valueMarket: "€60.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.46.53"), name: "Alisson", age: "29", nation: "🇧🇷", valueMarket: "€60.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.36.19"), name: "Eduardo Camavinga", age: "19", nation: "🇫🇷", valueMarket: "€55.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.48.04"), name: "Casemiro", age: "30", nation: "🇧🇷", valueMarket: "€50.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.47.58"), name: "Lionel Messi", age: "35", nation: "🇦🇷", valueMarket: "€50.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.48.27"), name: "Lewandowski", age: "33", nation: "🇵🇱", valueMarket: "€50.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.56.07"), name: "Karim Benzema", age: "34", nation: "🇫🇷", valueMarket: "€30.00m"),
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 23.57.06"), name: "Cristiano Ronaldo", age: "37", nation: "🇵🇹", valueMarket: "€20.00m"),
    
    
    

    
    
    
    






   



















//
//

   









]

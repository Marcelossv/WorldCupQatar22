//
//  Player.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 07/05/22.
//

import Foundation

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
    Player(image: #imageLiteral(resourceName: "Screen Shot 2022-10-19 at 01.30.29"), name: "Jamal Musiala", age: "19", nation: "🇩🇪", valueMarket: "€85.00m"),
    
    



//    Player(image:#imageLiteral(),name: "Joshua Kimmich", age: "27", nation: "🇩🇪", valueMarket: "€80.00m"),
//    Player(image:#imageLiteral(),name: "Bernardo Silva", age: "27", nation: "🇵🇹", valueMarket: "€80.00m"),
//    Player(image:#imageLiteral(),name: "Trent Arnold", age: "24", nation: "🏴󠁧󠁢󠁥󠁮󠁧󠁿", valueMarket: "€80.00m"),
//    Player(image:#imageLiteral(),name: "Declan Rice", age: "23", nation: "🏴󠁧󠁢󠁥󠁮󠁧󠁿", valueMarket: "€75.00m"),
//    Player(image:#imageLiteral(),name: "Antony", age: "22", nation: "🇧🇷", valueMarket: "€75.00m"),
//    Player(image:#imageLiteral(),name: "Lautaro Martinez", age: "24", nation: "🇦🇷", valueMarket: "€75.00m"),
//    Player(image:#imageLiteral(),name: "Rúben Dias", age: "25", nation: "🇵🇹", valueMarket: "€75.00m"),
//    Player(image:#imageLiteral(),name: "Mason Mount", age: "23", nation: "🏴󠁧󠁢󠁥󠁮󠁧󠁿", valueMarket: "€75.00m"),
//    Player(image:#imageLiteral(),name: "Heung - min Son", age: "30", nation: "🇰🇷", valueMarket: "€75.00m"),
//    Player(image:#imageLiteral(),name: "Neymar", age: "30", nation: "🇧🇷", valueMarket: "€75.00m"),
//    Player(image:#imageLiteral(), name: "Rodrygo", age: "21", nation: "🇧🇷", valueMarket: "€70.00m"),
//    Player(image:#imageLiteral(),name: "João Félix", age: "22", nation: "🇵🇹", valueMarket: "€70.00m"),
//    Player(image:#imageLiteral(),name: "Raheem Sterling", age: "27", nation: "🏴󠁧󠁢󠁥󠁮󠁧󠁿", valueMarket: "€70.00m"),
//    Player(image:#imageLiteral(),name: "Romelu Lukaku", age: "29", nation: "🇧🇪", valueMarket: "€70.00m"),
//    Player(image:#imageLiteral(),name: "Marquinhos", age: "27", nation: "🇧🇷", valueMarket: "€70.00m"),
//    Player(image:#imageLiteral(), name: "Gavi", age: "18", nation: "🇪🇸", valueMarket: "€70.00m"),
//    Player(image:#imageLiteral(),name: "G. Jesus", age: "25", nation: "🇧🇷", valueMarket: "€65.00m"),
//    Player(image:#imageLiteral(), name: "Éder Militão", age: "24", nation: "🇧🇷", valueMarket: "€60.00m"),
//    Player(image:#imageLiteral(), name: "Sadio Mané", age: "30", nation: "🇸🇳", valueMarket: "€60.00m"),
//    Player(image:#imageLiteral(), name: "Casemiro", age: "30", nation: "🇧🇷", valueMarket: "€50.00m"),
//    Player(image:#imageLiteral(), name: "Lionel Messi", age: "35", nation: "🇦🇷", valueMarket: "€50.00m"),
//    Player(image:#imageLiteral(), name: "Karim Benzema", age: "34", nation: "🇫🇷", valueMarket: "€30.00m")
//    Player(image:#imageLiteral(), name: "Cristiano Ronaldo", age: "37", nation: "🇵🇹", valueMarket: "€20.00m"),
//
//

   



//    Player(image:#imageLiteral(), name: "Federico Chiesa", age: "24", nation: "🇮🇹", valueMarket: "€70.00m"),
//    Player(image:#imageLiteral(), name: "Frenkie de Jong", age: "24", nation: "🇳🇱", valueMarket: "€70.00m"),
//    Player(image:#imageLiteral(), name: "Matthijs de Ligt", age: "22", nation: "🇳🇱", valueMarket: "€70.00m"),
//    Player(image: #imageLiteral(),name: "Kai Havertz", age: "22", nation: "🇩🇪", valueMarket: "€75.00m"),
//    Player(image:#imageLiteral(), name: "Alisson", age: "29", nation: "🇧🇷", valueMarket: "€60.00m"),
//    Player(image:#imageLiteral(), name: "Casemiro", age: "30", nation: "🇧🇷", valueMarket: "€50.00m"),
//
//
//    Player(image:#imageLiteral(), name: "Eduardo Camavinga", age: "19", nation: "🇫🇷", valueMarket: "€55.00m"),
//    Player(image:#imageLiteral(), name: "Piotr Zielinski", age: "27", nation: "🇵🇱", valueMarket: "€50.00m"),
//
//    Player(image:#imageLiteral(), name: "Robert Lewandowski", age: "33", nation: "🇵🇱", valueMarket: "€50.00m"),
//    Player(image:#imageLiteral(), name: "Kanté", age: "31", nation: "🇫🇷", valueMarket: "€55.00m"),
//    Player(image:#imageLiteral(), name: "Virgil van Dijk", age: "30", nation: "🇳🇱", valueMarket: "€55.00m"),
//
//
//    Player(image:#imageLiteral(), name: "Edouard Mendy", age: "30", nation: "🇸🇳", valueMarket: "€32.00m"),

]

//
//  CountryInformation.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 10/05/22.
//

import UIKit

struct CountryInformation {
    let name: String
    let flag: UIImage
    let teamImage: UIImage
    let information: String
}

let listGroup = [
    Group(
        groupName: "Group A",
        countries: [
            CountryInformation(
                name: "Qatar",
                flag: UIImage(named: "qtarFlag") ?? UIImage(),
                teamImage: UIImage(named: "qatarTeam") ?? UIImage(),
                information: "While early tournaments qualify for the first draw that all other times expect, Qatar seems to have something to do with making deep runs. The winners of the 2019 Asian Cup reached the semifinals of the Gold Cup and the Arab Cup in 2021 and, therefore, want to assert their command of the field in the World Cup. Recent results against the opposition released, however, that will be released most of the time.\n\nProbable Team - (5-3-2):\nAl Sheeb; Ro-Ro, Al-Rawi, Salman, Hassan, Ahmed; Hatem, Boudiaf, Al-Haydos; Ali, Afif."
            ),
            CountryInformation(
                name: "Ecuador",
                flag: UIImage(named: "ecuadorFlag") ?? UIImage(),
                teamImage: UIImage(named: "ecuadorTeam") ?? UIImage(),
                information: "Youngest team in the CONMEBOL qualifiers, Ecuador is considered a top team in South America and proved that by qualifying in fourth place. Their best plans are undoubtedly ahead of them, but a good World Cup in 2022 could be important for the South American team. Players to watch include Bayer Leverkusen defender Piero Hincapie and Brighton midfielder Moises Caicedo.\n\nProbable Team - (4-3-3):\nDominguez; Preciado, Porozo, Hincapié, Estupiñan; Franco, Gruezo, Caicedo; Plata, Valencia, Ibarra."
            ),
            CountryInformation(
                name: "Senegal",
                flag: UIImage(named: "senegalFlag") ?? UIImage(),
                teamImage: UIImage(named: "senegalTeam") ?? UIImage(),
                information: "Newly African champions Senegal secured their place in Qatar with a dramatic penalty shootout victory over Egypt. With the likes of Sadio ManÉ, Edouard Mendy and Kalidou Koulibaly to call up, they are arguably the strongest African nation at the World Cup and have the recent experience of winning a tournament to help them too.\n\nProbable Team - (4-3-3):\nMendy; Sabaly, Koulibaly, Diallo, Ballo-Touré; Idrissa Gueye, Pape Gueye, Matar Sarr; Mané, Dia, Ismalia Sarr."
            ),
            CountryInformation(
                name: "Netherlands",
                flag: UIImage(named: "netherlandsFlag") ?? UIImage(),
                teamImage: UIImage(named: "netherlandsTeam") ?? UIImage(),
                information: "After missing out on the 2018 World Cup, the Netherlands are back on the global stage and looking to make up for lost time. As with his last World Cup appearance, Louis van Gaal is in charge, with the former Manchester United manager having overseen a period of stabilization following the team's struggles following the departure of Ronald Koeman in 2020. In Virgil van Dijk and Matthijs de Ligt, the selection has arguably the best pairing of defenders in the competition, but they will depend on Memphis Depay to score the goals in the competition.\n\nProbable Team - (5-3-2):\nCillessen; Dumfries, Timber, Van Dijk, Aké, Blind; De Jong, Klaassen, Berghuis; Depay, Bergwijn."
            )
        ]
    ),
    Group(
        groupName: "Group B",
        countries: [
            CountryInformation(
                name: "England",
                flag: UIImage(named: "englandFlag") ?? UIImage(),
                teamImage: UIImage(named: "englandTeam") ?? UIImage(),
                information: "While there are still some uncertainties about Gareth Southgate's defensive style, there is no doubt that England continue to grow under his management. The fact that players with the ability of Phil Foden and Jude Bellingham are still unsure of their starting roles shows just how strong the roster Southgate has to choose from. After a semi-final defeat in 2018 and the Euro 2020 final on penalties, the 2022 World Cup could realistically end England's 56-year wait for a major trophy.\n\nProbable Team - (4-2-3-1):\nPickford; Walker (Trippier), Stones, Dier, Chilwell; Rice, Henderson; Foden, Mount, Sterling; Kane"
            ),
            CountryInformation(
                name: "IR Iran",
                flag: UIImage(named: "iranFlag") ?? UIImage(),
                teamImage: UIImage(named: "iranTeam") ?? UIImage(),
                information: "Iran has only lost two World Cups since 1998 and will be there again. This time, after leading their group in the third round of the Asian Qualifiers. They have won eight of their 10 games and conceded just four goals as they did relatively light work to earn a spot in Qatar. His hopes of making it through the rounds will now likely be with Bayer Leverkusen striker Sardar Azmoun, who came out of international retirement after missing the competition in 2018.\n\nProbable Team - (4-3-3):\nBeiranvand; Moharrami, Hosseini, Mohammadi, Hajsafi; Ghoddos, Amiri, Nourollahi; Taremi, Ansarifard, Azmoun."
            ),
            CountryInformation(
                name: "USA",
                flag: UIImage(named: "unitedStatesFlag") ?? UIImage(),
                teamImage: UIImage(named: "unitedStatesTeam") ?? UIImage(),
                information: "Having failed to qualify in 2018, the United States managed to correct that mistake by returning to the World Cup four years later. Despite the disappointing result in the qualifiers, Gregg Berhalter's team made their way through the final games in March. Probably one of the youngest teams in Qatar and with question marks defending against high-quality opponents, it would be asking too much for the United States to go far this time, but the signs are good for the 2026 co-hosts to be among the favorites in home next time.\n\nProbable Team - (4-3-3):\nTurner; Dest, Zimmerman, Richards, Robinson; McKennie, Adams, Musah; Pulisic, Ferreira, Weah."
            ),
            CountryInformation(
                name: "Wales",
                flag: UIImage(named: "walesFlag") ?? UIImage(),
                teamImage: UIImage(named: "walesTeam") ?? UIImage(),
                information: "The Wales team has achieved a historic ranking after 64 years since the last (and only) participation in the world cup. We are living through what is perhaps the best phase in the history of the country in football, with its star, Gareth Bale, even though he has already passed his peak, with a lot of desire to play for the national team. At Euro 2016, Wales made history and reached the semi-final, in which they were eliminated by Portugal. For some time now, the team has cooled, not qualifying for the 2018 World Cup, but having a great campaign in the qualifiers for the Qatar Cup and passing in the playoffs against Ukraine.In the Nations League, however, Wales ended up at the bottom of the group and was relegated to League B, which is understandable given the difficulty of the group and the “hangover” after qualifying for the Cup. Bale is the backbone of this team, which also has a great goalkeeper in Hennessey, as well as great wingers, especially Brennan Johnson on the right.\n\nProbable Team - (3-4-3):\nHennessey; Ampadu, Rodon, Davies; Roberts, Allen, Ramsey, N Williams; Bale, Moore, James."
            )
        ]
    ),
    Group(
        groupName: "Group C",
        countries: [
            CountryInformation(
                name: "Argentina",
                flag: UIImage(named: "argentinaFlag") ?? UIImage(),
                teamImage: UIImage(named: "argentinaTeam") ?? UIImage(),
                information: "Lionel Messi may have finally clinched a title with his national team by winning the Copa America in 2021, but there are some who believe his legacy won't really be complete if he doesn't win a World Cup before the end of his career. The upcoming Cup, then, presents what will likely be the six-time Ballon d'Or winner's last chance to win, and the signs are pretty positive a year into the tournament. Lionel Scaloni has overseen a change of culture since taking charge of the Albiceleste, which in turn has revitalized Messi's love for his national team and while there are doubts as to whether his defense can withstand some of the best attacks in the world, he there are enough players at the other end of the field who can decide matches.\n\nProbable Team - (4-3-3):\nE. Martinez; Molina, Otamendi, Romero, Tagliafico; De Paul, Paredes, Lo Celso; Messi, Lautaro Martinez, Di Maria."
            ),
            CountryInformation(
                name: "Saudi Arabia",
                flag: UIImage(named: "saudiArabiaFlag") ?? UIImage(),
                teamImage: UIImage(named: "saudiArabiaTeam") ?? UIImage(),
                information: "Saudi Arabia is back in the World Cup. This will be the sixth participation of the selection, since the first classification in 1994.  Still, he will have to go further to match his debut performance, reaching the round of 16, Despite leading the last group of the qualifiers, Saudi Arabia struggled to score goals during the qualifiers, having scored only 12 times in 10 matches. That will probably be their challenge in Qatar as well.\n\nProbable Team - (4-2-3-1):\nAl-Owais; Al-Ghanam, Al-Bulaihi, Al-Amri, Al-Shahrani; Al-Faraj, Otayf; Al-Muwallad, Bahebri, Al-Dawsari; Buraikan."
            ),
            CountryInformation(
                name: "Mexico",
                flag: UIImage(named: "mexicoFlag") ?? UIImage(),
                teamImage: UIImage(named: "mexicoTeam") ?? UIImage(),
                information: "A team full of experience. In fact, the question mark over this team from Mexico is whether it will be on a downward curve in Qatar. Furthermore, the team struggled to score goals throughout qualifying, scoring just 17 times in 14 matches as Raúl Jiménez has not looked like the same player since returning from his severe head injury. Recent defeats to the United States have also led to doubts about their status as Concacaf's top team. \n\nProbable Team - (4-3-3):\nOchoa; Sanchez, Moreno, Montes, Gallardo; Guardado, Herrera, Alvarez; Lainez, Jimenez, Lozano."
            ),
            CountryInformation(
                name: "Poland",
                flag: UIImage(named: "polandFlag") ?? UIImage(),
                teamImage: UIImage(named: "polandTeam") ?? UIImage(),
                information: "Arguably the best player in the world in recent years, it would have looked wrong had Robert Lewandowski not been given the chance to score in a World Cup match. As might be expected, he scored in Poland's win over Sweden in the play-offs, and now they will look to learn the lessons of the last two disappointing tournaments, where they were knocked out in the group stage on both occasions. Despite that, given Lewandowski's presence, they will be the third pot team that everyone else will want to avoid.\n\nProbable Team - (3-4-2-1):\nSzczesny; Bednarek, Glik, Kiwior; Frankowski, Krychowiak, Linetty, Grosicki; Zielinski, Szymanski; Lewandowski."
            )
        ]
    ),
    Group(
        groupName: "Group D",
        countries: [
            CountryInformation(
                name: "France",
                flag: UIImage(named: "franceFlag") ?? UIImage(),
                teamImage: UIImage(named: "franceTeam") ?? UIImage(),
                information: "Although they fell far short of expectations at Euro 2020, France still heads to Qatar with the strongest team of any competing nation and as such are favorites to defend the title they won in 2018. Kylian Mbappé and Karim Benzema have shown in recent months that they are building a formidable relationship in attack. Still, the only thing that could stop the Nations League winners in the competition is the conservative nature of their coach, Didier Deschamps. \n\nProbable Team - (3-4-1-2):\nLloris; Koundé, Varane, L. Hernandez; Pavard, Camavinga, Tchouameni, T. Hernandez; Griezmann; Benzema, Mbappé."
            ),
            CountryInformation(
                name: "Australia",
                flag: UIImage(named: "australiaFlag") ?? UIImage(),
                teamImage: UIImage(named: "australiaTeam") ?? UIImage(),
                information: "Australia's national team doesn't have any great players on the world stage. Because of this, coach Graham Arnold usually uses a 4-1-4-1 formation, always abusing aerial plays. The most important name in the Australian national team is currently midfielder Aaron Mooy, a player who plays for Celtic, from Scotland. \n\nProbable Team - (4-2-3-1):\nRyan; Atkinson, Sainsbury, Souttar, Behich; Irvine, Mooy; Hrustic, Rogic, Leckie; Maclaren."
            ),
            CountryInformation(
                name: "Denmark",
                flag: UIImage(named: "denmarkFlag") ?? UIImage(),
                teamImage: UIImage(named: "denmarkTeam") ?? UIImage(),
                information: "The Euro 2020 surprise team maintained the momentum they built over the summer and only conceded their first goal in World Cup qualifiers after their spot in Qatar was confirmed. Kasper Hjulmand is emerging as one of the most brilliant coaches in international football, and now he has Christian Eriksen back at his disposal following the ace's triumphant return to football in the early months of 2022. Combine Eriksen's attacking prowess and Denmark's famous defense, and a shot at the playoffs isn't out of the question. \n\nProbable Team - (4-3-3):\nSchmeichel; Kristensen, Andersen, Christensen, Maehle; Delaney, Hojbjerg, Eriksen; Skov Olsen, Dolberg, Damsgaard."
            ),
            CountryInformation(
                name: "Tunisia",
                flag: UIImage(named: "tunisiaFlag") ?? UIImage(),
                teamImage: UIImage(named: "tunisiaTeam") ?? UIImage(),
                information: "Rarely fun to watch – six of the last seven games have not had more than one goal scored – but Tunisia continue to do a fine job when it comes to World Cup qualification. They have already entered the competition on five of the last seven occasions, although they have not yet made it past the group stage. If they want to resist this trend in 2022, they will have to build a solid defense, but even then, that might not be enough. \n\nProbable Team - (4-3-3):\nDahmen; Drager, Bronn, Talbi, Ben Ouanes; Chalaali, Laidouni, Skhiri; Msakni, Jaziri, Khazri"
            )
        ]
    ),
    Group(
        groupName: "Group E",
        countries: [
            CountryInformation(
                name: "Spain",
                flag: UIImage(named: "spainFlag") ?? UIImage(),
                teamImage: UIImage(named: "spainTeam") ?? UIImage(),
                information: "After reaching the Euro 2020 semi-final and the Nations League final, Spain is certainly heading in the right direction with Luis Enrique. While the former Barcelona manager continues to test and change his squad from game to game, there is a sense that he is building a deep pool of players from which he can select the fittest when the World Cup rolls around. Until then, Pedri and Gavi are expected to have another 12 months of experience, while Ansu Fati may have overlooked the injury problems that have plagued him since 2020. \n\nProbable Team - (4-3-3):\nUnai Simon; Carvajal, Garcia, Laporte, Alba; Busquets, Koke, Pedri; Sarabia, Morata, Torres."
            ),
            CountryInformation(
                name: "Costa Rica",
                flag: UIImage(named: "costaRicaFlag") ?? UIImage(),
                teamImage: UIImage(named: "costaRicaTeam") ?? UIImage(),
                information: "A team that suffered a lot to get its place in the Cup, has many problems with the renewal of its players, since the best athletes are still the same ones that competed in the 2014 Cup. \n\nProbable Team - (4-3-3):\nNavas; Watson, Duarte, Calvo, Oviedo; Fuller, Borges, Ruiz, Bennette; Venegas, Campbell."
            ),
            CountryInformation(
                name: "Germany",
                flag: UIImage(named: "germanyFlag") ?? UIImage(),
                teamImage: UIImage(named: "germanyTeam") ?? UIImage(),
                information: "The Joachim Low era may have ended in disappointment for Germany, but the first signs are that Hansi Flick is heading in the right direction. The former Bayern Munich manager has won eight of the games he has played since taking charge after Euro 2020, and has seen his team score 34 goals in that span, conceding just three times. Germany are a team full of experience and while they may face a tougher group than they expected after losing a place among the top teams, they are still poised for their best tournament campaign since Euro 2016. \n\nProbable Team - (4-2-3-1):\nNeuer; Klostermann, Süle, Rüdiger, Raum; Kimmich, Gündogan; Gnabry, Müller, Sané; Werner."
            ),
            CountryInformation(
                name: "Japan",
                flag: UIImage(named: "japanFlag") ?? UIImage(),
                teamImage: UIImage(named: "japanTeam") ?? UIImage(),
                information: "For the seventh consecutive World Cup, Japan secured a spot in the tournament, finishing second in their final group in the Asian Qualifiers. After a slow start, which included a home defeat to Oman, they went on a six-game winning streak to secure a spot in Qatar. Takumi Minamino, Takehiro Tomiyasu and Take Kubo are the most famous names in the current roster, and reaching the round of 16 would, again, be seen as a great achievement. \n\nProbable Team - (4-3-3):\nKawashima; Tomiyasu, Yoshida, Itakura, Nagatomo; Endo, Tanaka, Morita; Kubo, Asano, Minamino"
            )
        ]
    ),
    Group(
        groupName: "Group F",
        countries: [
            CountryInformation(
                name: "Belgium",
                flag: UIImage(named: "belgiumFlag") ?? UIImage(),
                teamImage: UIImage(named: "belgiumTeam") ?? UIImage(),
                information: "There's no doubt that the much-lauded golden generation of Belgian football probably missed their best chance to win a major trophy, but still, they should head to Qatar believing in a great achievement. Much will depend on Kevin De Bruyne and Romelu Lukaku to pave the way for Roberto Martínez's team, being the last chance any player will have to make a big impact at a World Cup. The emergence of youngsters Jeremy Doku and Charles De Ketelaere is also exciting from an offensive point of view, although defensive weaknesses remain the team's biggest obstacle. \n\nProbable Team - (3-4-3):\nCourtois; Denayer, Alderweireld, Vertonghen; Meunier, Witsel, Tielemans, Carrasco; De Bruyne, Lukaku, E. Hazard."
            ),
            CountryInformation(
                name: "Canada",
                flag: UIImage(named: "canadaFlag") ?? UIImage(),
                teamImage: UIImage(named: "canadaTeam") ?? UIImage(),
                information: "Canada was another team to make World Cup qualification history, leading the Concacaf table to reach their first global tournament in 36 years. The fact that they managed to pass the stage without their talisman, Alphonso Davies, will only give them more confidence to impress when they arrive in Qatar. As co-hosts of the 2026 World Cup this is the competition they are really eyeing as the one they can excel at, but they also won't be in Qatar as mere tourists. \n\nProbable Team - (4-4-2):\nBorjan; Adekugbe, Miller, Vitoria, Johnston; Hutchinson, Osorio, Eustaquio, Davies; David, Larin."
            ),
            CountryInformation(
                name: "Morocco",
                flag: UIImage(named: "moroccoFlag") ?? UIImage(),
                teamImage: UIImage(named: "marrocoTeam") ?? UIImage(),
                information: "Morocco may not be every fan's first choice to watch during the World Cup, but they have the potential to be a surprise in Qatar. Only twice in their last six qualifying matches have they failed to score three goals, and have been unlucky enough to lose to Egypt in the quarter-finals of the African Cup of Nations. With Achraf Hakimi, they also have the most exciting young player in African football. So a favorable draw could still take them to the round of 16. \n\nProbable Team - (4-3-3):\nBounou; Hakimi, Saiss, Dari, Mazraoui; Amrabat, Belhanda, Chair; Ziyech, En-Nesyri, Boufal."
            ),
            CountryInformation(
                name: "Croatia",
                flag: UIImage(named: "croaciaFlag") ?? UIImage(),
                teamImage: UIImage(named: "croaciaTeam") ?? UIImage(),
                information: "Finalists in 2018, Croatia's expectations in Qatar will be much lower, although they still arrive at the tournament expecting to be competitive and potentially win at least one playoff game. Luka Modric continues to perform at a high level as he begins his preparations for a fourth World Cup, and the Real Madrid player will lead a team that is slowly moving away from the golden generation that once brought such success. There are some encouraging signs as youngsters such as RB Leipzig defender Josko Gvardiol have started to take up places on the team. \n\nProbable Team - (4-3-3):\nLivakovic; Juranovic, Sutalo, Gvardiol, Sosa; Modric, Brozovic, Kovacic; Pasalic, Kramaric, Perisic."
            )
        ]
    ),
    Group(
        groupName: "Group G",
        countries: [
            CountryInformation(
                name: "Brazil",
                flag: UIImage(named: "brazilFlag") ?? UIImage(),
                teamImage: UIImage(named: "brazilTeam") ?? UIImage(),
                information: "Having secured their spot in Qatar with six games remaining in the Qualifiers, there is no doubt that Brazil have found consistency under Tite in recent years. Neymar remains the main attraction of the selection, but is now surrounded by young attacking talents such as Vinícius Jr., Richarlison and Rafinha, who are expected to ease the burden of player Neymar dependence, Brazil also has a strong defense with Marquinhos and two great goalkeepers Alisson and Ederson. Even so, the selection is very questioned if it will be able to compete with the best teams in Europe. \n\nProbable Team - (4-3-3):\nAlisson; Danilo, Thiago Silva, Marquinhos, Alex Sandro; Fred, Casemiro, Paquetá; Raphinha, Neymar, Vinicius Jr."
            ),
            CountryInformation(
                name: "Serbia",
                flag: UIImage(named: "serbiaFlag") ?? UIImage(),
                teamImage: UIImage(named: "serbiaTeam") ?? UIImage(),
                information: "Serbia surprised world football when they overtook Portugal in the final seconds of qualifying to secure an automatic berth in Qatar, and will do the same later this year. They certainly have the firepower to do so, with Dusan Vlahovic, Aleksandar Mitrovic and Luka Jovic leading an attack that has Dusan Tadic and Sergej Milinkovic-Savic in midfield. However, they have only had one clean sheet in eight games in the Qualifiers, so they will need to strengthen their defense throughout the competition. \n\nProbable Team - (3-4-1-2):\nV. Milinkovic-Savic; Veljkovic, Milenkovic, Pavlovic; Zivkovic, Lukic, S. Milinkovic-Savic, Kostic; Tadic; Mitrovic, Vlahovic."
            ),
            CountryInformation(
                name: "Switzerland",
                flag: UIImage(named: "switzerlandFlag") ?? UIImage(),
                teamImage: UIImage(named: "switzerlandTeam") ?? UIImage(),
                information: "Specialists in rankings for major tournaments, Switzerland did it again, and this time, they edged out Italy for an automatic spot in Qatar after leading their UEFA group. The change of coach does not appear to have crippled one of the most consistent squads in world football, and it will be the same old-timers, Xherdan Shaqiri, Granit Xhaka and Yann Sommer, who will once again be considered to lead the way for this team. Don't expect them to be emotional, but expect them to reach the round of 16. It's just what they do. \n\nProbable Team - (4-2-3-1):\nSommer; Widmer, Akanji, Elvedi, Rodriguez; Freuler, Xhaka; Shaqiri, Sow, Vargas; Embolo."
            ),
            CountryInformation(
                name: "Cameroon",
                flag: UIImage(named: "cameroonFlag") ?? UIImage(),
                teamImage: UIImage(named: "cameroonTeam") ?? UIImage(),
                information: "Cameroon secured their third place in the African Cup of Nations with an impressive last-minute victory over Algeria in the World Cup play-offs to secure a spot in Qatar. While they may not be the star-studded team of previous generations, manager Rigobert Song appears to have found a winning formula in the first few months of 2022. Their hopes of breaking out of the groups likely hinge on veteran strikers Eric Maxim Choupo-Mouting, Vincent Aboubakar and Karl Toko Ekambi, as well as talented goalkeeper Andre Onana. \n\nProbable Team - (4-3-3):\nOnana; Fai, Castelletto, Nkoulou, Tolo; Hongla, Gouet, Ondoua; Mbeumo, Aboubakar, Toko Ekambi."
            )
        ]
    ),
    Group(
        groupName: "Group H",
        countries: [
            CountryInformation(
                name: "Portugal",
                flag: UIImage(named: "portugalFlag") ?? UIImage(),
                teamImage: UIImage(named: "portugalTeam") ?? UIImage(),
                information: "They had to go the long way around – again – but Portugal made it to Qatar 2022, offering Cristiano Ronaldo a final chance to get his hands on the biggest prize of all. For him to make that dream a reality, the Manchester United forward will likely have to lead the way again, although he has a strong supporting cast around him that includes the likes of Bruno Fernandes, Diogo Jota and João Félix. Defensively, they are desperate for Pepe to stay in shape, although Fernando Santos' continued presence on the bench means that even if all the stars' names are available, they could still be stopped by their conservative coach. \n\nProbable Team - (4-3-3):\nDiogo Costa; Cancelo, Rubén Dias, Pepe, Nuno Mendes; Rubén Neves, Vitinha, Bruno Fernandes; Bernardo Silva, Cristiano Ronaldo, Leão."
            ),
            CountryInformation(
                name: "Ghana",
                flag: UIImage(named: "ghanaFlag") ?? UIImage(),
                teamImage: UIImage(named: "ghanaTeam") ?? UIImage(),
                information: "After their embarrassing elimination in the African Cup of Nations group stage, Ghana managed to bounce back and defeat great rivals Nigeria in the World Cup play-offs. Thomas Partey's goal was decisive, with the Arsenal player leading the African team heading to their fourth World Cup in the last five editions. They also have exciting youngsters up front such as Kamaldeen Sulemana, Felix Afena-Gyan and Abdul Fatawu Issahaku, as well as Ajax midfielder Mohammed Kudus, but they will likely be in better shape to reach the round of 16 in the next two years.\n\nProbable Team - (4-1-4-1):\nWollacott; Lamptey, Djiku, Amartey, Rahman Baba; Partey; Sulemana, A. Ayew, Kudus, J. Ayew; Iñaki Williams."
            ),
            CountryInformation(
                name: "Uruguay",
                flag: UIImage(named: "uruguayFlag") ?? UIImage(),
                teamImage: UIImage(named: "uruguayTeam") ?? UIImage(),
                information: "Uruguay have not always been at their best in qualifying and looked in real danger of missing out on the World Cup after a five-game winless streak in the final months of 2021. However, they managed to turn the tide, winning each of the final four games, allowing the likes of Luis Suárez, Edinson Cavani and Diego Godin a final chance to impress on football's biggest stage. In fact, this is an Uruguayan team stuck between two generations of players and while that doesn't mean they can't compete, seeing them in the later stages would be a surprise. \n\nProbable Team:\nMuslera; Araújo, Godín, Jiménez, Viña; Valverde, Bentancur, Torreira, Vecino; Nuñez, Suárez."
            ),
            CountryInformation(
                name: "Korea Republic",
                flag: UIImage(named: "koreaFlag") ?? UIImage(),
                teamImage: UIImage(named: "koreaTeam") ?? UIImage(),
                information: "Undoubtedly the biggest star of the Asian team, Son Heung-min will be asked to lead South Korea as they aim to reach the round of 16 for the third time. The Tottenham forward was the top scorer in the third and final round of the Asian Qualifiers, as his team remained undefeated until qualification for Qatar was sealed. They also boast an average defense that has conceded just three goals in 10 qualifiers, although their World Cup opponents are likely to be more challenging. \n\nProbable Team - (4-4-2):\nKim Seung-gyu; Kim Moon-Hwan, Kim Young-gwon, Kim Min-Jae, Kim Jin-Su; Lee Kang-in, Hwang In-beom, Lee Jae-sung, Na Sang-ho; Son Heung-min, Hwang Hee-chan."
            )
        ]
    )

]

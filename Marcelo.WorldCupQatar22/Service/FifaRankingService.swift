//
//  FifaRankingService.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 31/05/22.
//

import Foundation

protocol FifaRankingAPI {
    func getRanking(completion: @escaping (Result<FifaRanking, FifaRankingError>) -> Void)
}

final class FifaRankingService: FifaRankingAPI {
    
    func getRanking(completion: @escaping (Result<FifaRanking, FifaRankingError>) -> Void) {
        let urlString = "http://api.isportsapi.com/sport/football/fifaranking?api_key=p3x1D2FzFVMIMsb2"
        
        guard let url = URL(string: urlString) else {
            return completion(.failure(.urlInvalidate(message: "URL inválida")))
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data else {
                return completion(.failure(.dataInvalid(message: "Sem dados")))
            }
            
            guard let response = response as? HTTPURLResponse, (200...299).contains(response.statusCode) else {
                return completion(.failure(.dataInvalid(message: "Erro status code diferente de 200")))
            }
            
            do {
                let fifaRanking = try JSONDecoder().decode(FifaRanking.self, from: data)
                completion(.success(fifaRanking))
            } catch let error {
                return completion(.failure(.dataInvalid(message: error.localizedDescription)))
            }
            
        }

        task.resume()
    }
    
}

//
//  Service.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 31/05/22.
//

import Foundation

protocol FifaRankingServiceDelegate: GenericService {
    func getRanking(completion: @escaping completion<[Datum]?>)
}

class FifaRankingService: FifaRankingServiceDelegate {
    func getRanking(completion: @escaping completion<[Datum]?>) {
        let urlString = "http://api.isportsapi.com/sport/football/fifaranking?api_key=p3x1D2FzFVMIMsb2"
   
        guard let url:URL = URL(string: urlString) else {
            return completion(nil, Error.errorDescription(message: "error url"))
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            
            guard let data = data else {
                return completion(nil, Error.errorDescription(message: "error data"))
            }
            
            let json = try? JSONSerialization.jsonObject(with: data)
            print(json as Any)
            
            guard let response = response as? HTTPURLResponse else {
                return completion(nil, Error.errorDescription(message: "error response"))
            }
            
            if response.statusCode == 200{
               
                do {
                    let model: FifaRanking = try JSONDecoder().decode(FifaRanking.self, from: data)
                    completion(model.data, nil)
                } catch {
                    return completion(nil, Error.errorDescription(message: "Deu ruim no Parse", error: error))
                }
            }else{
                return completion(nil, Error.errorDescription(message: "error", error: error))
            }
        }
        task.resume()
    }
}

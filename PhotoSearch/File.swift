//
//  File.swift
//  PhotoSearch
//
//  Created by nil on 17.09.2021.
//

import Foundation
import Alamofire

class NetworkService {
    
    static func loadTst(searchText: String, completion: @escaping ([ResultPhoto]) -> ()) {
        let baseUrl = "https://api.unsplash.com"
        let path = "/search/photos"
        let apiKey = "jEZ3KkZmuPQSO7E6UtzCj49HQPeG596QCfirbuTtqUI"
        
        let parametrs: Parameters = [
            "query": searchText,
            "per_page": 30,
            "client_id": apiKey
        ]
        let url = baseUrl+path
        AF.request(url, method: .get, parameters: parametrs).responseData { response in
            guard let data = response.value else { return }
            do {
                let photos = try JSONDecoder().decode(ResponsePhoto.self, from: data).results
                //print(photos)
                //photos.map {print($0.urls?.small)}
                completion(photos)
            }catch {
                print(error.localizedDescription)
            }
        }
    }
    
}

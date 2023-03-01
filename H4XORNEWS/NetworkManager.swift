//
//  NetworkManager.swift
//  H4XORNEWS
//
//  Created by SREEKANTH PS on 01/03/2023.
//

import Foundation

class NetworkManager:ObservableObject{
    
    @Published var results = [Post]()
    
    func fetchData(){
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page"){
            let urlRequest = URLRequest(url: url)
            let urlSession = URLSession(configuration: .default)
            let urlTask =  urlSession.dataTask(with: urlRequest) { data, response, error in
                if error == nil {
                    if let safeData = data{
                        do{
                            let decoder = JSONDecoder()
                            decoder.keyDecodingStrategy = .convertFromSnakeCase
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.results = results.hits
                            }
                            
                        }catch{
                            print(error)
                        }
                    }
                }
                
            }
            urlTask.resume()
        }
    }
}

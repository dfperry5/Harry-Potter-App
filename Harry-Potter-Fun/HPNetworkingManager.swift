//
//  HPNetworkingManager.swift
//  Harry-Potter-Fun
//
//  Created by Dylan Perry on 2/7/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import Foundation

class HPNetworkingManager: ObservableObject {
    
    @Published
    var currentHouse = String()
    
    
    func getRandomHogwartsHouse(){
        
        guard let url = URL(string: "\(Constants.POTTER_API_BASE)\(Constants.SORTING_HAT_PATH)") else {
            print("invalid URL!")
            return
        }
        
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { (data, response, error) in
            if error == nil {
                let decoder = JSONDecoder()
                if let safeData = data  {
                    do {
                       let result = try decoder.decode(String.self, from: safeData)
                        print(result)
                        DispatchQueue.main.async {
                            self.currentHouse = result
                        }
                        
                    } catch {
                        print(error)
                    }
                }
                
            } else {
                print("No data returned")
            }
        }
        
        task.resume()
    }
    
}

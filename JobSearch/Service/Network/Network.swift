//
//  Network.swift
//  JobSearch
//
//  Created by Александр Меренков on 20.03.2024.
//

import Combine
import Foundation

struct Network {
    static let shared = Network()
    
// MARK: - Properties
    
    private let urlString = "https://run.mocky.io/v3/ed41d10e-0c1f-4439-94fa-9702c9d95c14"
    
// MARK: - Helpers
    
    func fetchData() -> AnyPublisher<PostModel, Error> {
        guard let url = URL(string: urlString) else {
            return Fail(error: URLError(.badServerResponse))
                .eraseToAnyPublisher()
        }
        
        return URLSession.shared
            .dataTaskPublisher(for: url)
            .tryMap(handleOutput)
            .decode(type: PostModel.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
    private func handleOutput(output: URLSession.DataTaskPublisher.Output) throws -> Data {
        guard let response = output.response as? HTTPURLResponse,
              response.statusCode >= 200 && response.statusCode < 300 else {
            throw URLError(.badServerResponse)
        }
        return output.data
    }
}

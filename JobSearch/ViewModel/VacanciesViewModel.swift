//
//  VacanciesViewModel.swift
//  JobSearch
//
//  Created by Александр Меренков on 20.03.2024.
//

import Foundation
import Combine

final class VacanciesViewModel: ObservableObject {
    
// MARK: - Properties
    
    private let network = Network.shared
    
    @Published var vacancies: [Vacancies] = []
    private var cancellables = Set<AnyCancellable>()

// MARK: - Lifecycle
    
    init() {
        load()
    }
    
// MARK: - Helpers
    
    func load() {
        network.fetchData()
            .sink { (completion) in
            } receiveValue: { [weak self] returnedPost in
                self?.vacancies = returnedPost.vacancies
            }
            .store(in: &cancellables)
    }
}

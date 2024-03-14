//
//  Search.swift
//  JobSearch
//
//  Created by Александр Меренков on 13.03.2024.
//

import SwiftUI

// MARK: - Core

struct Search: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                SearchPanel()
                SearchInformation()
                SearchVacancy()
            }
        }
    }
}

#Preview {
    Search()
}

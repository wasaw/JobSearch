//
//  Vacancy.swift
//  JobSearch
//
//  Created by Александр Меренков on 14.03.2024.
//

import SwiftUI

// MARK: - Properties

private enum Constants {
    static let padding: CGFloat = 12
    static let paddingTop: CGFloat = 16
    static let cornerRadius: CGFloat = 8
    static let notificationPadding: CGFloat = 8
}

// MARK: - Core

struct Vacancy: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            ScrollView {
                VacancyHeader(dismissAction: dismissView)
                VacancyNotifications()
                VacancyMap()
                VacancyDescription()
                VacancyResponse()
            }
        }
        .navigationBarBackButtonHidden(true)
        .background(.black)
    }
    
    private func dismissView() {
        dismiss()
    }
}

#Preview {
    Vacancy()
}

//
//  VacancyHeader.swift
//  JobSearch
//
//  Created by Александр Меренков on 15.03.2024.
//

import SwiftUI

// MARK: - Properties

private enum Constants {
    static let padding: CGFloat = 12
    static let paddingTop: CGFloat = 16
}

// MARK: - Core

struct VacancyHeader: View {
    var dismissAction: (() -> Void)

    var body: some View {
        VStack {
            VStack(alignment: .leading, content: {
                Text("UI/UX Designer")
                    .font(.system(size: 22, weight: .semibold))
                Text("Уровень дохода не указан")
                    .font(.system(size: 14))
                    .padding(.top, Constants.paddingTop)
                Text("Требуемый опыт: от 1 года до 3 лет")
                    .padding(.top, Constants.paddingTop)
                    .font(.system(size: 14))
                Text("Полная занятость, полный день")
                    .font(.system(size: 14))
            })
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundStyle(.white)
        }
        .padding(Constants.padding)
        .background(.black)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    dismissAction()
                }, label: {
                    Image("BackButton")
                })
            }
            ToolbarItem(placement: .topBarTrailing) {
                HStack {
                    Image("Eye")
                    Image("Share")
                    Image("HeartFull")
                }
            }
        }
        .toolbarBackground(Color.black, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbar(.visible, for: .tabBar)
    }
}

#Preview {
    VacancyHeader(dismissAction: {})
}

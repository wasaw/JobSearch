//
//  VacancyResponse.swift
//  JobSearch
//
//  Created by Александр Меренков on 15.03.2024.
//

import SwiftUI

// MARK: - Properties

private enum Constants {
    static let padding: CGFloat = 12
    static let paddingTop: CGFloat = 8
    static let cornerRadius: CGFloat = 8
    static let gridCornerRadius: CGFloat = 50
    static let buttonHeight: CGFloat = 48
}
private let columns: [GridItem] =
Array(repeating: .init(.flexible()), count: 1)

// MARK: - Core

struct VacancyResponse: View {
    var body: some View {
        HStack {
            Text("Задайте вопрос работадателю")
                .title4()
                .foregroundStyle(.white)
            Spacer()
        }
        .padding(.leading, Constants.padding)
        HStack {
            Text("Он получит его с откликом на вакансию")
                .title4()
                .foregroundStyle(CustomColor.gray3)
            Spacer()
        }
        .padding(.leading, Constants.padding)
        
        LazyVGrid(columns: columns, content: {
            ForEach((0...3), id: \.self) {_ in
                HStack {
                    Text("Где располашается место работы?")
                        .title4()
                        .foregroundStyle(.white)
                        .padding(Constants.padding)
                        .background(CustomColor.gray2)
                        .clipShape(RoundedRectangle(cornerRadius: Constants.gridCornerRadius,
                                                    style: .continuous))
                    Spacer()
                }
                .padding(EdgeInsets(top: Constants.paddingTop,
                                    leading: Constants.padding,
                                    bottom: 0,
                                    trailing: 0))
            }
        })
        
        HStack {
            Button {
                
            } label: {
                Text("Откликнуться")
                    .buttonText1()
                    .foregroundStyle(.white)
            }
            .frame(maxWidth: .infinity)
            .frame(height: Constants.buttonHeight)
            .background(CustomColor.green)
            .clipShape(RoundedRectangle(cornerRadius: Constants.cornerRadius,
                                        style: .continuous))
        }
        .padding(Constants.padding)
    }
}

#Preview {
    VacancyResponse()
}

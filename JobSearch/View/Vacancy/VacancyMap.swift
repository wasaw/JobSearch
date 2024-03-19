//
//  VacancyMap.swift
//  JobSearch
//
//  Created by Александр Меренков on 15.03.2024.
//

import SwiftUI
import MapKit

// MARK: - Properties

private enum Constants {
    static let padding: CGFloat = 12
    static let cornerRadius: CGFloat = 8
}

// MARK: - Core

struct VacancyMap: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("Мобирикс")
                        .title3()
                        .foregroundStyle(.white)
                    Image("CheckmarkOk")
                    Spacer()
                }
                Map {
                    
                }
                .frame(height: 134)
                HStack {
                    Text("Минск, улица Бирюзова, 4/5")
                        .text1()
                        .foregroundStyle(.white)
                    Spacer()
                }
            }
            .padding(Constants.padding)
            .background(CustomColor.gray1)
            .clipShape(RoundedRectangle(cornerRadius: Constants.cornerRadius,
                                        style: .continuous))

        }
        .padding(Constants.padding)
    }
}

#Preview {
    VacancyMap()
}

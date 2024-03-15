//
//  VacancyNotifications.swift
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
}

// MARK: - Core

struct VacancyNotifications: View {
    var body: some View {
        HStack {
            HStack {
                HStack(alignment: .top, content: {
                    Text("147 человек уже откликнулись")
                        .font(.system(size: 14))
                        .foregroundStyle(.white)
                    Image("PeopleGreen")
                })
            }
            .frame(maxWidth: .infinity)
            .padding(Constants.paddingTop)
            .background(CustomColor.darkGreen)
            .clipShape(RoundedRectangle(cornerRadius: Constants.cornerRadius,
                                        style: .continuous))
            HStack(alignment: .top, content: {
                Text("2 человека сейчас смотрят")
                    .font(.system(size: 14))
                    .foregroundStyle(.white)
                Image("EyeGreen")
            })
            .frame(maxWidth: .infinity)
            .padding(8)
            .background(CustomColor.darkGreen)
            .clipShape(RoundedRectangle(cornerRadius: Constants.cornerRadius,
                                        style: .continuous))
        }
        .padding(Constants.padding)
        .frame(maxWidth: .infinity)
        .background(.black)
    }
}

#Preview {
    VacancyNotifications()
}

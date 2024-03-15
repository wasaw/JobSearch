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
        VStack {
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
                        dismiss()
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
                .padding(Constants.notificationPadding)
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
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
        .background(.black)
    }
}

#Preview {
    Vacancy()
}

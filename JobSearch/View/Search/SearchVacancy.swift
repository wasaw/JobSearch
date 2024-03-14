//
//  SearchVacancy.swift
//  JobSearch
//
//  Created by Александр Меренков on 14.03.2024.
//

import SwiftUI

// MARK: - Properties

private enum Constants {
    static let padding: CGFloat = 12
    static let cornerRadius: CGFloat = 8
    static let paddingTop: CGFloat = 10
    static let spacing: CGFloat = 20
    static let btnHeight: CGFloat = 32
    static let btnCorderRadius: CGFloat = 50
    static let btnAddHeight: CGFloat = 48
}
private let rows: [GridItem] =
Array(repeating: .init(.flexible()), count: 1)

// MARK: - Core

struct SearchVacancy: View {
    var body: some View {
        Text("Вакансии для вас")
            .font(.system(size: 20, weight: .semibold))
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading,
                     Constants.padding)
        
        LazyVGrid(columns: rows, alignment: .center, spacing: Constants.spacing) {
            ForEach((0...1), id: \.self) {_ in
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Text("Сейчас проматривают 1 человек")
                                .font(.system(size: 14))
                                .foregroundStyle(CustomColor.green)
                            Spacer()
                            Image("Heart")
                        }
                        Text("UI/UX Designer")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundStyle(.white)
                            .padding(.top, Constants.paddingTop)
                        Text("Минск")
                            .font(.system(size: 14))
                            .foregroundStyle(.white)
                            .padding(.top, Constants.paddingTop)
                        HStack {
                            Text("Мобирикс")
                                .font(.system(size: 14))
                                .foregroundStyle(.white)
                            Image("CheckmarkOk")
                        }
                        .padding(.top, Constants.paddingTop / 2)
                        HStack {
                            Image("Experiens")
                            Text("Опыт от 1 года до 3 лет")
                                .font(.system(size: 14))
                                .foregroundStyle(.white)
                        }
                        .padding(.top, Constants.paddingTop)
                        Text("Опубликовано 20 февраля")
                            .font(.system(size: 14))
                            .foregroundStyle(CustomColor.gray3)
                            .padding(.top, Constants.paddingTop)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(Constants.padding)
                    .background(CustomColor.gray1)
                    HStack {
                        Button {
                            
                        } label: {
                            Text("Откликнуться")
                                .font(.system(size: 14))
                                .foregroundStyle(.white)
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: Constants.btnHeight)
                        .background(CustomColor.green)
                        .clipShape(RoundedRectangle(cornerRadius: Constants.btnCorderRadius,
                                                    style: .continuous))
                    }
                    .padding(EdgeInsets(top: 0,
                                        leading: Constants.padding,
                                        bottom: Constants.padding,
                                        trailing: Constants.padding))
                }
                .frame(maxWidth: .infinity)
                .background(CustomColor.gray1)
                .clipShape(RoundedRectangle(cornerRadius: Constants.cornerRadius,
                                            style: .continuous))
            }
        }
        .padding([.leading, .trailing], Constants.padding)
        .background(.black)

        VStack {
            Button {
                
            } label: {
                Text("Еще 143 вакансии")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(.white)
            }
            .frame(height: Constants.btnAddHeight)
            .frame(maxWidth: .infinity)
            .background(CustomColor.blue)
            .clipShape(RoundedRectangle(cornerRadius: Constants.cornerRadius,
                                        style: .continuous))
        }
        .padding(Constants.padding)
    }
}

#Preview {
    SearchVacancy()
}
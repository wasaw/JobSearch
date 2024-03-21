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
    @StateObject var viewModel = VacanciesViewModel()
    
    var body: some View {
        Text("Вакансии для вас")
            .title2()
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading,
                     Constants.padding)
        
        LazyVGrid(columns: rows, alignment: .center, spacing: Constants.spacing) {
            ForEach(viewModel.vacancies, id: \.id) { vacancy in
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            if let lookingNumber = vacancy.lookingNumber {
                                Text("Сейчас проматривают \(lookingNumber) человек")
                                    .text1()
                                    .foregroundStyle(CustomColor.green)
                            } else {
                                Text("Сейчас никто не просматривает")
                                    .text1()
                                    .foregroundStyle(CustomColor.green)
                            }
                            Spacer()
                            Image(vacancy.isFavorite ? "Heart" : "HeartFull")
                        }
                        Text(vacancy.title)
                            .title3()
                            .foregroundStyle(.white)
                            .padding(.top, Constants.paddingTop)
                        Text(vacancy.address.town)
                            .text1()
                            .foregroundStyle(.white)
                            .padding(.top, Constants.paddingTop)
                        HStack {
                            Text(vacancy.company)
                                .text1()
                                .foregroundStyle(.white)
                            Image("CheckmarkOk")
                        }
                        .padding(.top, Constants.paddingTop / 2)
                        HStack {
                            Image("Experiens")
                            Text(vacancy.experience.previewText)
                                .text1()
                                .foregroundStyle(.white)
                        }
                        .padding(.top, Constants.paddingTop)
                        let data = conversionDate(vacancy.publishedDate)
                        Text("Опубликовано \(data)")
                            .text1()
                            .foregroundStyle(CustomColor.gray3)
                            .padding(.top, Constants.paddingTop)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(Constants.padding)
                    .background(CustomColor.gray1)
                    HStack {
                        NavigationLink {
                            Vacancy()
                        } label: {
                            Text("Откликнуться")
                                .text1()
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: Constants.btnHeight)
                                .background(CustomColor.green)
                                .clipShape(RoundedRectangle(cornerRadius: Constants.btnCorderRadius,
                                                            style: .continuous))
                        }
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
                    .buttonText1()
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
    
// MARK: - Helpers
    
    private func conversionDate(_ dateFrom: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ru_RU")
        dateFormatter.dateFormat = "yyyy-MM-dd"
        guard let date = dateFormatter.date(from: dateFrom) else { return ""}
        dateFormatter.dateFormat = "dd MMMM"
        return dateFormatter.string(from: date)
    }
}

#Preview {
    SearchVacancy()
}

//
//  Search.swift
//  JobSearch
//
//  Created by Александр Меренков on 13.03.2024.
//

import SwiftUI

// MARK: - Properties

private enum Constants {
    static let padding: CGFloat = 12
    static let cornerRadius: CGFloat = 8
    static let btnSliderDimensions: CGFloat = 40
    static let infGridWidth: CGFloat = 132
    static let infGridHeight: CGFloat = 120
    static let btnCorderRadius: CGFloat = 50
    static let paddingTop: CGFloat = 10
    static let spacing: CGFloat = 20
    static let btnHeight: CGFloat = 32
}

private let rows: [GridItem] =
Array(repeating: .init(.flexible()), count: 1)
private let jobRows: [GridItem] =
Array(repeating: .init(.flexible()), count: 1)

// MARK: - Core

struct Search: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                HStack {
                    Spacer()
                        .frame(width: Constants.padding)
                    HStack {
                        Image("Search")
                            .renderingMode(.template)
                            .foregroundStyle(CustomColor.gray4)
                        Text("Должность, ключевые слова")
                            .font(.system(size: 14))
                            .foregroundStyle(CustomColor.gray4)
                        Spacer()
                    }
                    .padding(11)
                    .background(CustomColor.gray2)
                    .clipShape(RoundedRectangle(cornerRadius: Constants.cornerRadius,
                                                style: .continuous))
                    Button(action: {
                        
                    }, label: {
                        Image("Slider")
                            .renderingMode(.template)
                            .foregroundStyle(.white)
                    })
                    .frame(width: Constants.btnSliderDimensions,
                           height: Constants.btnSliderDimensions)
                    .background(CustomColor.gray2)
                    .clipShape(RoundedRectangle(cornerRadius: Constants.cornerRadius,
                                                style: .continuous))
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, Constants.padding)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows, content: {
                        ForEach((0...6), id: \.self) {_ in
                            VStack {
                                HStack {
                                    Image("Avatar")
                                    Spacer()
                                }
                                .padding(8)
                                Text("Вакансии радом с вами")
                                    .font(.system(size: 14, weight: .medium))
                                    .foregroundStyle(.white)
                                HStack {
                                    Button {
                                        
                                    } label: {
                                        Text("Поднять")
                                            .font(.system(size: 14))
                                            .foregroundStyle(CustomColor.green)
                                    }
                                    Spacer()
                                }
                                .padding(.leading, 8)
                            }
                            .frame(width: Constants.infGridWidth,
                                   height: Constants.infGridHeight)
                            .background(CustomColor.gray1)
                            .clipShape(RoundedRectangle(cornerRadius: Constants.cornerRadius,
                                                        style: .continuous))
                        }
                    })
                    .background(.black)
                }
                .padding(Constants.padding)
                
                Text("Вакансии для вас")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading,
                             Constants.padding)
                
                LazyVGrid(columns: jobRows, alignment: .center, spacing: Constants.spacing) {
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
                                    Image("Checkmark")
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

                
                Divider()
                Spacer()
            }
        }
    }
}

#Preview {
    Search()
}

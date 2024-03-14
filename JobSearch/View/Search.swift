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
}

private let rows: [GridItem] =
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
                
                Divider()
                Spacer()
            }
        }
    }
}

#Preview {
    Search()
}

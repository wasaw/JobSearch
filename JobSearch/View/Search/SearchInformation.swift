//
//  SearchInformation.swift
//  JobSearch
//
//  Created by Александр Меренков on 14.03.2024.
//

import SwiftUI

// MARK: - Properties

private enum Constants {
    static let padding: CGFloat = 12
    static let cornerRadius: CGFloat = 8
    static let informaionWidth: CGFloat = 132
    static let informationHeight: CGFloat = 120
    static let viewHeight: CGFloat = 150
}
private let rows: [GridItem] =
Array(repeating: .init(.flexible()), count: 1)

// MARK: - Core

struct SearchInformation: View {
    var body: some View {
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
                            .title4()
                            .foregroundStyle(.white)
                        HStack {
                            Button {
                                
                            } label: {
                                Text("Поднять")
                                    .text1()
                                    .foregroundStyle(CustomColor.green)
                            }
                            Spacer()
                        }
                        .padding(.leading, 8)
                    }
                    .frame(width: Constants.informaionWidth,
                           height: Constants.informationHeight)
                    .background(CustomColor.gray1)
                    .clipShape(RoundedRectangle(cornerRadius: Constants.cornerRadius,
                                                style: .continuous))
                }
            })
            .background(.black)
        }
        .padding(Constants.padding)
        .frame(height: Constants.viewHeight)
    }
}

#Preview {
    SearchInformation()
}

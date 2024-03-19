//
//  SearchPanel.swift
//  JobSearch
//
//  Created by Александр Меренков on 14.03.2024.
//

import SwiftUI

// MARK: - Properties

private enum Constants {
    static let padding: CGFloat = 12
    static let cornerRadius: CGFloat = 8
    static let btnDimensions: CGFloat = 40
}

// MARK: - Core

struct SearchPanel: View {
    var body: some View {
        HStack {
            Spacer()
                .frame(width: Constants.padding)
            HStack {
                Image("Search")
                    .renderingMode(.template)
                    .foregroundStyle(CustomColor.gray4)
                Text("Должность, ключевые слова")
                    .text1()
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
            .frame(width: Constants.btnDimensions,
                   height: Constants.btnDimensions)
            .background(CustomColor.gray2)
            .clipShape(RoundedRectangle(cornerRadius: Constants.cornerRadius,
                                        style: .continuous))
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
        .padding(.trailing, Constants.padding)
    }
}

#Preview {
    SearchPanel()
}

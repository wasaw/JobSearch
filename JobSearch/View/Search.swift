//
//  Search.swift
//  JobSearch
//
//  Created by Александр Меренков on 13.03.2024.
//

import SwiftUI

struct Search: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                HStack {
                    Spacer()
                        .frame(width: 12)
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
                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    Button(action: {
                        
                    }, label: {
                        Image("Slider")
                            .renderingMode(.template)
                            .foregroundStyle(.white)
                    })
                    .frame(width: 40, height: 40)
                    .background(CustomColor.gray2)
                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 12))
                Divider()
                Spacer()
            }
        }
    }
}

#Preview {
    Search()
}

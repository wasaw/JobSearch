//
//  Vacancy.swift
//  JobSearch
//
//  Created by Александр Меренков on 14.03.2024.
//

import SwiftUI

struct Vacancy: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView {
            VStack {
                Color.black.ignoresSafeArea()

            }
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
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    Vacancy()
}

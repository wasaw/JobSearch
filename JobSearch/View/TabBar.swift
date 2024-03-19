//
//  TabBar.swift
//  JobSearch
//
//  Created by Александр Меренков on 13.03.2024.
//

import SwiftUI

struct TabBar: View {
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor(CustomColor.gray3)
    }
    
    var body: some View {
        TabView {
            Group {
                NavigationStack {
                    ScrollView {
                        Search()
                    }
                    .padding(.bottom, 5)
                    .background(.black)
                }
                .tabItem {
                    VStack {
                        Text("Поиск")
                        Image("Search").renderingMode(.template)
                    }
                }
                Favourites()
                    .tabItem {
                        VStack {
                            Text("Избранное")
                            Image("Heart").renderingMode(.template)
                        }
                    }
                Responses()
                    .tabItem {
                        VStack {
                            Text("Отклики")
                            Image("Vector").renderingMode(.template)
                        }
                    }
                Messages()
                    .tabItem {
                        VStack {
                            Text("Сообщения")
                            Image("Message").renderingMode(.template)
                        }
                    }
                Profile()
                    .tabItem {
                        VStack() {
                            Text("Профиль")
                            Image("Profile").renderingMode(.template)
                        }
                    }
            }
            .toolbarBackground(Color.black, for: .tabBar)
        }
    }
}

#Preview {
    TabBar()
}

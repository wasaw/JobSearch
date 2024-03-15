//
//  Vacancy.swift
//  JobSearch
//
//  Created by Александр Меренков on 14.03.2024.
//

import SwiftUI
import MapKit

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
        NavigationStack {
            ScrollView {
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
                .toolbarBackground(Color.black, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)

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

                VStack {
                    VStack {
                        HStack {
                            Text("Мобирикс")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundStyle(.white)
                            Image("CheckmarkOk")
                            Spacer()
                        }
                        Map {
                            
                        }
                        .frame(height: 134)
                        HStack {
                            Text("Минск, улица Бирюзова, 4/5")
                                .font(.system(size: 14))
                                .foregroundStyle(.white)
                            Spacer()
                        }
                    }
                    .padding(Constants.padding)
                    .background(CustomColor.gray1)
                    .clipShape(RoundedRectangle(cornerRadius: Constants.cornerRadius,
                                                style: .continuous))

                }
                .padding(Constants.padding)
                Text("MOBYRIX - динамично развивающаяся продуктовая IT-компания, специализирующаяся на разработке мобильных приложений для iOS и Android. Наша команда работает над собственными продуктами в разнообразных сферах: от утилит до развлечений и бизнес-приложений. Мы ценим талант и стремление к инновациям и в данный момент в поиске талантливого UX/UI Designer, готового присоединиться к нашей команде и внести значимый вклад в развитие наших проектов.")
                    .font(.system(size: 14))
                    .foregroundStyle(.white)
                    .padding(EdgeInsets(top: -Constants.paddingTop,
                                        leading: Constants.padding,
                                        bottom: 0,
                                        trailing: Constants.padding))
                HStack {
                    Text("Ваши задачи")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundStyle(.white)
                    Spacer()
                }
                .padding(EdgeInsets(top: Constants.paddingTop,
                                    leading: Constants.padding,
                                    bottom: 0,
                                    trailing: Constants.padding))
                Text("-Проектировать пользовательский опыт, проводить UX исследования; -Разрабатывать адаптивный дизайн интерфейса для мобильных приложений; -Разрабатывать быстрые прототипы для тестирования идеи дизайна и их последующая; интеграция на основе обратной связи от команды и пользователей; -Взаимодействовать с командой разработчиков для обеспечения точной реализации ваших дизайнов; -Анализ пользовательского опыта и адаптация под тренды.")
                    .font(.system(size: 14))
                    .foregroundStyle(.white)
                    .padding(Constants.padding)
                HStack {
                    Text("Задайте вопрос работадателю")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundStyle(.white)
                    Spacer()
                }
                .padding(.leading, Constants.padding)
                HStack {
                    Text("Он получит его с откликом на вакансию")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundStyle(CustomColor.gray3)
                    Spacer()
                }
                .padding(.leading, Constants.padding)
                
                
                Spacer()

            }
                        
            
        }
        .navigationBarBackButtonHidden(true)
        .background(.black)
    }
}

#Preview {
    Vacancy()
}

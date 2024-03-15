//
//  VacancyDescription.swift
//  JobSearch
//
//  Created by Александр Меренков on 15.03.2024.
//

import SwiftUI

// MARK: - Properties

private enum Constants {
    static let padding: CGFloat = 12
    static let paddingTop: CGFloat = 16
}

// MARK: - Core

struct VacancyDescription: View {
    var body: some View {
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
    }
}

#Preview {
    VacancyDescription()
}

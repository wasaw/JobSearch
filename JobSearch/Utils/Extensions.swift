//
//  Extensions.swift
//  JobSearch
//
//  Created by Александр Меренков on 19.03.2024.
//

import SwiftUI

// MARK: - Text

extension Text {
    func title1() -> some View {
        self.font(.system(size: 22, weight: .semibold))
    }
    
    func title2() -> some View {
        self.font(.system(size: 20, weight: .semibold))
    }
    
    func title3() -> some View {
        self.font(.system(size: 16, weight: .medium))
    }
    
    func title4() -> some View {
        self.font(.system(size: 14, weight: .medium))
    }
    
    func text1() -> some View {
        self.font(.system(size: 14, weight: .regular))
    }
    
    func buttonText1() -> some View {
        self.font(.system(size: 16, weight: .semibold))
    }
}


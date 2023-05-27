//
//  ThemeEditModel.swift
//  ComplexHomeWork
//

//

import Foundation

class ThemeEditModel {
    
    /// Properties
    var themeInfo = ThemeInfo()
    
    /// Functions
    func applyChanges() {
        ThemeService.shared.themeInfo = themeInfo
    }
}

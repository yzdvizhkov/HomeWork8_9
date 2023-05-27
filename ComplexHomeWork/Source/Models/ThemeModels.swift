//
//  ThemeInfo.swift
//  ComplexHomeWork
//

//

import Foundation

struct ThemeInfo {
    var bold: Bool = false
    var fontSize: CGFloat = 17.0
    var textColorInfo = ColorInfo(red: 0.0, green: 0.0, blue: 0.0)
    var textBackgroundColorInfo = ColorInfo()
    var backgroundColorInfo = ColorInfo()
}

struct ColorInfo {
    var red: CGFloat = 255.0
    var green: CGFloat = 255.0
    var blue: CGFloat = 255.0
    let alpha: CGFloat = 1.0
}

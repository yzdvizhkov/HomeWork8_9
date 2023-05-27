//
//  ThemeMapper.swift
//  ComplexHomeWork
//

//

import UIKit

class ColorMapper {
    
    static func color(from colorInfo: ColorInfo) -> UIColor {
        
        let red = colorInfo.red / 255.0
        let green = colorInfo.green / 255.0
        let blue = colorInfo.blue / 255.0
        
        return UIColor(red: red,
                       green: green,
                       blue: blue,
                       alpha: colorInfo.alpha)
    }
}

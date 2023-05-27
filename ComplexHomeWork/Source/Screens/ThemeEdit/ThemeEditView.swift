//
//  ThemeEditView.swift
//  ComplexHomeWork
//

//

import UIKit

class ThemeEditView: UIView {
    
    /// Outlets
    @IBOutlet weak var backgroundColorView: UIView!
    @IBOutlet weak var backgroundColorLabel: UILabel!
    
    @IBOutlet weak var switcher: UISwitch!
    @IBOutlet weak var fontSizeLabel: UILabel!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    /// Lyfe Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColorLabel.text = "Some Text Example\nSome Text Example\nSome Text Example"
    }
    
    /// Actions
    @IBAction func switchAction(_ switcher: UISwitch) {
        
    }
    
    @IBAction func fontSizeSliderAction(_ slider: UISlider) {
        
    }
    
    @IBAction func redSliderAction(_ slider: UISlider) {
        
    }
    
    @IBAction func greenSliderAction(_ slider: UISlider) {
        
    }
    
    @IBAction func blueSliderAction(_ slider: UISlider) {
        
    }
    
    @IBAction func applyChangesAction() {
        
    }
}

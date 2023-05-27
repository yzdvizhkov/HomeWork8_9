//
//  ThemeEditViewController.swift
//  ComplexHomeWork
//

//

import UIKit

class ThemeEditViewController: UIViewController {
    
    /// Outelts
    @IBOutlet weak var contentView: ThemeEditView!
    
    /// Properties
    var model: ThemeEditModel!
    
    /// Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupInitialState()
    }
    
    /// Functions
    func setupInitialState() {
        model = ThemeEditModel()
    }
}

//
//  FavoriteListViewController.swift
//  ComplexHomeWork
//

//

import UIKit

class FavoriteListViewController: UIViewController {
    
    /// Outlets
    @IBOutlet weak var tableView: UITableView!
    
    /// Properties
    var model: FavoriteListModel!
    
    /// Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupInititalState()
        model.laodData()
    }
    
    /// Functions
    func setupInititalState() {
        model = FavoriteListModel()
        model.delegate = self
    }
    
    /// Actions
    @IBAction func segmentControlDidChange(_ sender: UISegmentedControl) {
        model.didChangeIndex(to: sender.selectedSegmentIndex)
    }
}

// MARK: - FavoriteListModelProtocol
extension FavoriteListViewController: FavoriteListModelProtocol {
    
    func dataDidLoad() {
        tableView.reloadData()
    }
    
    func sourceDidChange() {
        tableView.reloadData()
    }
}

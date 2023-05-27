//
//  FavoriteListViewController+TableViewHandler.swift
//  ComplexHomeWork
//

//

import UIKit

// MARK: - FavoriteListViewController + TableViewHandler
extension FavoriteListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "InfoCell") else {
            assertionFailure("Unable to dequeue the cell")
            return UITableViewCell()
        }
        applyThemeIfNeeded(for: cell)
        
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = model.items[indexPath.row]
        
        return cell
    }
}

// MARK: - Private
private extension FavoriteListViewController {
    
    func applyThemeIfNeeded(for cell: UITableViewCell) {
        guard let themeInfo = ThemeService.shared.themeInfo
        else { return }
        
        let textColor = ColorMapper.color(from: themeInfo.textColorInfo)
        let textBackgroundColor = ColorMapper.color(from: themeInfo.textBackgroundColorInfo)
        let backgroundColor = ColorMapper.color(from: themeInfo.backgroundColorInfo)
        
        cell.textLabel?.textColor = textColor
        cell.textLabel?.backgroundColor = textBackgroundColor
        cell.contentView.backgroundColor = backgroundColor
        
        let fontSize = themeInfo.fontSize
        cell.textLabel?.font = themeInfo.bold ? UIFont.systemFont(ofSize: fontSize) : UIFont.boldSystemFont(ofSize: fontSize)
    }
}

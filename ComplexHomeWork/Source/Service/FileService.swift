//
//  FileService.swift
//  ComplexHomeWork
//

//

import Foundation

class FileService {
    
    func loadBooksJson(filename fileName: String) -> BookList? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let fileData = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let list = try decoder.decode(BookList.self, from: fileData)
                return list
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
    
    func loadMoviesJson(filename fileName: String) -> MovieList? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let fileData = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let list = try decoder.decode(MovieList.self, from: fileData)
                return list
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
    
    func loadSongsJson(filename fileName: String) -> SongList? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let fileData = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let list = try decoder.decode(SongList.self, from: fileData)
                return list
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
}

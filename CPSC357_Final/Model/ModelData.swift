//
//  ModelData.swift
//  CPSC357_Final
//
//  Created by Matthew on 12/8/21.
//

import Foundation


var rootData: [Datas] = load("PicsData.json")
var holdsData: [Datas] = load("HoldsData.json")
var referenceData: [Datas] = load("referenceData.json")
var movesData: [Datas] = load("MovesData.json")



//gathers initial team data from json file and populates array
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

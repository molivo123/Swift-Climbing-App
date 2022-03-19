//
//  DataStore.swift
//  CPSC357_Final
//
//  Created by Matthew on 12/8/21.
//

import SwiftUI
import Combine

class DataStore : ObservableObject {
    @Published var datas: [Datas]
    init (datas: [Datas] = []) {
        self.datas = datas
    }
}

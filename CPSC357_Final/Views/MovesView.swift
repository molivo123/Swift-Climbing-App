//
//  MovesView.swift
//  CPSC357_Final
//
//  Created by Alberto Chi Kan Ng on 12/11/21.
//

import SwiftUI

struct MovesView: View {
    @StateObject private var movesChoiceStore : DataStore = DataStore(datas: movesData)
    @State private var selection: String? = nil
    @State public var i:Int = 0
    var body: some View {
        VStack{
            List {
                ForEach (movesChoiceStore.datas) { datas in
                    MenuCell(datas: datas)
                        .navigationBarTitle(Text("Da Moves"))
                }
            }
            
        }
        
    }
}

struct MovesView_Previews: PreviewProvider {
    static var previews: some View {
        MovesView()
    }
}


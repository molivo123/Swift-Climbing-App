//
//  HoldsView.swift
//  CPSC357_Final
//
//  Created by Alberto Chi Kan Ng on 12/8/21.
//

import SwiftUI

struct HoldsView: View {
    @StateObject private var holdsChoiceStore : DataStore = DataStore(datas: holdsData)
    @State public var i:Int = 0
    var body: some View {
        VStack{
            List {
                ForEach (holdsChoiceStore.datas) { datas in
                    MenuCell(datas: datas)
                        .navigationTitle(Text("Da Holds"))
                }
                
            }
            //.navigationTitle(Text("Da Holds"))
            //.navigationBarBackButtonHidden(true)
        }
        
    }
}

struct HoldsView_Previews: PreviewProvider {
    static var previews: some View {
        HoldsView()
    }
}

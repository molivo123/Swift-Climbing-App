//
//  ReferenceView.swift
//  CPSC357_Final
//
//  Created by Matthew on 12/16/21.
//

import SwiftUI

struct ReferenceView: View {
    @StateObject var referenceStore : DataStore = DataStore(datas: referenceData)
    let chosenList : Datas
    var body: some View {
        Form {
            Section(header: Text("Da References").font(.headline)) {
            
            Text(chosenList.description).font(.headline)
            }
        }
        
    }

}

struct ReferenceView_Previews: PreviewProvider {
    static var previews: some View {
        ReferenceView(chosenList: referenceData[0])
    }
}

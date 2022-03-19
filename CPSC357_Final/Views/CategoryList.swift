//
//  CategoryList.swift
//  CPSC357_Final
//
//  Created by Matthew on 12/8/21.
//

import SwiftUI

struct CategoryList: View {
    @StateObject private var menuChoiceStore : DataStore = DataStore(datas: rootData)
    let chosenList : Datas
    var body: some View {
        Form {
            Section(header: Text(chosenList.name).font(.headline)) {
                Image(chosenList.imageName)
                    .resizable()
                    .cornerRadius(12.0)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                Text(chosenList.description)
                    .font(.headline)
            }
        }
    }
}

struct CategoryList_Previews: PreviewProvider {
    static var previews: some View {
        CategoryList(chosenList: rootData[0])
    }
}

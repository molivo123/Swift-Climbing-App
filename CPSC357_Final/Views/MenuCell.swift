//
//  MenuCell.swift
//  CPSC357_Final
//
//  Created by Matthew on 12/8/21.
//

import SwiftUI

struct MenuCell: View {
    var datas: Datas
    
    var body: some View {
        NavigationLink(destination: CategoryList (chosenList: datas)){
            HStack {
                Image(datas.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 60)
                Text(datas.name)
                    //Text(datas.imageName).fontWeight(.light)
            }
        }
    }
}

struct MenuCell_Previews: PreviewProvider {
    static var previews: some View {
        MenuCell(datas: rootData[0])
    }
}

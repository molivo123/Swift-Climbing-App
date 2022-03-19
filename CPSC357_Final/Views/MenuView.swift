//
//  MenuView.swift
//  CPSC357_Final
//
//  Created by Matthew on 12/8/21.
//

import SwiftUI

struct MenuView: View {
    @StateObject private var menuChoiceStore : DataStore = DataStore(datas: rootData)
    @StateObject var referenceStore : DataStore = DataStore(datas: referenceData)
    @State public var i:Int = 0
    var body: some View {
        VStack{
            NavigationView{
                List {
                    NavigationLink(destination: HoldsView()){
                        HStack {
                            Image("MainMenuHolds")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 60)
                                //.navigationBarHidden(true)(Text("Da Holds"))
                            Text("Da Holds")
                                //Text(datas.imageName).fontWeight(.light)
                        }
                       
                    }
                    .navigationTitle(Text("Da Menu"))
                    //.navigationBarBackButtonHidden(true)
                    
                    NavigationLink(destination: MovesView()){
                        HStack {
                            Image("MainMenuMoves")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 60)
                            Text("Da Moves")
                                //Text(datas.imageName).fontWeight(.light)
                        }
                    }
                    //.navigationTitle(Text("Da Climb"))
                    NavigationLink(destination: MapsView()){
                        HStack {
                            Image("MainMenuMap")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 60)
                            Text("Da Map")
                                //Text(datas.imageName).fontWeight(.light)
                        }
                    }
                    //.navigationTitle(Text("Da Climb"))
                    NavigationLink(destination: ReferenceView(chosenList: referenceData[0])){
                        HStack {
                            Image("MainMenuReferences")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 60)
                            Text("Da References")
                                //Text(datas.imageName).fontWeight(.light)
                        }
                    }
                    //.navigationTitle(Text("Da Climb"))
                    
                }
                
                //.navigationBarTitleDisplayMode(.inline)
                //.navigationBarBackButtonHidden(true)
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

//
//  MapsView.swift
//  CPSC357_Final
//
//  Created by Nathan on 12/13/21.
//

import SwiftUI
import MapKit

struct MapView0: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 33.806_700, longitude: -117.868_850),
        span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
    )
    var body: some View {
        Map(coordinateRegion: $region)
    }
}
struct MapView1: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 33.729_3, longitude: -117.835_1),
        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    )
    var body: some View {
        Map(coordinateRegion: $region)
    }
}
struct MapView2: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 33.700_9, longitude: -117.934_3),
        span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
    )
    var body: some View {
        Map(coordinateRegion: $region)
    }
}
struct MapView3: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 33.679_330, longitude: -117.911_460),
        span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
    )
    var body: some View {
        Map(coordinateRegion: $region)
    }
}
struct MapView4: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 33.664_980, longitude: -117.663_860),
        span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
    )
    var body: some View {
        Map(coordinateRegion: $region)
    }
}
struct MapView5: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 33.664_980, longitude: -117.663_860),
        span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
    )
    var body: some View {
        Map(coordinateRegion: $region)
    }
}
struct MapsView: View {
    var locationNum: [Int] = [1,2,3,4,5]
    var Locationnames = ["Hangar 18 Orange", "Sender 1", "Movement","Rockreation Sport Climbing Center","Aesthetic Climbing Gym"]
    @State private var LocationIndex = 0

    var Address: [String] = ["Address: 1547 W Struck Ave Suite A, Orange, CA 92867","Address: 1441 Village Way, Santa Ana, CA 92705","Address: 18030 Newhope St, Fountain Valley, CA 92708","Address: 1300 Logan Ave, Costa Mesa, CA 92626","Address: 26794 Vista Terrace, Lake Forest, CA 92630"]
    var Details: [String] = ["Boldering, Gym", "Top Rope, Lead, Boldering, Gym, Yoga", "Boldering, Gym","Top Rope, Boldering, Gym","Boldering, Top Rope"]
    
    var body: some View {
        VStack{
            Text("Da Map")
                .font(.title)
            if(LocationIndex == 0){
                MapView0().frame(maxHeight:400).padding()
            }
            if(LocationIndex == 1){
                MapView1().frame(maxHeight:400).padding()
            }
            if(LocationIndex == 2){
                MapView2().frame(maxHeight:400).padding()
            }
            if(LocationIndex == 3){
                MapView3().frame(maxHeight:400).padding()
            }
            if(LocationIndex == 4){
                MapView4().frame(maxHeight:400).padding()
            }
            Spacer()

            Text(Address[LocationIndex])
                .font(.headline)
                .multilineTextAlignment(.center)
            Text(Details[LocationIndex])

            Picker(selection: $LocationIndex, label: Text("Location")) {
                ForEach(0 ..< Locationnames.count){ locationNum in Text(Locationnames[locationNum])
                    .font(.title2)}
            }.padding()
        }
    }
}

struct MapsView_Previews: PreviewProvider {
    static var previews: some View {
        MapsView()
    }
}

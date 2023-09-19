//
//  MapView.swift
//  SuperHeroApp
//
//  Created by Mehmet Özkan on 19.09.2023.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    var coordinate: CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }


   
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: herosArray[0].coordinateLocation)
    }
}

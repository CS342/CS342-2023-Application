//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import MapKit
import SwiftUI


private struct IdentifiablePlace: Identifiable {
    let id: UUID
    let location: CLLocationCoordinate2D
    
    init(
        id: UUID,
        lat: Double,
        long: Double
    ) {
        self.id = id
        self.location = CLLocationCoordinate2D(
            latitude: lat,
            longitude: long
        )
    }
}


struct BiodesignOfficeView: View {
    private static let officeLocation = IdentifiablePlace(id: UUID(), lat: 37.43154482662516, long: -122.17420861642175)
    
    
    private let place = BiodesignOfficeView.officeLocation
    @State private var region: MKCoordinateRegion = {
        MKCoordinateRegion(
            center: BiodesignOfficeView.officeLocation.location,
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        )
    }()
    
    
    var body: some View {
        Map(
            coordinateRegion: $region,
            annotationItems: [place],
            annotationContent: { place in
                MapMarker(
                    coordinate: place.location,
                    tint: Color.red
                )
            }
        )
            .navigationTitle("Biodesign Office")
    }
}


struct BiodesignOfficeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            BiodesignOfficeView()
        }
    }
}

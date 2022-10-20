//
//  Light_event_details_full_page.swift
//  Eveno
//
//  Created by williams saadi on 20/10/2022.
//

import SwiftUI
import MapKit

struct Light_event_details_full_page: View {
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 37.334_900,
                                           longitude: -122.009_020),
            latitudinalMeters: 750,
            longitudinalMeters: 750
        )
    
    var body: some View {
        ScrollViewReader{ svr in
            ScrollView{
                Group{
                    VStack{
                        ScrollView(.horizontal) {
                            Image("Image-1")
                        }
                        Text("National Music Festival").font(.title)
                        HStack{
                            Button("Music"){
                            }
                            .border(.purple, width: 1)
                            .frame(alignment: .trailing)
                            Text("20,000+ going ->")
                        }
                        Rectangle().frame(height: 1).padding()
                        HStack{
                            Image(systemName: "calendar")
                            VStack{
                                Text("Monday, December 24, 2022")
                                Text("18.00 -23.00 PM (GMT + 07:00)")
                                Button{
                                    
                                }label: {
                                    Label("Add to my calendar", systemImage: "calendar")
                                }
                            }
                        }
                        .padding(.vertical, 8)
                        .frame(alignment: .center)
                        HStack{
                            Image(systemName: "mappin.circle")
                            VStack{
                                Text("Grand Park, New York City, US")
                                Text("Grand City ST. 100, New York, United States.")
                                Button{
                                    
                                }label: {
                                    Label("Add to my calendar", systemImage: "calendar")
                                }
                            }
                        }
                        .padding(.vertical, 8)
                        .frame(alignment: .center)
                        HStack{
                            Image(systemName: "ticket")
                            VStack{
                                Text("World of Music")
                                Text("Organizer")
                            }
                            Button("Follow"){
                                
                            }
                        }
                        .padding(.vertical, 8)
                        .frame(alignment: .center)
                        
                        VStack {
                            Text("About Event")
                                .font(.title3)
                                .frame(alignment: .leading)
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut")
                                .multilineTextAlignment(.leading)
                        }
                        .padding()
                        
                        HStack{
                            Text("Gallery (Pre-Event)")
                            Spacer()
                            Button("See All"){
                                
                            }
                        }
                        .padding()
                        ScrollView(.horizontal){
                            HStack{
                                Image("Image-6")
                                Image("Image-5")
                                Image("Image-6")
                            }
                        }
                        
                        
                    }
                    .padding()
                }
                Group{
                    VStack{
                        Text("Location")
                            .font(.title2)
                        HStack{
                            Image(systemName: "mappin.circle")
                            Text("Grand City St. 100, New York, United States")
                        }
                        Map(coordinateRegion: $region)
                            .frame(width: 400, height: 400)
                            .padding()
                        ScrollView(.horizontal){
                            Image("image-2")
                        }
                    }
                }
            }
            Button("Book Event"){
                
            }.padding(.vertical, 10)
            .frame(width: 300, height: 40)
                .background(Color.purple)
        }
    }
}

struct Light_event_details_full_page_Previews: PreviewProvider {
    static var previews: some View {
        Light_event_details_full_page()
    }
}

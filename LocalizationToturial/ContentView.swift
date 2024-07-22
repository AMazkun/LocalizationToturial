//
//  ContentView.swift
//  LocalizationToturial
//
//  Created by admin on 16.07.2024.
//

import SwiftUI
import PhotosUI


struct ContentView: View {
    @EnvironmentObject var model : Model
    var body: some View {
        VStack {
            Text("Lets have a party!")
                .font(.title)
                .padding(.bottom)
            Text("How about pictures :\n\(model.galleryAccess.name)")
                .fontWeight(.semibold)
            VStack (alignment: .leading) {
                Text("Hello, friends!")
                Divider()
                ForEach(Array(model.friends.enumerated()), id: \.offset) { _, friend in
                    Text("Hello, \(friend)")
                }
                VStack (alignment: .leading) {
                    Text("We have \(String(format:"%.2f", model.founds)) $")
                    Text("Also \(model.friends.count) mates")
                    Text("Confectionery \(model.places) to visit")
                }
                .padding(.top)
            }
            .padding()
        }
    }
}

#Preview("English") {
        ContentView().environmentObject(MokeData.shared.modelPreview)
            .environment(\.locale, .init(identifier: "en"))
}

#Preview("Ukranian") {
        ContentView().environmentObject(MokeData.shared.modelPreview)
            .environment(\.locale, .init(identifier: "uk"))
}

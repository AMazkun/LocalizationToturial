//
//  Model.swift
//  LocalizationToturial
//
//  Created by admin on 16.07.2024.
//

import SwiftUI
import PhotosUI

class Model : ObservableObject {
    internal init(friends: [LocalizedStringResource] = [], founds: Double = 0.0, places: Int = 0, galleryAccess: PHAuthorizationStatus = .denied) {
        self.friends = friends
        self.founds = founds
        self.places = places
        self.galleryAccess = galleryAccess
    }
    
    
    var friends : [LocalizedStringResource] = []
    @Published var founds : Double = 0.0
    @Published var places : Int = 0
    @Published var galleryAccess : PHAuthorizationStatus = .denied
}

struct MokeData {
    static var shared = MokeData()
    var modelPreview : Model
    var model : Model
    init()
    {
        self.model =  Model(
            friends:["Kate", "Heila", "Jimmy", "Sam", "Nik"],
            founds: 245.00,
            places: 1,
            galleryAccess: .notDetermined
        )
        self.modelPreview =  Model(
            friends:["Kate", "Heila", "Jimmy", "Sam", "Nik"],
            founds: 245.00,
            places: 1,
            galleryAccess: .denied
        )
    }
}

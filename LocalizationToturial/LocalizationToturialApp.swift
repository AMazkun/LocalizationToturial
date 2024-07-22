//
//  LocalizationToturialApp.swift
//  LocalizationToturial
//
//  Created by admin on 16.07.2024.
//

import SwiftUI
import PhotosUI

@main
struct LocalizationToturialApp: App {
    @ObservedObject var model = MokeData.shared.model
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(model)
                .task {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        print(PHPConfess)
                        model.galleryAccess = PHPhotoLibrary.authorizationStatus()
                        switch model.galleryAccess {
                        case .notDetermined:
                          PHPhotoLibrary.requestAuthorization({ (newStatus) in
                              DispatchQueue.main.async {
                              if (newStatus == PHAuthorizationStatus.authorized) {
                                      model.galleryAccess = newStatus
                                      print(PermissionGranted)
                                  } else {
                                      model.galleryAccess = .denied
                                      print(AwwShucks)
                                  }
                              }
                          })
                        default:
                            print(model.galleryAccess.name)
                        }
                    }
                }
        }
    }
}

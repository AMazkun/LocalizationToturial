//
//  Helper.swift
//  LocalizationToturial
//
//  Created by admin on 16.07.2024.
//

import Foundation
import PhotosUI

extension PHAuthorizationStatus {
    var name : LocalizedStringResource {
        var name : LocalizedStringResource = "Unexpected goes wrong..."
        switch self {
        case .denied:
            name =  "Looks like someone is camera shy!"
        case .authorized:
            name =  "You got the moves! Let's boogie to the gallery."
        case .restricted:
            name =  "Uh oh! Seems like your parents locked down the camera.  Ask for permission nicely!"
        case .notDetermined:
            name = "Let ask them"
        case .limited:
            name = "Hold on there! Limited access? Let's see if we can fix that. "
        @unknown default:
            break
        }
        return name
    }
    
}

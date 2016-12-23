//
//  Constants.swift
//  Boilerplate
//
//  Created by Dylan Edwards on November 4, 2016.
//  Copyright © 2016 Slinging Pixels Media. All rights reserved.
//

import UIKit

struct Constants {
    
    //MARK: - Storyboard
    
    struct StoryBoardID {
        static let main                 = "Main"
        static let activityIndicatorVC  = "activityIndicatorVC"
    }
    
    //MARK: - Network
    
//    struct Flickr {
//        static let key      = "446dfaa1521e824779ddb5cd32d363a4"
//        static let secret   = "53cc541820255f86"
//    }
    
    //MARK: - Fonts
    
    struct FontName {
        static let americanTypewriter   = "AmericanTypewriter-Bold"
        static let arial                = "Arial-BoldMT"
        static let avenir               = "Avenir-Black"
        static let avenirHeavy          = "Avenir-Heavy"
        static let avenirNext           = "AvenirNext-Heavy"
        static let avenirNextCondensed  = "AvenirNextCondensed-Heavy"
        static let copperplate          = "Copperplate-Bold"
        static let futura               = "Futura-CondensedExtraBold"
        static let gillSans             = "GillSans-Bold"
        static let hoeflerText          = "HoeflerText-Black"
        static let impact               = "Impact"
        static let markerFelt           = "MarkerFelt-Wide"
    }


    //MARK: - Storage
    
    
    /// UserDefaults
    static let userDefaults = UserDefaults.standard
    
    
    /// Core Data
//    static let coreDataStack = CoreDataStack(modelName: "Model")!
    
    /// File system
    
    struct FileSystem {
        static let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        static let applicationSupport = NSSearchPathForDirectoriesInDomains(.applicationSupportDirectory, .userDomainMask, true)[0]
    }
    
    struct ArchiveFile {
        static let storedMemes = FileSystem.applicationSupport + "/storedMemes.json"
    
//    struct StorageKeys {
//        static let latitude         = "com.slingingPixels.virtualTourist.storageKeys.latitude"
//        static let longitude        = "com.slingingPixels.virtualTourist.storageKeys.longitude"
//        static let latitudeDelta    = "com.slingingPixels.virtualTourist.storageKeys.latitudeDelta"
//        static let longitudeDelta   = "com.slingingPixels.virtualTourist.storageKeys.longitudeDelta"
//    }
}

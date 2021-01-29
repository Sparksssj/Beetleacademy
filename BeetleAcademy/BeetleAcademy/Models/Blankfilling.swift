/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The model for an individual landmark.
*/

import SwiftUI
import CoreLocation
import Foundation

struct BucketListItem:Identifiable,Codable {

    
    var id = UUID()
    var Text_blanked: String
    var Origtext: String
    var Blanks: Int
    
    
}

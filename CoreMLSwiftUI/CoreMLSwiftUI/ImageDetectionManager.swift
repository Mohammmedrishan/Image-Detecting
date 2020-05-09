//
//  ImageDetectionManager.swift
//  CoreMLSwiftUI
//
//  Created by Mohammed Rishan on 09/05/20.
//  Copyright © 2020 Mohammed Rishan. All rights reserved.
//

import Foundation
import CoreML
import UIKit

class ImageDetectionManager {
    
    let model = Resnet50()
    
    func detect(_ img: UIImage) -> String? {
        
        guard let pixelBuffer = img.toCVPixelBuffer(),
            let predition = try? model.prediction(image: pixelBuffer) else {
                return nil
        }
        return predition.classLabel
    }
}

//
//  ImageMods.swift
//  Pretzel
//
//  Created by Cyril Garcia on 7/21/18.
//  Copyright © 2018 Cyril Garcia. All rights reserved.
//

import UIKit

class ImageMods {
    
    public static func removeWhiteBackground(with image: UIImage) -> UIImage? {
        let raw_image_ref = image.cgImage
        
        let color_masking: [CGFloat] = [222,255,222,255,222,255]
        
        UIGraphicsBeginImageContext(image.size)
        
        let masked_image_ref = raw_image_ref?.copy(maskingColorComponents: color_masking)
        
        do {
            UIGraphicsGetCurrentContext()?.translateBy(x: 0.0, y: image.size.height)
            UIGraphicsGetCurrentContext()?.scaleBy(x: 1.0, y: -1.0)
        } 
        
        UIGraphicsGetCurrentContext()?.draw(masked_image_ref!, in: CGRect(x: 0, y: 0, width: image.size.width , height: image.size.height ))
        
        let result: UIImage? = UIGraphicsGetImageFromCurrentImageContext()
        
        return result!
        
    }
    
    public static func convertImageToPixelBuffer(with image: UIImage, size: CGSize) -> CVPixelBuffer? {
        if let image = image.cgImage {
            let frameSize = size
            var pixelBuffer:CVPixelBuffer? = nil
            let status = CVPixelBufferCreate(kCFAllocatorDefault, Int(frameSize.width), Int(frameSize.height), kCVPixelFormatType_32BGRA , nil, &pixelBuffer)
            if status != kCVReturnSuccess {
                return nil
            }
            CVPixelBufferLockBaseAddress(pixelBuffer!, CVPixelBufferLockFlags.init(rawValue: 0))
            let data = CVPixelBufferGetBaseAddress(pixelBuffer!)
            let rgbColorSpace = CGColorSpaceCreateDeviceRGB()
            let bitmapInfo = CGBitmapInfo(rawValue: CGBitmapInfo.byteOrder32Little.rawValue | CGImageAlphaInfo.premultipliedFirst.rawValue)
            let context = CGContext(data: data, width: Int(frameSize.width), height: Int(frameSize.height), bitsPerComponent: 8, bytesPerRow: CVPixelBufferGetBytesPerRow(pixelBuffer!), space: rgbColorSpace, bitmapInfo: bitmapInfo.rawValue)
            context?.draw(image, in: CGRect(x: 0, y: 0, width: image.width, height: image.height))
            CVPixelBufferUnlockBaseAddress(pixelBuffer!, CVPixelBufferLockFlags(rawValue: 0))
            
            return pixelBuffer
        }else{
            return nil
        }
    }
    
    
}

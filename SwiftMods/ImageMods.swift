//  MIT License
//
//  Copyright (c) 2018 Cyril Garcia
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//


import UIKit

public class ImageMods {
    
    /**
     Remove white background from image
     ## Details ##
     
     Removing white background from image
     
     - Parameter image: The image with white background
     */
    public static func removeWhiteBackground(with image: UIImage) -> UIImage? {
        let rawImageRef = image.cgImage
        
        let colorMasking: [CGFloat] = [222,255,222,255,222,255]
        
        UIGraphicsBeginImageContext(image.size)
        
        let maskedImageRef = rawImageRef?.copy(maskingColorComponents: colorMasking)
        
        do {
            UIGraphicsGetCurrentContext()?.translateBy(x: 0.0, y: image.size.height)
            UIGraphicsGetCurrentContext()?.scaleBy(x: 1.0, y: -1.0)
        } 
        
        UIGraphicsGetCurrentContext()?.draw(maskedImageRef!, in: CGRect(x: 0, y: 0, width: image.size.width , height: image.size.height ))
        
        let result = UIGraphicsGetImageFromCurrentImageContext()
        
        return result
        
    }
    
    /**
     Convert Image to CVPixelBuffer
     ## Details ##
     
     Used mainly for CoreML image recognition
     
     - Parameter image: The image that will be converted to CVPixelBuffer
     - Parameter size: The size of the image you need to set it to.

     */
    
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

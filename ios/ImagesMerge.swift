
import Foundation
import UIKit
@objc(ImagesMerge)
class ImagesMerge : NSObject{
  
  @objc
  func mergeImages(_ imagesData:NSArray, callback: @escaping RCTResponseSenderBlock) {
    DispatchQueue.main.async {
      var images = [UIImage]()
      for imgDdict in imagesData as! [NSDictionary]{
       let img = imgDdict["uri"] as! String
        if img.contains("data:image/png;base64,"){
          images.append(UIImage(data: Data(base64Encoded: img.replacingOccurrences(of: "data:image/png;base64,", with: ""))!)!)
        }
      }

      let size = CGSize(width: images[0].size.width , height: images[0].size.height * CGFloat(images.count))
       UIGraphicsBeginImageContext(size)
      for img in images{
        if images.firstIndex(of: img) == 0{
          img.draw(in: CGRect(x: 0, y: 0, width: size.width, height: img.size.height ))
        }else{
          img.draw(in: CGRect(x: 0, y:img.size.height, width: size.width, height: img.size.height ))
        }
      }

      let myImage = UIGraphicsGetImageFromCurrentImageContext()
      let imgDt = myImage!.pngData()!
      
      UIGraphicsEndImageContext()
      callback([imgDt.base64EncodedString()])
    }
  }
  
  
  @objc
  static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
}



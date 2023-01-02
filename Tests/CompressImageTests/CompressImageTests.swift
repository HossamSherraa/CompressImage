import XCTest
import Foundation
@testable import CompressImage

final class CompressImageTests: XCTestCase {
    func testExample() throws {
        let urlPath = Bundle.module.url(forResource: "image", withExtension: "jpg")!.path
        let real = UIImage(contentsOfFile: urlPath)!
        let result = real.wxCompress(compressionQuality: 0.3)
        
        print(real.pngData() , result.pngData())
       
    }
}

//
//  ExFileManager.swift
//  ExFileManager
//
//  Created by 강동영 on 7/27/24.
//

import Foundation

class ExFileManager {
    private let manager: FileManager = .default
    //파일과 디렉토리를 찾고(locate), 만들고(create)
    func locateFile() {
        manager.
    }
    
    // Create
    func createDirectory(at url: URL, createIntermediates: Bool, attributes: [FileAttributeKey : Any]? = nil) {
        try? manager.createDirectory(at: url, withIntermediateDirectories: createIntermediates, attributes: attributes)
    }
    
    func createFile(atPath: String, data: Data?, attributes: [FileAttributeKey : Any]? = nil) {
        manager.createFile(atPath: atPath, contents: data, attributes: attributes)
    }
    
    // Copy
    func copyItem(at srcURL: URL, to dstURL: URL) {
        try? manager.copyItem(at: srcURL, to: dstURL)
    }
    
    // Move
    func moveItem(at srcURL: URL, to dstURL: URL) {
        try? manager.moveItem(at: srcURL, to: dstURL)
    }
}

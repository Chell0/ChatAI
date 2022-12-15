//
//  APICaller.swift
//  ChatAI
//
//  Created by GMO on 15/12/2022.
//

import OpenAISwift
import Foundation

final class APICaller {
    static let shared = APICaller()
    
    @frozen enum Constants {
        static let key = "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"
    }
    
    private init() {}
    
    public func setup() {
        let client = OpenAISwift(authToken: Constants.key)
    }
}

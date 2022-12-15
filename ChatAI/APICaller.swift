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
    
    private var client: OpenAISwift?
    
    private init() {}
    
    public func setup() {
        let client = OpenAISwift(authToken: Constants.key)
    }
    
    public func getResponse(input: String, completion: @escaping (Result<String, Error>) -> Void) {
        client?.sendCompletion(with: input, completionHandler: {
            result in switch result {
                case .success(let model):
                    let output = model.choices.first?.text ?? ""
                    completion(.success(output))
                case .failure(let error): completion(.failure(error))
            }
        })
    }
}

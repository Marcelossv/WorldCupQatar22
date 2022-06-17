//
//  GenericService.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 31/05/22.
//

import Foundation

protocol GenericService: AnyObject {
    typealias completion <T> = (_ result: T, _ failure: Error?) -> Void
}

enum Error: Swift.Error {
    case errorDescription(message:String, error:Swift.Error? = nil)
}

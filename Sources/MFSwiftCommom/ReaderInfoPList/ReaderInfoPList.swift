//
//  ReaderInfoPList.swift
//
//  Created by Marcos Felipe Souza on 07/04/20.
//  Copyright © 2020 Marcos Felipe Souza. All rights reserved.
//

import Foundation

public enum ReaderInfoPlist: Error {
    case keyNotFound
}

/// InfoPlist pode ler as informacoes no arquivo de .xcconfig para os ambientes (Environment).
public struct ReaderInfoPlist {
    
    /**
     Retorna o valor da chave do .xcconfig
     
     - Parameters:
     - for: É a key onde pega o valor.
     - in: É a onde que contém o info.plist
     
     - Throws: Caso não exista a chave mencionada, o error "Invalid or missing Info.plist key:".
     
     - Returns: Retorna um valor do parametro `for`.
     */
    public static func value<T>(for key: String, in bundle: Bundle) -> T throws {
        guard let value = bundle.infoDictionary?[key] as? T else {
            throw ReaderInfoPlist.keyNotFound
        }
        return value
    }
}

//
//  Item.swift
//  eggplant app
//
//  Created by Daniel Soares on 08/06/21.
//

import UIKit

class Item: NSObject {

    // MARK: - Atributos
    
    let nome: String
    let caloria: Double
    
    // MARK: - Init
    
    init(nome: String, caloria: Double) {
        self.nome = nome
        self.caloria = caloria
        }
}

//
//  Refeicao.swift
//  eggplant app
//
//  Created by Daniel Soares on 01/06/21.
//

import UIKit

class Refeicao: NSObject {
    
    // MARK: - Atributos
    let nome: String
    let felicidade: Int
    let itens: Array<Item> = []  //declarando uma lista com a tipagem Item (classe)
    
    // MARK: - Init
    init(nome: String, felicidade: Int) {
        self.nome = nome
        self.felicidade = felicidade
    }
    
    // MARK: - Métodos
    
    func totalDeCalorias() -> Double {
        var total = 0.0
        
        for item in itens {
            total += item.caloria
        }
        
        return total
    }

}

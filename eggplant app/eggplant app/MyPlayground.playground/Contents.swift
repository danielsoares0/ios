import UIKit

class Refeicao {
    
    // MARK: - Atributos
    var nome: String
    var felicidade: String
    
    // MARK: - Contrutor
    init(nome: String, felicidade: String) {
        self.nome = nome
        self.felicidade = felicidade
    }
}

class Item {
    var nome: String
    var caloria: String
    
    init(nome: String, caloria: String) {
        self.nome = nome
        self.caloria = caloria
    }
}

let refeicao2 = Refeicao(nome: "mac", felicidade: "5")
print(refeicao2.felicidade)

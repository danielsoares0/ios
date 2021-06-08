import UIKit

class Refeicao {
    
    // MARK: - Atributos
    var nome: String
    var felicidade: String
    var itens: Array<Item> = []  //declarando uma lista com a tipagem Item (classe)
    
    // MARK: - Contrutor
    init(nome: String, felicidade: String) {
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

class Item {
    var nome: String
    var caloria: Double
    
    init(nome: String, caloria: Double) {
        self.nome = nome
        self.caloria = caloria
        }
}

let arroz = Item(nome: "Arroz", caloria: 51.0)
let feijao = Item(nome: "Feijão", caloria: 90.0)
let contraFile = Item(nome: "contraFilé", caloria: 287.0)

let refeicao = Refeicao(nome: "Almoço", felicidade: "5")
refeicao.itens.append(arroz)
refeicao.itens.append(feijao)
refeicao.itens.append(contraFile)

print(refeicao.nome)
if let primeiroItemDaLista = refeicao.itens.first {
    print(primeiroItemDaLista.nome)
}

print(refeicao.totalDeCalorias())

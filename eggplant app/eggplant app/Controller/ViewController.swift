//
//  ViewController.swift
//  eggplant app
//
//  Created by Daniel Soares on 01/06/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nomeTextField: UITextField?
    @IBOutlet var felicidadeTextField: UITextField?
    
    @IBAction func adicionar(_ sender: Any) {
        
        
        // MARK: - Usando if let (vou deixar comentado como exemplo)
//        if let nomeDaRefeicao = nomeTextField?.text, let felicidadeDaRefeicao = felicidadeTextField?.text {
//
//            let nome = nomeDaRefeicao
//            if let felicidade = Int(felicidadeDaRefeicao) {
//                let refeicao = Refeicao(nome: nome, felicidade: felicidade)
//                print("Comi \(refeicao.nome) e fiquei com felicidade \(refeicao.felicidade)")
//            } else {
//                print("Erro ao tentar criar a refeicao")
//            }
//        }
        
        // MARK: Usando guard let para verificar
        
        guard let nomeDaRefeicao = nomeTextField?.text else {
            return
        }
        guard let felicidadeDaRefeicao = felicidadeTextField?.text, let felicidade = Int(felicidadeDaRefeicao) else {
            return
        }
        
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)
        print("Comi \(refeicao.nome) e fiquei com felicidade \(refeicao.felicidade)")
    }
        
        
}


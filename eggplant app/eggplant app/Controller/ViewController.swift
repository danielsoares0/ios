//
//  ViewController.swift
//  eggplant app
//
//  Created by Daniel Soares on 01/06/21.
//

import UIKit

protocol AdicionaRefeicaoDelegate {
    func add(_ refeicao: Refeicao)
}

class ViewController: UIViewController, UITableViewDataSource {
    
    // MARK: Atributos
    
    var delegate: AdicionaRefeicaoDelegate?
    var itens: [String] = ["molho de tomate","queijo", "molho apimentado","manjericão"]
    
    // MARK: IBOutlets
    
    @IBOutlet weak var nomeTextField: UITextField?
    @IBOutlet var felicidadeTextField: UITextField?
    
    // MARK: UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = itens[indexPath.row]
        return cell
    }
    
    // MARK: IBActions
    
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
        
        delegate?.add(refeicao)
        navigationController?.popViewController(animated: true)
    }
        
        
}


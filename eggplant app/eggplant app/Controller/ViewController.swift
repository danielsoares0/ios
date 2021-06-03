//
//  ViewController.swift
//  eggplant app
//
//  Created by Daniel Soares on 01/06/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet var felicidadeTextField: UITextField!
    
    @IBAction func adicionar(_ sender: Any) {
        var nome = nomeTextField.text
        var felicidade = felicidadeTextField.text
        
        print("Comi \(nome) e fiquei com felicidade \(felicidade)")
    }
    
}


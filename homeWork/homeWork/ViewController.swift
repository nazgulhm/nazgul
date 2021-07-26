//
//  ViewController.swift
//  homeWork
//
//  Created by NAZGUL on 25/7/21.
//

import UIKit


class ViewController:  UIViewController {
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var textUser: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    @IBAction func signlnButton(_ sender: Any) {
        if textUser.text == "Nazgul" && textPassword.text == "Geektech" {
            titleLable.text = "Все верно"
            titleLable.textColor = UIColor.green
        }
        else {
            titleLable.text = "Ошибка"
            titleLable.textColor = UIColor.red

        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


//
//  ViewController.swift
//  Serafia-Soft
//
//  Created by Gmo Ginppian on 16/05/18.
//  Copyright © 2018 BUAP. All rights reserved.
//

import UIKit
import Cesar

class ViewController: UIViewController {

    
    @IBOutlet weak var txtInputEncrypt: UITextField!
    @IBOutlet weak var lblOutputEncrypt: UILabel!
    
    @IBOutlet weak var txtInputDecrypt: UITextField!
    @IBOutlet weak var lblOutputDecrypt: UILabel!
    
    let keyword = "MEM092"
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func buttonEncrypt(_ sender: Any) {
        let csr = Cesar()
        let currentText = txtInputEncrypt.text ?? ""
        let cryptText = csr.encrypt(text: currentText, keyword: keyword)
        lblOutputEncrypt.text = cryptText
    }
    
    @IBAction func buttonDecrypt(_ sender: Any) {
        let csr = Cesar()
        let cryptText = txtInputDecrypt.text ?? ""
        let currentText = csr.decrypt(text: cryptText, keyword: keyword)
        lblOutputDecrypt.text = currentText
    }
    
}


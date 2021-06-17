//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Magno Miranda Dantas on 16/04/21.
//  Copyright © 2021 Eric Brito. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    @IBOutlet weak var lbMessage: UILabel!
    var message: Message!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeColor(_ sender: UIButton) {
        if let referece = self as? ColorPickerDelegate {
            let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
            colorPicker.modalPresentationStyle = .overCurrentContext
            colorPicker.delegate = referece
            present(colorPicker, animated: true, completion: nil)
        }
        
    }
    
    

}

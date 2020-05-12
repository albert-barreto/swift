//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Albert Barreto on 10/05/20.
//  Copyright © 2020 Eric Brito. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    @IBOutlet weak var lbMessage: UILabel!
    var message: Message!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeColor(_ Sender: UIButton) {
        if let delegate = self as? ColorPickerDelegate {
            let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
                  colorPicker.modalPresentationStyle = .overCurrentContext
                  colorPicker.delegate = delegate
                  present(colorPicker, animated: true, completion: nil)
        }
    }

}

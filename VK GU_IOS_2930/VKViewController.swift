//
//  VKViewController.swift
//  VK GU_IOS_2930
//
//  Created by Роберт on 30.11.2022.
//

import UIKit

class VKViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(hideScreen))
        
        view.addGestureRecognizer(tapGR)
        
    }
    @objc func hideScreen() {
        view.endEditing(true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(willShowKeyboard), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(willHideKeyboard), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    @objc func willShowKeyboard(_ notification: Notification) {
        print(#function)
    }
    
    @objc func willHideKeyboard(_ notification: Notification) {
        print(#function)
    }
    
}

//
//  VKViewController.swift
//  VK GU_IOS_2930
//
//  Created by Роберт on 30.11.2022.
//

import UIKit

class VKViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
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
     
        
        guard let info = notification.userInfo as NSDictionary?,
              let keyboardSize = info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as?
                NSValue else {return}
        let keyBoardHeight = keyboardSize.cgRectValue.size.height
        scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyBoardHeight, right: 0)
        
    }
    
    @objc func willHideKeyboard(_ notification: Notification) {
    
        
        scrollView.contentInset = .zero
    }
    
    
    
    @IBAction func tapButtonLogin(_ sender: Any) {
        
        guard let login = loginTextField.text,
              let password = passwordTextField.text,
              login == "",
              password == "" else {
            let alert = UIAlertController(title: "Error", message: "Error login/password", preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "OK", style: .default) {_ in
                self .loginTextField.text?.removeAll()
                self.passwordTextField.text = ""
            }
            
            alert.addAction(okButton)
            present (alert, animated: true,completion: nil)
            
            return
        
    }
        
        performSegue(withIdentifier: "Login", sender: nil)
        
    }
}


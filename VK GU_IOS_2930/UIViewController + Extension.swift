//
//  UIViewController + Extension.swift
//  VK GU_IOS_2930
//
//  Created by Роберт on 02.12.2022.
//

import UIKit

extension UIViewController {
    
    func show(message: String) {
        
        let alertVC = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertVC.addAction(okAction)
        present(alertVC, animated: true, completion: nil)
    }
}

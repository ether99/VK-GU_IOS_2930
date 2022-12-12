//
//  AllFriendController.swift
//  VK GU_IOS_2930
//
//  Created by Роберт on 05.12.2022.
//

import UIKit

class AllFriendController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    let friends = [
     
         Friends( image: UIImage.init(named: "Alex"), name: "Alex"),
         Friends( image: UIImage.init(named: "Denis"), name: "Denis"),
         Friends( image: UIImage.init(named: "Miron"), name: "Miron"),
         Friends( image: UIImage.init(named: "Egor"), name: "Egor"),
         Friends( image: UIImage.init(named: "Pavel"), name: "Pavel"),
         Friends( image: UIImage.init(named: "Mihail"), name: "Mihail"),
         Friends( image: UIImage.init(named: "Maxim"), name: "Maxim"),
         Friends( image: UIImage.init(named: "Leonid"), name: "Leonid"),
     ]
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

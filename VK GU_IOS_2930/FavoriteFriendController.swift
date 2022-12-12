//
//  FavoriteFriendController.swift
//  VK GU_IOS_2930
//
//  Created by Роберт on 04.12.2022.
//

import UIKit

class FavoriteFriendController: UITableViewController {
    
    
    
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

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as? FriendCell else { preconditionFailure("FriendCell cannot")
        }
        cell.labelFriendCell.text = friends[indexPath.row].name
        cell.imageFriendCell.image = friends[indexPath.row].image
        
        print(indexPath.section)
        print(indexPath.row)

        return cell
    }
   

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

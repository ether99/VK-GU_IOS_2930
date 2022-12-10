//
//  FriendsTableViewController.swift
//  VK GU_IOS_2930
//
//  Created by Роберт on 08.12.2022.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    let myFriends = [
        
        Friend(image: UIImage(named: "avatar"), name: "Anton", friends: newFriend),
        Friend(image: UIImage(named: "avatar"), name: "Bogdan", friends: newFriend),
        Friend(image: UIImage(named: "avatar"), name: "Victor", friends: newFriend),
        Friend(image: UIImage(named: "avatar"), name: "Vlad", friends: newFriend),
        Friend(image: UIImage(named: "avatar"), name: "Miron", friends: newFriend),
        Friend(image: UIImage(named: "avatar"), name: "Oleg", friends: newFriend),
        Friend(image: UIImage(named: "avatar"), name: "Roman", friends: newFriend),
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
        return myFriends.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as? FriendTableViewCell else {
            preconditionFailure("Error")
        }
        cell.imageAvatar.image = myFriends[indexPath.row].image
        cell.nameLabel.text = myFriends[indexPath.row].name
        
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueCollectionFriends",
           let destinationVC = segue.destination as? FriendsCollectionViewController,
           let indexPath = tableView.indexPathForSelectedRow {
            
            destinationVC.title = myFriends[indexPath.row].name
            destinationVC.arrayFriend = myFriends[indexPath.row].friends
        }
    }
    
    
    
}

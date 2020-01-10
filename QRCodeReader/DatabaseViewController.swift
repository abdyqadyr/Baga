//
//  DatabaseViewController.swift
//  BagaApp
//
//  Created by Abdykadyr Maksat on 13/12/2019.
//  Copyright © 2019 Maksat. All rights reserved.
//

import UIKit
import FirebaseDatabase

class DatabaseViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var items: [Products] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemsCell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row].name
        cell.detailTextLabel?.text = (items[indexPath.row].price?.toString())! + " ₸"
        return cell
        
    }
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let parent = Database.database().reference().child("Products")
        parent.observe(.value) { [weak self](snapshot) in
            self?.items.removeAll()
            for child in snapshot.children{
                if let snap = child as? DataSnapshot{
                    let product = Products(snapshot: snap)
                    self?.items.append(product)
                    
                }
            }
            self?.items.reverse()
            self?.myTableView.reloadData()
            
        }
    }
    
    @IBAction func closeVC(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
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


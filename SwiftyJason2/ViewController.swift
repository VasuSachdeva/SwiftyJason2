//
//  ViewController.swift
//  SwiftyJason2
//
//  Created by MAC on 22/03/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
	
	var arrayOfData = [[String:Any]]()

	@IBOutlet weak var tableViewOulet: UITableView!
	@IBOutlet weak var searchTextField: UITextField!
	override func viewDidLoad() {
		super.viewDidLoad()
		self.tableViewOulet.delegate = self
		self.tableViewOulet.dataSource = self
			}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func searchButton(_ sender: UIButton) {
		let searchText = searchTextField.text!
		APIController().singup(searchText: searchText) { (places) in
			self.arrayOfData = places.placesarray
			DispatchQueue.main.async{
			self.tableViewOulet.reloadData()
			}
		}
	}
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return arrayOfData.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
	let cell = tableViewOulet.dequeueReusableCell(withIdentifier: "cellid", for: indexPath) as! InfoCell
		let obj =  arrayOfData[indexPath.row]
		cell.nameLabel.text = (obj["name"] as! String)
		cell.adressLabel.text = (obj["formatted_address"] as! String)
		cell.ratingLabel.text = "Rating :- \(obj["rating"]!) ⭐"
		
		return cell
	}
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 150
	}
}


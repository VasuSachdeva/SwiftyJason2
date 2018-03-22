//
//  DataModel.swift
//  SwiftyJason2
//
//  Created by MAC on 22/03/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import Foundation

struct Places {
	var name = String()
	var formatted_address = String()
	var rating = Double()
	var placesarray = [[String:Any]]()
	init(p: JSON)
	{
		for result in p["results"].arrayValue {
			let name = result["name"].stringValue
			let formatted_address = result["formatted_address"].stringValue
			let rating = result["rating"].doubleValue
			let obj = ["name": name, "formatted_address": formatted_address, "rating": rating] as [String : Any]
			placesarray.append(obj)
}
}
}

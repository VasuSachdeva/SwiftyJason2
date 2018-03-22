//
//  APIController.swift
//  SwiftyJason2
//
//  Created by MAC on 22/03/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import Foundation

		class APIController
		{
			func singup(searchText : String, success:@escaping (Places)-> Void){
               let requiredText : String = searchText.replacingOccurrences(of: " ", with: "+")
			let urlString = "https://maps.googleapis.com/maps/api/place/textsearch/json?query=\(requiredText)&key=AIzaSyCxrcfS70lxb-pF-M-RPJNfFkz29izsPoE"

				networkController().GET(URL: urlString) { (data) in
					let places = Places(p: data)
					success(places)
}
			}
}

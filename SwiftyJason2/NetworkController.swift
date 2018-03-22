//
//  NetworkController.swift
//  SwiftyJason2
//
//  Created by MAC on 22/03/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import Foundation
class networkController{
	
	func GET(URL: String,success:@escaping (JSON)-> Void){
		
		

		let request = NSMutableURLRequest(url: NSURL(string: URL)! as URL,cachePolicy: .useProtocolCachePolicy,timeoutInterval: 10.0)
		
	request.httpMethod = "GET"
		
		let session = URLSession.shared
		let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
			guard error == nil else {
				print("returning error")
				return
			}
			do{
			guard let d = data else {
				print("not returning data")
				return
			}
				let json = try! JSON(data: d)
				success(json)
			

}
		})
	dataTask.resume()
}
}

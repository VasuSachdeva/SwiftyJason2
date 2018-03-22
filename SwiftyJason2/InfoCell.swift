//
//  InfoCell.swift
//  SwiftyJason2
//
//  Created by MAC on 22/03/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class InfoCell: UITableViewCell {

	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var adressLabel: UILabel!
	@IBOutlet weak var ratingLabel: UILabel!
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

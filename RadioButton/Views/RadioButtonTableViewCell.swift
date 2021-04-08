//
//  RadioButtonTableViewCell.swift
//  RadioButton
//
//  Created by Lorenzo Ilardi on 08/04/21.
//

import UIKit

class RadioButtonTableViewCell: UITableViewCell {

	@IBOutlet weak var label: UILabel!
	@IBOutlet weak var imageForButton: UIImageView!
	
	var selectedBtn: Bool = false {
		didSet {
			self.imageForButton.image = isAbilitato() ? UIImage(systemName: "record.circle.fill") : UIImage(systemName: "record.circle")
		}
	}
	
	func isAbilitato() -> Bool {
		return self.selectedBtn
	}
    
}

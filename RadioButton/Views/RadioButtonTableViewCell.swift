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
			self.imageForButton.image = isAbilitato() ? UIImage(named: "record.circle.fill") : UIImage(named: "record.circle")
		}
	}
	
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
	
	func isAbilitato() -> Bool {
		return self.selectedBtn
	}
    
}

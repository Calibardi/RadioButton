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

    var managedElem: SelectionElement? {
        didSet {
            self.label.text = self.managedElem?.labelString
            self.imageForButton.image = isAbilitato() ? UIImage(systemName: "record.circle.fill") : UIImage(systemName: "record.circle")
            
        }
    }
	
	func isAbilitato() -> Bool {
        return self.managedElem?.selected ?? false
	}
    
}

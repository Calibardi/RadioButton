//
//  RadioButtonView.swift
//  RadioButton
//
//  Created by Lorenzo Ilardi on 08/04/21.
//

import UIKit

class RadioButtonView: UIView {
	
	@IBOutlet var contentView: RadioButtonView!
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		commonInit()
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
		commonInit()
	}
	
	private func commonInit() {
		
		Bundle.main.loadNibNamed("RadioButtonView", owner: self, options: nil)
		addSubview(contentView)
		contentView.frame = self.bounds
		contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
	}
	
}

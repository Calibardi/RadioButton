//
//  ViewController.swift
//  RadioButton
//
//  Created by Lorenzo Ilardi on 08/04/21.
//

import UIKit

class MainViewController: UIViewController {

	@IBOutlet weak var radioBtnView: RadioButtonView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.radioBtnView.selectionArray.append(SelectionElement(string: "Placeholder 1"))
        self.radioBtnView.selectionArray.append(SelectionElement(string: "Placeholder 2"))
        self.radioBtnView.selectionArray.append(SelectionElement(string: "Placeholder 3"))
	}


}


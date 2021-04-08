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
		
		self.radioBtnView.selectionLabelsNumber = 3
		self.radioBtnView.labelsArray.append(SelectionElement(string: "Prova1"))
		self.radioBtnView.labelsArray.append(SelectionElement(string: "Prova2"))
		self.radioBtnView.labelsArray.append(SelectionElement(string: "Prova3"))
	}


}


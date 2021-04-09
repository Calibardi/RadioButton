//
//  ViewController.swift
//  RadioButton
//
//  Created by Lorenzo Ilardi on 08/04/21.
//

import UIKit

let darkSlateBlue: UIColor = UIColor(red: 33/255, green: 71/255, blue: 97/255, alpha: 1.0)

class MainViewController: UIViewController {

	@IBOutlet weak var radioBtnView: RadioButtonView!
	@IBOutlet weak var radioBtnView2: RadioButtonView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.radioBtnView.selectionArray.append(SelectionElement(string: "Placeholder 1"))
        self.radioBtnView.selectionArray.append(SelectionElement(string: "Placeholder 2"))
        self.radioBtnView.selectionArray.append(SelectionElement(string: "Placeholder 3"))
		self.radioBtnView.selectionArray.append(SelectionElement(string: "Placeholder 4"))
		
		self.radioBtnView2.selectionArray.append(SelectionElement(string: "Placeholder più lungo 1"))
		self.radioBtnView2.selectionArray.append(SelectionElement(string: "Placeholder più lungo 2"))
		self.radioBtnView2.selectionArray.append(SelectionElement(string: "Placeholder più lungo 3"))
		self.radioBtnView2.selectionArray.append(SelectionElement(string: "Placeholder più lungo 4"))
		
		self.view.backgroundColor = darkSlateBlue
		
	}


}


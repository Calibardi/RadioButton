//
//  RadioButtonView.swift
//  RadioButton
//
//  Created by Lorenzo Ilardi on 08/04/21.
//

import UIKit

struct SelectionElement {
	
	var selected: Bool
	var labelString: String
	
	init(string: String) {
		
		self.labelString = string
		self.selected	 = false
	}
}
class RadioButtonView: UIView, UITableViewDelegate, UITableViewDataSource {

	var selectionLabelsNumber: Int		= 2 //il minimo è due, il massimo 5
	var labelsArray: [SelectionElement] = [SelectionElement]()
	
	@IBOutlet var contentView: RadioButtonView!
	@IBOutlet weak var tableView: UITableView!
	
	//MARK: - class inits
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
		
		tableView.delegate = self
		tableView.dataSource = self
		
		let cellNib = UINib(nibName: "RadioButtonViewCell", bundle: nil)
		self.tableView.register(cellNib, forCellReuseIdentifier: "RadioButtonViewCell")
		
		print("commonInit called")
	}
	
	//MARK: - Class methods
	func checkCardinality() -> Bool {
		return self.selectionLabelsNumber == self.labelsArray.count
	}
	
	func disableAllSelections() {
		for i in labelsArray.indices {
			labelsArray[i].selected = false
		}
	}
	
	//MARK: - tableView methods
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return self.selectionLabelsNumber
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "RadioButtonViewCell", for: indexPath) as! RadioButtonTableViewCell
		
		cell.label.text 	= labelsArray[indexPath.row].labelString
		cell.selectedBtn 	= labelsArray[indexPath.row].selected
		
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		
		disableAllSelections()
		labelsArray[indexPath.row].selected = true
		tableView.beginUpdates()
		tableView.endUpdates()
		
	}
}

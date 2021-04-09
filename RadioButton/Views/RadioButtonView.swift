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

	var selectionArray: [SelectionElement] = [SelectionElement]()
	
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
		self.layer.backgroundColor = CGColor(red: 0, green: 0, blue: 0, alpha: 0)

		//Corner radius delle varie view, ordinate secondo gerarchia
		self.contentView.layer.cornerRadius = 15
		self.tableView.layer.cornerRadius 	= 15
		
		tableView.delegate = self
		tableView.dataSource = self
		
		let cellNib = UINib(nibName: "RadioButtonTableViewCell", bundle: nil)
		self.tableView.register(cellNib, forCellReuseIdentifier: "RadioButtonTableViewCell")
		
		print("commonInit called")
	}
	
	//MARK: - Class methods
	
	func disableAllSelections() {
		for i in selectionArray.indices {
			selectionArray[i].selected = false
		}
    }
	
	//MARK: - tableView methods
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.selectionArray.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "RadioButtonTableViewCell", for: indexPath) as! RadioButtonTableViewCell
        
        cell.managedElem = selectionArray[indexPath.row]
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
		disableAllSelections()
		selectionArray[indexPath.row].selected.toggle()
		self.tableView.reloadData()
   
	}
}

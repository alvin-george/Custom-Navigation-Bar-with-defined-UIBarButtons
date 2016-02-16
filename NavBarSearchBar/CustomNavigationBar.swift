//
//  CustomNavigationBar.swift
//  NavBarSearchBar
//
//  Created by fingent on 02/02/16.
//  Copyright © 2016 fingent. All rights reserved.
//

import UIKit
import Foundation

let navigationItem : UINavigationItem = UINavigationItem()

class CustomNavigationBar: UINavigationBar {

	override init(frame: CGRect) {
		super.init(frame: frame)

		self.backgroundColor = UIColor.redColor()

	}
	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)!
	}
	override func drawRect(rect: CGRect) {

	}
	func addUIButtonToUIBarButtonitems(leftButton:UIButton,leftButtonFrame:CGRect,rightButton:UIButton,rightButtonFrame:CGRect)
	{
		let leftView = UIView(frame: leftButtonFrame)
		leftView.addSubview(leftButton)

		let leftItem:UIBarButtonItem = UIBarButtonItem(customView: leftView)
		navigationItem.leftBarButtonItem = leftItem

		let rightView = UIView(frame: rightButtonFrame)
		rightView.addSubview(rightButton)

		let rightItem:UIBarButtonItem = UIBarButtonItem(customView: rightView)
		navigationItem.rightBarButtonItem = rightItem

		items = [navigationItem]
	}
}

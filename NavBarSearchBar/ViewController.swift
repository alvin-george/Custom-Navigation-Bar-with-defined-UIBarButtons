//
//  ViewController.swift
//  NavBarSearchBar
//
//  Created by fingent on 30/01/16.
//  Copyright © 2016 fingent. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UINavigationBarDelegate {

	var leftSearchBarButtonItem: UIBarButtonItem?
	var rightSearchBarButtonItem: UIBarButtonItem?

	override func viewDidLoad() {
		super.viewDidLoad()
	self.navigationController?.navigationBarHidden =  false
		
		let navigationBar = UINavigationBar(frame: CGRectMake(0, 0, self.view.frame.size.width, 64)) // Offset by 20 pixels vertically to take the status bar into account

		navigationBar.backgroundColor = UIColor.redColor()
		navigationBar.delegate = self;

		// Create a navigation item with a title
		let navigationItem = UINavigationItem()

		//menu button
		let menubutton: UIButton = UIButton(frame: CGRectMake(0, 0, 30, 30))
		menubutton.setImage(UIImage(named: "menu"), forState: UIControlState.Normal)
		menubutton.addTarget(self, action: "btn_clicked", forControlEvents: UIControlEvents.TouchUpInside)

		//menu button custom view
		let leftView = UIView(frame: CGRectMake(0,0,30,30))
		leftView.addSubview(menubutton)

		//left uibarbutton
		let leftItem:UIBarButtonItem = UIBarButtonItem(customView: leftView)
		navigationItem.leftBarButtonItem = leftItem


		//searchButton
		let searchbutton: UIButton = UIButton()
		searchbutton.setImage(UIImage(named: "search1x"), forState: UIControlState.Normal)
		searchbutton.frame = CGRectMake(0, 0, 30, 30)
		searchbutton.addTarget(self, action: "btn_clicked", forControlEvents: UIControlEvents.TouchUpInside)

		//menu button custom view
		let rightView = UIView(frame: CGRectMake(0,0,30,30))
		rightView.addSubview(searchbutton)

		//right uibarbutton
		let rightItem:UIBarButtonItem = UIBarButtonItem(customView: rightView)
		navigationItem.rightBarButtonItem = rightItem

		// Assign the navigation item to the navigation bar
		navigationBar.items = [navigationItem]

		// Make the navigation bar a subview of the current view controller
		self.view.addSubview(navigationBar)

	}
	func btn_clicked()
	{
		print("button click")
	}
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


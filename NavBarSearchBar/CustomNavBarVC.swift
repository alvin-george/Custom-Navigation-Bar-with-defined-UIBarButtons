//
//  CustomNavBarVC.swift
//  NavBarSearchBar
//
//  Created by fingent on 02/02/16.
//  Copyright © 2016 fingent. All rights reserved.
//

import UIKit

class CustomNavBarVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		self.styleCustomNavigationBar()
    }
	func styleCustomNavigationBar() {

		self.navigationController?.setNavigationBarHidden(true, animated: false)

		let navigationBar : CustomNavigationBar = CustomNavigationBar(frame: CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), 64.0))

		//menu button
		let menubutton: UIButton = UIButton(frame: CGRectMake(0,0,30,30))
		menubutton.setImage(UIImage(named: "menu"), forState: UIControlState.Normal)
		menubutton.addTarget(self, action: "backButtonDidClicked", forControlEvents: UIControlEvents.TouchUpInside)

		//search button
		let searchbutton: UIButton = UIButton(frame: CGRectMake(0,0,30,30))
		searchbutton.setImage(UIImage(named: "search1x"), forState: UIControlState.Normal)
		searchbutton.addTarget(self, action: "backButtonDidClicked", forControlEvents: UIControlEvents.TouchUpInside)


		navigationBar.addUIButtonToUIBarButtonitems(menubutton, leftButtonFrame: CGRectMake(0,0,30,30), rightButton: searchbutton, rightButtonFrame: CGRectMake(0,0,30,30))

		self.view.addSubview(navigationBar)
	}

	func backButtonDidClicked()
	{
		print("CLICK ")
	}
}

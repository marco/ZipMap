//
//  SignUpViewController.swift
//  ZipMap
//
//  Created by Marco Burstein on 6/19/16.
//  Copyright © 2016 Skunk. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
	
	@IBOutlet var nameView: UIView!
	@IBOutlet var birthView: UIView!
	@IBOutlet var usernameEmailView: UIView!

	@IBOutlet var firstNameField: UITextField!
	@IBOutlet var lastNameField: UITextField!
	@IBOutlet var nameNextButton: UIButton!
	
	@IBOutlet var birthPicker: UIDatePicker!
	@IBOutlet var birthNextButton: UIButton!
	
    override func viewDidLoad() {
        super.viewDidLoad()

		setUpNameView()
		setUpBirthView()
		// Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	@IBAction func nameFieldUpdated(sender: AnyObject) {
		if(firstNameField.text != "" || lastNameField.text != ""){
			nameNextButton.enabled = true
		}
		else{
			nameNextButton.enabled = false
		}
	}
	@IBAction func nameNextPressed(sender: AnyObject) {
		self.view = birthView
	}
	@IBAction func birthFieldUpdated(sender: AnyObject) {
		let minYearsAway = 13
		//current by default
		let currentDate = NSDate()
		let maximumYear = NSCalendar.currentCalendar().component(NSCalendarUnit.Year, fromDate: currentDate) - minYearsAway
		let selectedYear = NSCalendar.currentCalendar().component(NSCalendarUnit.Year, fromDate: birthPicker.date)
		if(selectedYear <= maximumYear){
			birthNextButton.enabled = true
		}
		else{
			birthNextButton.enabled = false
		}
	}
	@IBAction func birthNextPressed(sender: AnyObject){
		self.view = usernameEmailView
	}
	
	
	
	func setUpNameView(){
		nameNextButton.setBackgroundImage(UIImage(named: "buttonBackground"), forState: UIControlState.Normal)
		nameNextButton.setBackgroundImage(UIImage(named: "buttonClickedBackground"), forState: UIControlState.Highlighted)
		nameNextButton.setBackgroundImage(UIImage(named: "buttonDisabledBackground"), forState: UIControlState.Disabled)
		
		nameNextButton.enabled = false
	}
	func setUpBirthView(){
		birthNextButton.setBackgroundImage(UIImage(named: "buttonBackground"), forState: UIControlState.Normal)
		birthNextButton.setBackgroundImage(UIImage(named: "buttonClickedBackground"), forState: UIControlState.Highlighted)
		birthNextButton.setBackgroundImage(UIImage(named: "buttonDisabledBackground"), forState: UIControlState.Disabled)
		
		birthNextButton.enabled = false
	}

	
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

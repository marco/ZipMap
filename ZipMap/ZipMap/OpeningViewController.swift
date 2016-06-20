//
//  OpeningViewController.swift
//  ZipMap
//
//  Created by Marco Burstein on 6/20/16.
//  Copyright © 2016 Skunk. All rights reserved.
//

import UIKit

class OpeningViewController: UIViewController {

	@IBOutlet var openingScrollView: UIScrollView!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		setUpScrollView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

	func setUpScrollView(){
		//left
		let logInViewController = LogInViewController(nibName: "LogInViewController", bundle: nil)
		self.addChildViewController(logInViewController)
		openingScrollView.addSubview(logInViewController.view)
		logInViewController.didMoveToParentViewController(self)
		
		//middle
		let welcomeViewController = WelcomeViewController(nibName: "WelcomeViewController", bundle: nil)
		self.addChildViewController(welcomeViewController)
		openingScrollView.addSubview(welcomeViewController.view)
		welcomeViewController.didMoveToParentViewController(self)
		
		
		//right
		let signUpViewController = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
		self.addChildViewController(signUpViewController)
		openingScrollView.addSubview(signUpViewController.view)
		signUpViewController.didMoveToParentViewController(self)
		
		//frames
		var newWelcomeFrame = welcomeViewController.view.frame
		newWelcomeFrame.origin.x = self.view.frame.width
		welcomeViewController.view.frame = newWelcomeFrame
		
		var newSignUpFrame = signUpViewController.view.frame
		newSignUpFrame.origin.x = self.view.frame.width * 2
		signUpViewController.view.frame = newSignUpFrame
		
		//finally
		self.openingScrollView.contentSize = CGSizeMake(self.view.frame.width * 3, self.view.frame.height)
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

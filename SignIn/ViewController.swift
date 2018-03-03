//
//  ViewController.swift
//  SignIn
//
//  Created by Kateryna Zakharchuk on 3/3/18.
//  Copyright © 2018 Kateryna Zakharchuk. All rights reserved.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController, GIDSignInUIDelegate {
    
    @IBOutlet weak var GoogleSignInButton: GIDSignInButton!
    @IBOutlet weak var GoogleSignOutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance().uiDelegate = self
        
        //Native button
        
        //        let signInButton = GIDSignInButton(frame: CGRect.init(x: 0, y: 0, width: 100, height: 50))
        //        signInButton.center = view.center
        //
        //        view.addSubview(signInButton)
    }
    
    // Change account
    @IBAction func didTapSignOut(_ sender: Any) {
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().signOut()
    }
    
    @IBAction func googlePlusButtonTouchUpInside(_ sender: Any) {
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().signIn()
    }
    //MARK:- Google Delegate
    func sign(inWillDispatch signIn: GIDSignIn!, error: Error!) {
        
    }
    
    func sign(_ signIn: GIDSignIn!,
              present viewController: UIViewController!) {
        self.present(viewController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


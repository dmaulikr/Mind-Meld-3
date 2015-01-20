//
//  LoginViewController2.swift
//  Mind Meld 3
//
//  Created by Louis Konig on 1/17/15.
//  Copyright (c) 2015 Louis Konig. All rights reserved.
//

import UIKit

class LoginViewController2: UIViewController {
    
    let service = "swiftLogin"
    let userAccount = "swiftLoginUser"
    let key = "RandomKey"
    


    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var displayNameTextField: UITextField!
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var logInSavePassSwitch: UISwitch!
    
    @IBAction func loginVerifyButton(sender: AnyObject) {
    
     
        
        
        func userSignUp() {
            
            var user = PFUser()
            user.username = self.usernameTextField.text
            user.password = self.passwordTextField.text
            user.email = self.emailTextField.text
            user["DisplayName"] = self.displayNameTextField.text
            
            
            user.signUpInBackgroundWithBlock {
                (succeeded: Bool!, error: NSError!) -> Void in
                if error == nil {
                    // Hooray! Let them use the app now.
                    //self.messageLabel.text = "User Signed Up";
                    PFUser.logInWithUsernameInBackground(self.usernameTextField.text, password:self.passwordTextField.text) {
                        (user: PFUser!, error: NSError!) -> Void in
                        if user != nil {
                            // Do stuff after successful login.
                            self.usernameTextField.text=""
                            self.passwordTextField.text=""
                            self.emailTextField.text=""
                            self.displayNameTextField.text=""
                            
                            self.performSegueWithIdentifier("newLoginSeg", sender: self)
                        } else {
                            // The login failed. Check error to see why.
                            
                        }
                    }

                } else {
                    // Show the errorString somewhere and let the user try again.
                }
            }
            
            
        }
        
        
        
    
        var usrEntered = usernameTextField.text
        var pwdEntered = passwordTextField.text
        var emlEntered = emailTextField.text
        var dispEntered = displayNameTextField.text
        
        if usrEntered != "" && pwdEntered != "" && dispEntered != "" && emlEntered != "" {
            // If not empty then yay, do something
            self.messageLabel.text = ""
            userSignUp()
            
            
        } else {
            self.messageLabel.text = "All Fields Required"
        }
    

        
        
        

        
        
        
    
    
    }

 


    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewDidAppear(animated: Bool) {
        var currentUser = PFUser.currentUser()
        if currentUser != nil {
            // Do stuff with the user
              self.performSegueWithIdentifier("newLoginSeg", sender: self)
            println("The current user: \(currentUser)")
        } else {
            // Show the signup or login screen
        }
        
        
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

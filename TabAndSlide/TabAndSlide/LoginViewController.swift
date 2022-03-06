//
//  LoginViewController.swift
//  TabAndSlide
//
//  Created by Halil on 4.03.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    internal func alarm(message : String) {
       let defaultAction = UIAlertAction(title: "Okay",
                            style: .default) { (action) in
       }
       
       let alert = UIAlertController(title: "Error!",
             message: message,
             preferredStyle: .alert)
       alert.addAction(defaultAction)
            
       self.present(alert, animated: true) {
          // The alert was presented
       }
    }
    
    @IBAction private func buttonClick(_ sender: Any) {
        var errorMessage = ""
        if ( usernameTextField.text == "" && passwordTextField.text == "") {
            errorMessage = "Please Enter Your Username and Password."
            alarm(message: errorMessage)
        } else if (usernameTextField.text == ""){
            errorMessage = "Please Enter Your Username."
            alarm(message: errorMessage)
        }   else if (passwordTextField.text == ""){
            errorMessage = "Please Enter Your Password."
            alarm(message: errorMessage)
        } else {
            errorMessage = "Succesfuly Logged In."
            alarm(message: errorMessage)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

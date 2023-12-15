//
//  ViewController.swift
//  Shoping
//
//  Created by mjeed on 29/11/2023.
//

import UIKit

class SignInVC: UIViewController {
    
    
    // MARK: - Outlets
    @IBOutlet  var mainView: [UIView]!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!

    @IBOutlet weak var showPassord: UIButton!
    
    // MARK: - Variables

    var isPasswordVisible:Bool = false
    
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configurView()

    }
    
    // MARK: -  Configure Action - Func
    
   private func configurView() {
       
       loginButton.addCornerRadius(radius: 20)
        for border in [emailTextField , passwordTextField] {
            border?.addBorder(color: Colors.CE6E6E6, with: 0.7)
            border?.addCornerRadius(radius: 20)
        }
       
       for itme in mainView {
           itme.addCornerRadius(radius: 24)
       }
       
    }

    @IBAction func showPasswordButton(_ sender: UIButton) {
        
        
        isPasswordVisible = !isPasswordVisible
        passwordTextField.isSecureTextEntry = isPasswordVisible
        showPassord.setImage(UIImage(named: isPasswordVisible ? "eye" : "eye-off"), for: .normal)
        
    }
    @IBAction func signUpClickedButton(_ sender: UIButton) {
        guard let vc = self.storyboard?.instantiateViewController(identifier: "SginUpVC") else {return}
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
        
    }
    
    @IBAction func loginClickedButton(_ sender: UIButton) {

        emailTextField.addBorderAndWith(UIColor.red, with: 1.0)
        passwordTextField.addBorderAndWith(UIColor.systemRed, with: 1.0)
    }
    @IBAction func forGotPasswprdButton(_ sender: UIButton) {
//        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "ForgetPasswordVC") else {return}
//        vc.modalPresentationStyle = .fullScreen
//        self.present(vc, animated: true)
        
        presentViewController(withIdentifier: "ForgetPasswordVC")

    }
    
    
    @IBAction func signupClickedButton(_ sender: UIButton) {
        presentViewController(withIdentifier: "SginUpVC")
        
    }
    

}


extension SignInVC {
    private func presentViewController(withIdentifier identifier: String) {
             guard let vc = self.storyboard?.instantiateViewController(withIdentifier: identifier) else { return }
             vc.modalPresentationStyle = .fullScreen
             self.present(vc, animated: true)
         }
}

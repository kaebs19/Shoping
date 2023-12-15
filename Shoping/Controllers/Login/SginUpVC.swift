//
//  SginUpVC.swift
//  Shoping
//
//  Created by mjeed on 30/11/2023.
//

import UIKit

class SginUpVC: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var againPasswordTextField: UITextField!
    
    // add border
    @IBOutlet  var aliTextFiled: [UITextField]!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak  var showPassword: UIButton!
    @IBOutlet weak  var showAgainPassword: UIButton!

    // MARK: - Variables
    var isPasswordVisible = false
    
    
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
                configurView()

    }
    
    // MARK: -  Configure Action - Func
    
   private func configurView() {
       
       for item in aliTextFiled {
           item.addCornerRadius(radius: 24)
           item.addBorder(color: Colors.CE6E6E6, with: 1)
       }
       
       loginButton.addCornerRadius(radius: 24)
       mainView.addCornerRadius(radius: 20)
    }
    
    @IBAction func showPasswordClickedButtons(_ sender: UIButton) {
        
        isPasswordVisible = !isPasswordVisible
        
        showPassword.setImage(UIImage(named: isPasswordVisible ? "eye" : "eye-off"), for: .normal)
        showAgainPassword.setImage(UIImage(named: isPasswordVisible ? "eye" :"eye-off"), for: .normal)
        emailTextField.isSecureTextEntry = isPasswordVisible
        againPasswordTextField.isSecureTextEntry = isPasswordVisible
    }
    
    @IBAction func backClickedButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func signinClickedButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }


}


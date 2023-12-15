//
//  ForgetPasswordVC.swift
//  Shoping
//
//  Created by mjeed on 03/12/2023.
//

import UIKit

class ForgetPasswordVC: UIViewController {
    
    // MARK: - Outlets

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var mainView: UIView!
    
    // MARK: - Variables

    
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configurView()

    }
    
    // MARK: -  Configure Action - Func
    
    private func configurView() {
        emailTextField.addCornerRadius(radius: 24)
        sendButton.addCornerRadius(radius: 24)
        mainView.addCornerRadius(radius: 24)
    }

    @IBAction func sendClickedButton(_ sender: UIButton) {
        
    }
    

    @IBAction func signupClickedButton(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "SginUpVC")  else {return}
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
    @IBAction func blackButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
}

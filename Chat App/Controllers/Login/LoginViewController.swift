//
//  LoginViewController.swift
//  Chat App
//
//  Created by SHAdON . on 10/9/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.clipsToBounds = true
        return scrollView
    }()
    
    private let emailField: UITextField = {
        let field = UITextField()
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        // this will let them go from the email field to the password field
        field.returnKeyType = .continue
        field.layer.cornerRadius = 12
        field.layer.borderWidth = 1
        // figure out why this is cgColor
        field.layer.borderColor = UIColor.lightGray.cgColor
        field.placeholder = "Email Address..."
        field.setLeftPaddingPoints(10)
        field.setRightPaddingPoints(10)
        
        return field
    }()
    
    private let imageView: UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // this is how you set the title of your view controller
        title = "Log In"
        view.backgroundColor = .white
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Register",
                                                            style: .done,
                                                            target: self,
                                                            // target-action pair for objc methods
                                                            action: #selector(didTapRegister))
        
        // add subviews
        view.addSubview(scrollView)
        scrollView.addSubview(imageView)
        scrollView.addSubview(emailField)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        // here we say that the scrollView should take up all the space in the parent view
        scrollView.frame = view.bounds
        let size = scrollView.width/3
        imageView.frame = CGRect(x: (scrollView.width-size)/2,
                                 y: 20,
                                 width: size,
                                 height: size)
        
        emailField.frame = CGRect(x: 30,
                                  // this says that the email field will be 10 below the logo
                                  y: imageView.bottom+10,
                                  width: scrollView.width-60,
                                  // 52 is the standardized size of a textField height
                                  height: 52)
    }
    
    @objc private func didTapRegister() {
        let vc = RegisterViewController()
        vc.title = "Create Account"
        navigationController?.pushViewController(vc, animated: true)
    }
    

}

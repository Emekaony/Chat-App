//
//  ViewController.swift
//  Chat App
//
//  Created by SHAdON . on 10/5/22.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let loggedIn = UserDefaults.standard.bool(forKey: "logged_in")
        
        // if the user is not logged in, present the login controller
        if (!loggedIn) {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            
            // set the presentation style first before presenting or it will pop up as a card
            nav.modalPresentationStyle = .fullScreen
            self.present(nav, animated: false)
        }
    }

}


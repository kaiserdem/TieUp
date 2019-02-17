//
//  AuthVC.swift
//  TieUp
//
//  Created by Kaiserdem on 17.02.2019.
//  Copyright © 2019 Kaiserdem. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


  }
    

  @IBAction func singInWithEmailBtnWasPressed(_ sender: Any) {
    let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
    present(loginVC!, animated: true, completion: nil)
  }
  
  @IBAction func googleSingInBtnWasPressed(_ sender: Any) {
    
  }
  @IBAction func facebookSingInBtnWasPressed(_ sender: Any) {
    
  }
}

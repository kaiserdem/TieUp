//
//  AuthService.swift
//  TieUp
//
//  Created by Kaiserdem on 17.02.2019.
//  Copyright © 2019 Kaiserdem. All rights reserved.
//

import Foundation
import Firebase

class AuthService {
  
  static let instance = AuthService()
  
//  func registerUser(withEmail email: String, endPassword password: String, userCreatingComplete: @escaping(_ status: Bool, _ error: Error?) -> ()) {
//
//    Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
//      guard let user = user else {     // AuthDataResult
//        userCreatingComplete(false, error)
//        return
//      }
//      let userData = ["provider": user.providerID, "email": user.email]
//      DataService.instance.createDBUser(uid: user.uid, userData: userData)
//      userCreatingComplete(true, nil)
//    }
//
//  }
//
//  func loginUser(withEmail email: String, endPassword password: String, loginComplete: @escaping(_ status: Bool, _ error: Error?) -> ()) {
//    Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
//      guard let user = user else {
//        loginComplete(false, error)
//        return
//      }
//      loginComplete(true, nil)
//    }
//
//  }
  
//  func registerUser(withEmail email: String, andPassword password: String, userCreationComplete: @escaping (_ status: Bool, _ error: Error?) -> ()) {
//    Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
//      guard let user = user else {
//        userCreationComplete(false, error)
//        return
//      }
//
//      let userData = ["provider": user.providerID, "email": user.email]
//      DataService.instance.createDBUser(uid: user.uid, userData: userData)
//      userCreationComplete(true, nil)
//    }
//  }
  func registerUser(withEmail email: String, andPassword password: String, userCreationComplete: @escaping (_ status: Bool, _ error: Error?) -> ()) {
    Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
      guard let user = authResult?.user else {
        userCreationComplete(false, error)
        return
      }
      
      let userData = ["provider": user.providerID, "email": user.email]
      DataService.instance.createDBUser(uid: user.uid, userData: userData)
      userCreationComplete(true, nil)
    }
  }
  func loginUser(withEmail email: String, andPassword password: String, loginComplete: @escaping (_ status: Bool, _ error: Error?) -> ()) {
    Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
      if error != nil {
        loginComplete(false, error)
        return
      }
      loginComplete(true, nil)
    }
  }
}

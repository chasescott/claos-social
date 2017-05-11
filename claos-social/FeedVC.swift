//
//  FeedVC.swift
//  claos-social
//
//  Created by Chase Scott-Pearson on 11/05/2017.
//  Copyright © 2017 Chase Scott-Pearson. All rights reserved.
//

import UIKit
import Firebase
import SwiftKeychainWrapper

class FeedVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func signOutTapped(_ sender: Any) {
        let keychainResult = KeychainWrapper.standard.removeObject(forKey: KEY_UID)
        print("CHASE: ID removed from keychain \(keychainResult)")
        try! FIRAuth.auth()?.signOut() 
        performSegue(withIdentifier: "goToSignIn", sender: nil)
    }
    
}

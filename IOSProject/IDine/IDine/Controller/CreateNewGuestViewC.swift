//
//  CreateNewGuestViewC.swift
//  IDine
//
//  Created by Akhilesh Gupta on 03/12/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class CreateNewGuestViewC: UIViewController {

    //MARK:- IBOutlet
    
    @IBOutlet weak var txtFieldCountryCode: UITextField!
    @IBOutlet weak var txtFieldMembershipNumber: UITextField!
    @IBOutlet weak var txtFieldEmail: UITextField!
    @IBOutlet weak var txtFieldPhoneNumber: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
     //MARK:- Private Function
    private func moveToVerifyUser(){
        let mainSb = UIStoryboard(name: "Main", bundle: nil)
        if let verifyVC = mainSb.instantiateViewController(withIdentifier: "VerifyUserViewC") as? VerifyUserViewC {
            self.navigationController?.pushViewController(verifyVC, animated: true)
            
        }
    }
   
    //MARK:- IBAction
    @IBAction func tappedSubmitBtn(_ sender: Any) {
        moveToVerifyUser()
    }
}

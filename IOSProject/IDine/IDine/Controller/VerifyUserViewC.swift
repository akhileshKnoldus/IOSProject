//
//  VerifyUserViewC.swift
//  IDine
//
//  Created by Akhilesh Gupta on 03/12/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class VerifyUserViewC: UIViewController {
    
    
    @IBOutlet weak var txtFieldMembershipNumber: UITextField!
    
    @IBOutlet weak var txtFieldPhoneNumber: UITextField!
    
    @IBOutlet weak var txtFieldCountryCode: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    //MARK:- Private Function
    private func moveToOTP(){
        let mainSb = UIStoryboard(name: "Main", bundle: nil)
        if let otpVC = mainSb.instantiateViewController(withIdentifier: "OTPVerificationViewC") as? OTPVerificationViewC {
            self.navigationController?.pushViewController(otpVC, animated: true)
            
        }
    }

    @IBAction func tappedSendOTPBtn(_ sender: Any) {
        moveToOTP()
    }
}

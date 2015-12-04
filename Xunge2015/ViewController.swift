//
//  ViewController.swift
//  Xunge2015
//
//  Created by 汤坤 on 15/6/16.
//  Copyright © 2015年 Soup. All rights reserved.
//

import UIKit

class ViewController: BaseViewController, UITextFieldDelegate{

    @IBOutlet weak var enCodeTextField: UITextField!
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var enCodeTop: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.enCodeTextField.delegate = self
        self.usernameTextField.delegate = self
        self.passwordTextField.delegate = self
        
        let enCodeImageView: UIImageView = UIImageView(image: UIImage(named: "entCode"))
        self.enCodeTextField.leftView = enCodeImageView
        self.enCodeTextField.leftViewMode = .Always
        
        let usernameImageView: UIImageView = UIImageView(image: UIImage(named: "username"))
        self.usernameTextField.leftView = usernameImageView
        self.usernameTextField.leftViewMode = .Always
        
        let passwordImageView: UIImageView = UIImageView(image: UIImage(named: "password"))
        self.passwordTextField.leftView = passwordImageView
        self.passwordTextField.leftViewMode = .Always

//        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillShow:"), name: UIKeyboardWillShowNotification, object: nil)
//        
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillHide:"), name: UIKeyboardWillHideNotification, object: nil)
    }
    
    @IBAction func doLogin(sender: AnyObject) {
        if self.enCodeTextField.text!.isEmpty {
            self.showAlertView("请输入企业代码")
        }else if self.usernameTextField.text!.isEmpty {
            self.showAlertView("请输入用户名")
        }else if self.passwordTextField.text!.isEmpty {
            self.showAlertView("请输入密码")
        }else{
            
        }
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        
        UIView.animateWithDuration(0.1, animations: {
            
            switch textField.tag {
            case 1:
                self.enCodeTop.constant = 150;
            case 2:
                self.enCodeTop.constant = 120;
            case 3:
                self.enCodeTop.constant = 90;
            default:
                NSLog("0")
            }
            
            self.enCodeTextField.layoutIfNeeded()
        })
        
        return true
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        switch textField.tag {
        case 1:
            self.usernameTextField.becomeFirstResponder()
        case 2:
            self.passwordTextField.becomeFirstResponder()
        case 3:
            self.passwordTextField.resignFirstResponder()
            UIView.animateWithDuration(0.1, animations: {
                self.enCodeTop.constant = 197;
                self.enCodeTextField.layoutIfNeeded()
            })
        default:
            NSLog("0")
        }
        
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


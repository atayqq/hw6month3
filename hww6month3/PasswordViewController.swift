//
//  PasswordViewController.swift
//  hww6month3
//
//  Created by atay on 27/4/23.
//

import UIKit
import SnapKit

class PasswordViewController: UIViewController {
    
    
    private let myImage: UIImageView = {
            
            let image =  UIImageView()
            image.image = UIImage(named: "Rectangle")
            return image
            
        }()
    
 
    
    
    private let labelRG: UILabel = {
        
        let label = UILabel()
        label.text = "Register"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textColor = .white
        
        
        return label
    }()
    
    private let labelNA: UILabel = {
        
        let label = UILabel()
        label.text = "Create a new account"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .gray
        
        
        return label
    }()
    
    
    private let userNameLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Username"
        label.textColor  = .white
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    private let emailLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Email"
        label.textColor  = .white
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    
    private let mobileNumberLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Mobile Number"
        label.textColor  = .white
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    private let passwordLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Password"
        label.textColor  = .white
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
 
    
  
    
    
    private let emailTextField: UITextField = {
        let tf = UITextField()
      
           
              tf.placeholder = "Email"
              tf.layer.cornerRadius = 6
              let spacerView = UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 0))
              tf.leftView = spacerView
              tf.leftViewMode = .always
        tf.backgroundColor = .white
              return tf

    }()
    
    
    private let userNameTextField: UITextField = {
        let tf = UITextField()
      
           
              tf.placeholder = "Username"
              tf.layer.cornerRadius = 6
              let spacerView = UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 0))
              tf.leftView = spacerView
              tf.leftViewMode = .always
        tf.backgroundColor = .white
              return tf

    }()
    
    
    private let mobileNumberTextField: UITextField = {
        let tf = UITextField()
      
           
              tf.placeholder = "Mobile Number"
              tf.layer.cornerRadius = 6
              let spacerView = UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 0))
              tf.leftView = spacerView
              tf.leftViewMode = .always
        tf.backgroundColor = .white
              return tf

    }()
    
    private let passwordTextField: UITextField = {
        let tf = PasswordTextField()
        tf.placeholder = "Password"
        tf.layer.cornerRadius = 6
        let spacerView = UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 0))
        tf.leftView = spacerView
        tf.leftViewMode = .always
        tf.backgroundColor = .white
        return tf
    }()
    
    
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 24
        button.backgroundColor = .systemBlue
      
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        initUI()
     
     
    }
    
    private func initUI (){
        [myImage, labelRG, labelNA, emailLabel,userNameLabel,mobileNumberLabel,passwordLabel, emailTextField, passwordTextField,mobileNumberTextField,userNameTextField, button, ].forEach { box in
                       view.addSubview(box)
                   }
        constraint()
        initAction()
    }
    
    
    
    private func constraint (){
        
        
        myImage.snp.makeConstraints{ make in
                   make.top.equalToSuperview().offset(0)
            make.leading.trailing.equalToSuperview().inset(0)
            make.height.equalTo(200)
                 }
      
        
        
        labelRG.snp.makeConstraints { make in
            make.top.equalTo(myImage.snp.bottom).offset(0)
            make.leading.trailing.equalToSuperview().inset(120)
        }
        
        labelNA.snp.makeConstraints { make in
            make.top.equalTo(labelRG.snp.bottom).offset(0)
            make.leading.trailing.equalToSuperview().inset(80)
        }
        
        
        userNameLabel.snp.makeConstraints { make in
            make.top.equalTo(labelNA.snp.bottom).offset(18)
            make.leading.equalToSuperview().offset(30)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(userNameTextField.snp.bottom).offset(6)
            make.leading.equalToSuperview().inset(30)
        }
        
        mobileNumberLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(6)
            make.leading.equalToSuperview().inset(30)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(mobileNumberTextField.snp.bottom).offset(6)
            make.leading.equalToSuperview().inset(30)
        }
        
      
     
        
        
        
        userNameTextField.snp.makeConstraints { make in
            make.top.equalTo(userNameLabel.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        mobileNumberTextField.snp.makeConstraints { make in
                        make.top.equalTo(mobileNumberLabel.snp.bottom).offset(6)
                        make.leading.trailing.equalToSuperview().inset(30)
                        make.height.equalTo(48)
                    }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
      
        
        button.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(48)
        }
        
       
       
        
        
    }
  
    private func initAction(){
        button.addTarget(self, action: #selector(login(_ :)), for: .touchUpInside)
        keyBoradSetup()
    }
    
    @objc private func login(_ sender: UIButton){
      
        
        if emailTextField.text?.isEmpty ?? true || passwordTextField.text?.isEmpty ?? true || mobileNumberTextField.text?.isEmpty ?? true || userNameTextField.text?.isEmpty ?? true  {
            
            textField(emailTextField)
            textField(passwordTextField)
            textField(mobileNumberTextField)
            textField(userNameTextField)
            
        }
        else{
            let vc = ForgotPasswordViewController()
            vc.email = emailTextField.text
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        
        
    }
    
    func textField (_ text:UITextField)  {
         
         text.layer.borderWidth = 1
         text.layer.borderColor = UIColor.red.cgColor
         text.placeholder = "заполните поле"
         
     }
    
    func keyBoradSetup(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
                 view.addGestureRecognizer(tapGesture)
    }
    
    @objc private func hideKeyboard() {
              view.endEditing(true)
          }
    
    }




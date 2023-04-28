//
//  LoginViewController.swift
//  hww6month3
//
//  Created by atay on 27/4/23.
//

import UIKit
import SnapKit
import IQKeyboardManagerSwift


class LoginViewController: UIViewController {
    
    
    
    private let myImage: UIImageView = {
        
        let image =  UIImageView()
        image.image = UIImage(named: "Rectangle")
        return image
        
    }()
    
    private let facebookLogo: UIImageView = {
        
        let image = UIImageView()
        image.image = UIImage(named: "facebook")
        return image
        
    }()
    
    private let googleLogo: UIImageView = {
        
        let image = UIImageView()
        image.image = UIImage(named: "google")
        return image
        
    }()
    
    
    private let instagramLogo: UIImageView = {
        
        let image = UIImageView()
        image.image = UIImage(named: "instagram")
        return image
        
    }()
    
    // MARK: -- UILABEL
    private let labelWC: UILabel = {
        
        let label = UILabel()
        label.text = "Welcome"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textColor = .white
        
        
        return label
    }()
    
    private let labelAC: UILabel = {
        
        let label = UILabel()
        label.text = "Login to your account"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .gray
        
        
        return label
    }()
    
    private let emailLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Email"
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
    
    private let FPLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Forgot Password?"
        label.textColor  = .red
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    private let dontAC: UILabel = {
        
        let label = UILabel()
        label.text = "Don’t have account? "
        label.textColor  = .gray
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    private let createNow: UILabel = {
        
        let label = UILabel()
        label.text = "Create Now"
        label.textColor  = .white
        label.font = UIFont.boldSystemFont(ofSize: 16)
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
        addGesture()
        
    }
    
    private func initUI (){
        [myImage, labelWC, labelAC, emailLabel, emailTextField,passwordLabel, passwordTextField, FPLabel, button, dontAC, createNow, facebookLogo, googleLogo, instagramLogo].forEach { box in
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
        facebookLogo.snp.makeConstraints { make in
            make.top.equalTo(dontAC.snp.bottom).offset(11)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(30)
        }
        
        instagramLogo.snp.makeConstraints { make in
            make.top.equalTo(facebookLogo.snp.top)
            make.left.equalTo(facebookLogo.snp.right).offset(42)
            make.height.width.equalTo(30)
        }
        
        googleLogo.snp.makeConstraints { make in
            make.top.equalTo(facebookLogo.snp.top)
            make.right.equalTo(facebookLogo.snp.left).offset(-42)
            make.height.width.equalTo(30)
        }
        
        //MARK: -- Label
        
        labelWC.snp.makeConstraints { make in
            make.top.equalTo(myImage.snp.bottom).offset(51)
            make.leading.trailing.equalToSuperview().inset(120)
        }
        
        labelAC.snp.makeConstraints { make in
            make.top.equalTo(labelWC.snp.bottom).offset(0)
            make.leading.trailing.equalToSuperview().inset(80)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(labelAC.snp.bottom).offset(25)
            make.leading.equalToSuperview().inset(30)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(6)
            make.leading.equalToSuperview().inset(30)
        }
        
        FPLabel.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(6)
            make.trailing.equalToSuperview().inset(30)
        }
        
        dontAC.snp.makeConstraints { make in
            make.top.equalTo(button.snp.bottom).offset(14)
            make.leading.equalToSuperview().inset(70)
        }
        
        createNow.snp.makeConstraints { make in
            make.top.equalTo(dontAC.snp.top)
            make.left.equalTo(dontAC.snp.right)
            
        }
        
        
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        
        
        button.snp.makeConstraints { make in
            make.top.equalTo(FPLabel.snp.bottom).offset(28)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(48)
        }
        
        
        
        
        
    }
    
    private func addGesture(){
        createNow.isUserInteractionEnabled = true
        createNow.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(createNowTapped)))
    }
    
    @objc func createNowTapped() {
        print("UILabel был нажат")
        let vc = PasswordViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    private func initAction(){
        button.addTarget(self, action: #selector(login(_ :)), for: .touchUpInside)
        ()
    }
    
    @objc func login(_ sender: UIButton){
        if emailTextField.text?.isEmpty ?? true || passwordTextField.text?.isEmpty ?? true {
            
            textField(emailTextField)
            textField(passwordTextField)
        }
        if emailTextField.text!.count > 0 || passwordTextField.text!.count > 0{
            emailTextField.layer.borderColor = UIColor.white.cgColor
            passwordTextField.layer.borderColor = UIColor.white.cgColor
        }
    }
    
    func textField (_ text:UITextField)  {
        text.layer.borderWidth = 1
        text.layer.borderColor = UIColor.red.cgColor
        text.placeholder = "заполните поле"
    }
    
    //     func keyBoradSetup(){
    //        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
    //                 view.addGestureRecognizer(tapGesture)
    //    }
    //
    //     @objc private func hideKeyboard() {
    //              view.endEditing(true)
    //          }
    //
    //
}


//
//  ForgotPasswordViewController.swift
//  hww6month3
//
//  Created by atay on 27/4/23.
//

import UIKit
import SnapKit
class ForgotPasswordViewController: UIViewController {
    
    var email: String?
    
    
    private let myImage: UIImageView = {
            
            let image =  UIImageView()
            image.image = UIImage(named: "Rectangle")
            return image
            
        }()
    
  
    
    private let labelFG: UILabel = {
        
        let label = UILabel()
        label.text = "Forgot Password"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textColor = .white
        
        
        return label
    }()
    
    
  
    
    private let emailLabel: UILabel = {
        
        let label = UILabel()
        label.textColor  = .white
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    
  
    
  
    private let chooseMethodLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Choose Another Method"
        label.textColor  = .gray
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
   
    
    private let helpLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Need Help?"
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
    

    
    
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Send OTP", for: .normal)
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
        [myImage, labelFG, emailLabel, emailTextField, button, chooseMethodLabel, helpLabel].forEach { box in
                       view.addSubview(box)
                   }
        emailTextField.text = email
        constraint()
        
    }
    
    
    
    private func constraint (){
        
        
        myImage.snp.makeConstraints{ make in
                   make.top.equalToSuperview().offset(0)
            make.leading.trailing.equalToSuperview().inset(0)
            make.height.equalTo(200)
                 }
        
        
        labelFG.snp.makeConstraints { make in
            make.top.equalTo(myImage.snp.bottom).offset(31)
            make.leading.trailing.equalToSuperview().inset(100)
        }
        
      
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(labelFG.snp.bottom).offset(61)
            make.leading.equalToSuperview().inset(30)
        }
      
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        chooseMethodLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(11)
            make.leading.equalToSuperview().inset(31)
        }
        
        helpLabel.snp.makeConstraints { make in
            make.top.equalTo(chooseMethodLabel.snp.top)
            make.left.equalTo(chooseMethodLabel.snp.right).offset(18)
       
        }
        
        
        
        
        
      
        
      
        
        button.snp.makeConstraints { make in
            make.top.equalTo(chooseMethodLabel.snp.bottom).offset(22)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(48)
        }
        
       
      
        
        
    }
  
    
    
   

}


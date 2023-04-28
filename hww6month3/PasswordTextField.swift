//
//  PasswordTextField.swift
//  hww6month3
//
//  Created by atay on 27/4/23.
//

import UIKit
import SnapKit
import IQKeyboardManagerSwift

public class PasswordTextField: UITextField {
    
    private let showPasswordButton = UIButton(type: .custom)
    private var isPasswordHidden = true
    
  public  override func layoutSubviews() {
        super.layoutSubviews()
        showPasswordButton.frame = rightViewRect(forBounds: bounds)
    }
    
   public override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        var rightViewRect = super.rightViewRect(forBounds: bounds)
        
        rightViewRect.origin.x = bounds.width - rightViewRect.width - 10
          
        return rightViewRect
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        showPasswordButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        showPasswordButton.addTarget(self, action: #selector(showPasswordButtonTapped), for: .touchUpInside)
        rightView = showPasswordButton
        rightViewMode = .always
        isSecureTextEntry = true
        showPasswordButton.tintColor = .darkGray
    }
    
    @objc private func showPasswordButtonTapped() {
        isSecureTextEntry.toggle()
        
        let imageName = isSecureTextEntry ? "eye.slash" : "eye"
        showPasswordButton.setImage(UIImage(systemName: imageName), for: .normal)
    }
}

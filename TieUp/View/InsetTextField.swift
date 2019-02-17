//
//  InsetTextField.swift
//  TieUp
//
//  Created by Kaiserdem on 17.02.2019.
//  Copyright © 2019 Kaiserdem. All rights reserved.
//

import UIKit

class InsetTextField: UITextField {
              // заполнение
  private var padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)

  override func awakeFromNib() {
    
    let placeholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
    self.attributedPlaceholder = placeholder
    
    super.awakeFromNib()
  }
  
  override func textRect(forBounds bounds: CGRect) -> CGRect {
    return bounds.inset(by: padding)
  }
  override func editingRect(forBounds bounds: CGRect) -> CGRect {
    return bounds.inset(by: padding)
  }
  override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
    return bounds.inset(by: padding)
  }
  
}

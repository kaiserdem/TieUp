//
//  ShadowView.swift
//  TieUp
//
//  Created by Kaiserdem on 17.02.2019.
//  Copyright © 2019 Kaiserdem. All rights reserved.
//

import UIKit

class ShadowView: UIView { // Непрозрачность тени
  
  override func awakeFromNib() {
    
    self.layer.shadowOpacity = 0.75
    self.layer.shadowRadius = 5
    self.layer.shadowColor = UIColor.black.cgColor
    
    super.awakeFromNib()
  }

}

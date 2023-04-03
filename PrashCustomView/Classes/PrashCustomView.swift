//
//  PrashCustomView.swift
//  PrashCustomView
//
//  Created by Prashanth Moorthy on 03/04/23.
//

import Foundation
import UIKit


public class PrashCustomView : UIView {
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.magenta
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

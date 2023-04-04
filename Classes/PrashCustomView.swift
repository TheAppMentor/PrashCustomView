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
        self.frame = CGRect(origin: .zero, size: CGSize(width: 200, height: 75))
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.backgroundColor = UIColor.green
        self.frame = CGRect(origin: .zero, size: CGSize(width: 200, height: 75))
//        
//        let shelfAuditView = Bundle.loadView(fromNib: "ShelfAuditCellView", withType: ShelfAuditCellView.self)
//        addSubview(shelfAuditView)
    }
}

//
//  PrashCustomView.swift
//  PrashCustomView
//
//  Created by Prashanth Moorthy on 03/04/23.
//

import Foundation
import UIKit

@objcMembers
public class PrashCustomView : UIView {
    
    public static func prashStaticMethod() -> String {
        return "Hello Static Method Talking"
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.magenta
        self.frame = CGRect(origin: .zero, size: CGSize(width: 200, height: 75))
        
        let shelfAuditView = getMyCustomView()
        addSubview(shelfAuditView)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.backgroundColor = UIColor.green
        self.frame = CGRect(origin: .zero, size: CGSize(width: 200, height: 75))
        
        //        let shelfAuditView = Bundle.loadView(fromNib: "ShelfAuditCellView", withType: ShelfAuditCellView.self)
        //        addSubview(shelfAuditView)
        //    }
        //
        let shelfAuditView = getMyCustomView()
        addSubview(shelfAuditView)
    }
    
    public func getMyCustomView() -> UIView {
        let frameworkBundle = Bundle(for: ShelfAuditCellView.self)
        let bundleURL = frameworkBundle.resourceURL?.appendingPathComponent("ShelfAuditCellView.bundle")
        let resourceBundle = Bundle(url: bundleURL!)
        
        let shelfAuditView = frameworkBundle.loadNibNamed("ShelfAuditCellView", owner: nil)?.first as! UIView
        //addSubview(shelfAuditView)
        print("shelfAuditView : \(shelfAuditView)")
        return shelfAuditView
    }
}

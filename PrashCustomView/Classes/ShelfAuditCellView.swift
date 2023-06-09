//
//  ShelfAuditCellView.swift
//  PrashCustomView
//
//  Created by Prashanth Moorthy on 03/04/23.
//

import UIKit

@IBDesignable
public class ShelfAuditCellView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        let frameworkBundle = Bundle(for: ShelfAuditCellView.self)
        let bundleURL = frameworkBundle.resourceURL?.appendingPathComponent("ShelfAuditCellView.bundle")
        let resourceBundle = Bundle(url: bundleURL!)
        print("resourceBundle: \(resourceBundle)")
        
        let view = Bundle.loadView(fromNib: "ShelfAuditCellView", withType: ShelfAuditCellView.self)
        view.addSubview(view)
    }
}

extension Bundle {

    static func loadView<T>(fromNib name: String, withType type: T.Type) -> T {
        if let view = Bundle.main.loadNibNamed(name, owner: nil, options: nil)?.first as? T {
            return view
        }

        fatalError("Could not load view with type " + String(describing: type))
    }
}


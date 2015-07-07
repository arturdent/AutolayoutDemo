//
//  View.swift
//  AutolayoutDemo
//
//  Created by Stephen Yao on 27/12/2014.
//  Copyright (c) 2014 SilverBear. All rights reserved.
//

import UIKit

class View: UIView {
    
    var blueView : UIView?
    var redView : UIView?
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.whiteColor()
        self.setupView()
    }
    
    func setupView() {
        self.blueView = UIView()
        self.blueView?.backgroundColor = UIColor.blueColor()
        self.blueView?.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        self.addSubview(self.blueView!)
        
        let blueViewCenterXConstraint = NSLayoutConstraint(item: self.blueView!, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: self, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 0)
        
        let blueViewCenterYConstraint = NSLayoutConstraint(item: self.blueView!, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: self, attribute: NSLayoutAttribute.CenterY, multiplier: 1.0, constant: 0)
        
        let blueViewWidthConstraint = NSLayoutConstraint(item: self.blueView!, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: 200)
        
        let blueViewHeightConstraint = NSLayoutConstraint(item: self.blueView!, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: 200)
        
        self.addConstraints([blueViewCenterXConstraint,blueViewCenterYConstraint,blueViewWidthConstraint,blueViewHeightConstraint])
        
        self.redView = UIView()
        self.redView?.backgroundColor = UIColor.redColor()
        self.redView?.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        self.addSubview(self.redView!)
        
        let redViewCenterXConstraint = NSLayoutConstraint(item: self.redView!, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: self.blueView!, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 0)
        
        let redViewBottomConstraint = NSLayoutConstraint(item: self.redView!, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.blueView!, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0)
        
        let redViewWidthConstraint = NSLayoutConstraint(item: self.redView!, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: 100)
        
        let redViewHeightConstraint = NSLayoutConstraint(item: self.redView!, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: 100)
        
        self.addConstraints([redViewCenterXConstraint,redViewBottomConstraint,redViewWidthConstraint,redViewHeightConstraint])
    }

}

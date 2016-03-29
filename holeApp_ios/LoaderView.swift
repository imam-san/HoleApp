//
//  LoaderView.swift
//  Loyalty_iOS
//
//  Created by imam on 3/26/16.
//  Copyright © 2016 id.imam. All rights reserved.
//

import Foundation
import UIKit

class LoaderView{
    static func getClassNameAsString(className: AnyObject) -> String {
        return _stdlib_getDemangledTypeName(className).componentsSeparatedByString(".").last!
    }
    
    static func loadViewByName(name:String, uiview : UIViewController)
    {
        let gen : AnyClass = object_getClass(self)
        let storyboardName = name
        let storyboardBundle =  NSBundle(forClass: gen)
        let storyboard = UIStoryboard(name: storyboardName, bundle: storyboardBundle)
        
        let controller = storyboard.instantiateViewControllerWithIdentifier(name.lowercaseString)
        
        
        uiview.presentViewController(controller, animated: true, completion: nil)
    }
    static func loadViewByNamewithVar(name:String, uiview : UIViewController , varble: String)
    {
        let gen : AnyClass = object_getClass(self)
        let storyboardName = name
        let storyboardBundle =  NSBundle(forClass: gen)
        let storyboard = UIStoryboard(name: storyboardName, bundle: storyboardBundle)
        
        let controller = storyboard.instantiateViewControllerWithIdentifier(name.lowercaseString)
        
        //if let initVar = uiview.initVar as? String {
         //  controller.initVar = varble
        //}
        
        uiview.presentViewController(controller, animated: true, completion: nil)
        
    }
    
    static func loaderLabel(label : UILabel , stringlbl: String ,colorTxt : String , colorback: String , namefont : String , sizefont : CGFloat)
    {
    
        var myMutableString = NSMutableAttributedString()
       // label.backgroundColor=UIColor.init(hexString: colorback)
      //  label.textColor=UIColor.init(hexString:colorTxt)
        myMutableString = NSMutableAttributedString(string:stringlbl as String, attributes: [NSFontAttributeName:UIFont(name: namefont, size: sizefont)!])
          label.attributedText = myMutableString
    }
    
    static func loaderButton(viewctl :UIViewController ,bt : UIButton , stringlbl: String ,colorTxt : String , colorback: String , namefont : String , sizefont : CGFloat, actionstr: Selector)
    {
        
        bt.setTitle(stringlbl, forState: UIControlState.Normal)
        bt.layer.borderWidth=1.0
      //  bt.layer.borderColor =  (UIColor.init(hexString: colorTxt)).CGColor
        bt.addTarget(viewctl, action: actionstr, forControlEvents: .TouchUpInside)
        
        bt.layer.shadowRadius = 3.0
     //   bt.layer.shadowColor =  (UIColor.init(hexString: colorback)).CGColor
        bt.layer.shadowOffset = CGSizeMake(3.0, 3.0)
        bt.layer.shadowOpacity = 0.5
        bt.layer.masksToBounds = true    }

    
    
}

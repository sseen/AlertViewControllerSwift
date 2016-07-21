//
//  ViewController.swift
//  AlertViewControllerSwift
//
//  Created by sseen on 2016/7/20.
//  Copyright © 2016年 sseen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // action sheet
        let bt = UIButton()
        bt.setTitle("hello action Ｓheet", forState: .Normal)
        bt.addTarget(self, action: #selector(ckPop), forControlEvents: .TouchUpInside)
        bt.setTitleColor(UIColor.purpleColor(), forState: .Normal)
        bt.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(bt)
        // vlf
        let viewDic = ["v1":bt]
        let hConstraint = NSLayoutConstraint.constraintsWithVisualFormat("H:[v1(==80)]", options: .AlignAllCenterX, metrics: nil, views: viewDic)
        let vConstraint = NSLayoutConstraint.constraintsWithVisualFormat("V:[v1(==40)]", options: .AlignAllCenterY, metrics: nil, views: viewDic)
        self.view.addConstraints(hConstraint)
        self.view.addConstraints(vConstraint)
        // vlf center
        self.view.addConstraint(NSLayoutConstraint(item: bt, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1, constant: 0.0))
        self.view.addConstraint(NSLayoutConstraint(item: bt, attribute: .CenterY, relatedBy: .Equal, toItem: self.view, attribute: .CenterY, multiplier: 1, constant: 0.0))
        
        
        // alert
        let btAlert = UIButton()
        btAlert.setTitle("alert View", forState: .Normal)
        btAlert.addTarget(self, action: #selector(ckAlert), forControlEvents: .TouchUpInside)
        btAlert.setTitleColor(UIColor.purpleColor(), forState: .Normal)
        btAlert.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(btAlert)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func ckPop() {
        let alertController = UIAlertController(title: "保存或删除数据", message: "删除数据将不可恢复", preferredStyle: UIAlertControllerStyle.ActionSheet)
        let cancelAction = UIAlertAction(title: "取消", style: UIAlertActionStyle.Cancel, handler: nil)
        let deleteAction = UIAlertAction(title: "删除", style: UIAlertActionStyle.Destructive, handler: nil)
        
        for tmp in 0...16 {
            let archiveAction = UIAlertAction(title: "保存 \(tmp)", style: UIAlertActionStyle.Default, handler: nil)
            alertController.addAction(archiveAction)
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(deleteAction)
        
        self.presentViewController(alertController, animated: true, completion: nil)
        
    }
    
    func ckAlert() {
        
    }

}


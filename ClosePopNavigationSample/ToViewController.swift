//
//  ToViewController.swift
//  ClosePopNavigationSample
//
//  Created by 一騎高橋 on 2016/06/24.
//  Copyright © 2016年 IkkiTakahashi. All rights reserved.
//

import UIKit

class ToViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTouchReturnButton(sender: AnyObject) {
        
        let alert = UIAlertController(title: "アラート表示", message: "現在の画面を閉じますか？", preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        let defaultAction = UIAlertAction(title: "閉じる", style: .Default, handler: {
            (action: UIAlertAction!) -> Void in
            print("閉じる touch")
            self.navigationController?.popViewControllerAnimated(true)
        })
        
        let cancelAction = UIAlertAction(title: "キャンセル", style: .Cancel, handler: nil)
        
        alert.addAction(defaultAction)
        alert.addAction(cancelAction)
        
        presentViewController(alert, animated: true, completion: nil)
        
    }
    
    
}

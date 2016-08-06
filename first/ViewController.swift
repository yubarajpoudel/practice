//
//  ViewController.swift
//  first
//
//  Created by Mantra Ideas on 8/6/16.
//  Copyright © 2016 Mantra Ideas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    
    @IBOutlet weak var callButton: UIButton!
    
    @IBOutlet weak var msgButton: UIButton!
//    private var myButton1:UIButton=UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        msgButton.addTarget(self, action: #selector(ViewController.message), forControlEvents: .TouchDown)
        callButton.addTarget(self, action: #selector(ViewController.makeCalled), forControlEvents: .TouchUpInside)
      
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func openDialog(sender: AnyObject) {
        
        let dialog:UIAlertController = UIAlertController(title: "Hello",message: "How are you?",
                                       preferredStyle: UIAlertControllerStyle.Alert)
       
        presentViewController(dialog,animated: false, completion: nil)
    }
    
    func makeCalled(sender:UIButton){
        let url:NSURL? = NSURL(string: "tel://9842583634")
        UIApplication.sharedApplication().openURL(url!)
        print((sender.titleLabel?.text)! + "Button is Clicked")
    }
    func message() -> String {
        
        return "";
    }
    
    enum Type{
        case MESG
        case CALL
    }
}


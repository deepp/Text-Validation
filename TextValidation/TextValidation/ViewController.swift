//
//  ViewController.swift
//  TextValidation
//
//  Created by dilip chaurasiya on 10/13/15.
//  Copyright © 2015 dilip chaurasiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let status: Bool = true
    var flag:Bool = false

    @IBOutlet weak var PropertyInput: UITextField!
   
    //@IBOutlet weak var Propertyinput: UITextField!
    @IBOutlet weak var renttext: UITextField!
    
    @IBOutlet weak var Deposittext: UITextField!
    
    @IBOutlet weak var Datepicker: UITextField!
    @IBAction func datepicker(sender: AnyObject) {
        
        let DatePickerView : UIDatePicker = UIDatePicker()
        DatePickerView.datePickerMode = UIDatePickerMode.Date
        Datepicker.inputView = DatePickerView
        DatePickerView.addTarget(self, action: Selector("handleDatePicker:"), forControlEvents: UIControlEvents.ValueChanged)
    }
    
    func handleDatePicker(sender: UIDatePicker) {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd MMM yyyy"
        Datepicker.text = dateFormatter.stringFromDate(sender.date)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        PropertyInput.clearsOnBeginEditing = true
        renttext.clearsOnBeginEditing = true
        Deposittext.clearsOnBeginEditing = true
        Datepicker.clearsOnBeginEditing = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        //var clearsOnBeginEditing: Bool = true
        
        textField.textColor = UIColor.blackColor()
        
    }


    @IBAction func submit(sender: AnyObject)
    {
        
        if(PI() == status)
        {
            
           // PropertyInput.layer.borderColor = UIColor.redColor().CGColor
           // PropertyInput.text = "Enter Property"
            PropertyInput.attributedPlaceholder = NSAttributedString(string:"Enter Property",
                attributes:[NSForegroundColorAttributeName: UIColor.redColor()])
        }
             if(RT() == status)
             {
               // renttext.text = "Enter Rent"
               // renttext.textColor = UIColor.redColor()
                renttext.attributedPlaceholder = NSAttributedString(string:"Enter Rent",
                    attributes:[NSForegroundColorAttributeName: UIColor.redColor()])
        }
        
                if(DT() == status)
                {
                    //Deposittext.text = "Enter Deposit"
                    //Deposittext.textColor = UIColor.redColor()
                    Deposittext.attributedPlaceholder = NSAttributedString(string:"Enter Deposit",
                        attributes:[NSForegroundColorAttributeName: UIColor.redColor()])

        }
                    if(DP() == status)
                    {
                        //Datepicker.text = "Enter date"
                        //Datepicker.textColor = UIColor.redColor()
                        Datepicker.attributedPlaceholder = NSAttributedString(string:"Enter Date",
                            attributes:[NSForegroundColorAttributeName: UIColor.redColor()])

                    }
                  
    
         if(PI() != status && RT() != status && DT() != status && DP() != status)
        {
            let alert = UIAlertController(title: "Oye Ok", message: "Congartulations, Your bid was submitted successfully! Do you wish to submit another bid?", preferredStyle:.Alert)
            let cancelAction = UIAlertAction(title: "cancel", style: .Cancel, handler: nil)
            alert.addAction(cancelAction)
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
    }

    

   
    func PI() -> Bool
    {
        var flag:Bool = false
        if((PropertyInput.text!.isEmpty) == status)
    {
        flag = true
        }
        return flag
    }
    
    func RT() -> Bool
    {
        var flag:Bool = false
        if((renttext.text!.isEmpty) == status)
        {
            flag = true
        }
        return flag
    }
    
    func DT() -> Bool
    {
        var flag:Bool = false
        if((Deposittext.text!.isEmpty) == status)
        {
            flag = true
        }
        return flag
    }
    func DP() -> Bool
    {
        var flag:Bool = false
        if((Datepicker.text!.isEmpty) == status)
        {
            flag = true
        }
        return flag
    }
    
    /*func validate(Textfield : UITextField) -> Bool
    {
        var flag: Bool = false
        if(Textfield.text!.isEmpty)
        {
            flag = true
        }
        return flag
    }*/
}


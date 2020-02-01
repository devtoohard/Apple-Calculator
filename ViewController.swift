//
//  ViewController.swift
//  Calculator
//
//  Created by Shawn on 2/2/20.
//  Copyright © 2020 Shawn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numberOnScreen:Double = 0;
    var prevNumber:Double = 0;
    var mathOperation = false
    var operation = 0;
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if mathOperation == true{
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            mathOperation = true;
            
            
        } else {
           
        label.text = label.text! + String(sender.tag-1)
        numberOnScreen = Double(label.text!)!
        
    }
    }
    
    @IBAction func buttons(_ sender: UIButton) {
           
        if label.text != "" && sender.tag != 11 && sender.tag != 16{
            
            prevNumber = Double(label.text!)!
            
            if sender.tag == 12{
                label.text = "/";
                
            }
            else if sender.tag == 13{
                label.text = "x";
                           
            }
            
            else if sender.tag == 14{
        
                label.text = "-";
            }
            
            else if sender.tag == 15{
                label.text = "+";
         }
            operation = sender.tag
            mathOperation = true;
            
        }
        else if sender.tag == 16
        {
            if operation == 12{
                
                label.text = String (prevNumber / numberOnScreen)
            }
            else if operation == 13{
                label.text = String (prevNumber * numberOnScreen)
                
            }
            else if operation == 14{
                
                label.text = String (prevNumber - numberOnScreen)
            }
            else if operation == 15{
                
               label.text = String (prevNumber + numberOnScreen)
            }
            
        } else if sender.tag == 11{
            label.text = ""
            prevNumber = 0;
            numberOnScreen = 0;
            operation = 0;
         
        }
           
       }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  ExpandedViewController.swift
//  Notes
//
//  Created by Ryan Neil Stroud on 24/6/2017.
//  Copyright © 2017 Ryan Neil Stroud. All rights reserved.
//

import UIKit

protocol ExpandedDelegate {
    func sendMessage(title: String, note: String)
}

class ExpandedViewController: UIViewController {
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var noteTextView: UITextView!

    var delegate: ExpandedDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendNote(_ sender: UIButton) {
        delegate?.sendMessage(title: titleTextField.text!, note: noteTextView.text!)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

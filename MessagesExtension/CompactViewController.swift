//
//  CompactViewController.swift
//  Notes
//
//  Created by Ryan Neil Stroud on 24/6/2017.
//  Copyright © 2017 Ryan Neil Stroud. All rights reserved.
//

import UIKit

protocol CompactDelegate {
    func newNote()
}

class CompactViewController: UIViewController {
    var delegate:CompactDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createNewNote(_ sender: UIButton) {
        delegate?.newNote()
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

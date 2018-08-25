//
//  ThirdViewController.swift
//  tabs-tabs-tabs
//
//  Created by Aditya Vikram Godawat on 25/08/18.
//  Copyright © 2018 Aditya Vikram Godawat. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    //MARK: - IBActions
    
    @IBAction func showAlertButtonTapped(_ sender: Any) {
        showAlert(with: "Hello!", message: "Here is an alert message for you.", and: .alert)
    }
    
    @IBAction func showSheetButtonTapped(_ sender: Any) {
        showAlert(with: "Hello!", message: "Here is an action sheet for you.", and: .actionSheet)
    }
    
    //MARK: - Custom Actions
    
    func showAlert(with title: String, message: String, and style: UIAlertControllerStyle) {
        let alertViewController = UIAlertController(title: title, message: message, preferredStyle: style)
        
        let okayButton = UIAlertAction(title: "Okay", style: .default) { (action) in
            print(action.title!)
        }
        alertViewController.addAction(okayButton)
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print(action.title!)
        }
        alertViewController.addAction(cancelButton)
        
        self.present(alertViewController, animated: true, completion: nil)
        
    }
}

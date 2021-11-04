//
//  ViewController.swift
//  practice13
//
//  Created by Sakai Syunya on 2021/11/04.
//  Copyright © 2021 Sakai Syunya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func continueButton(_ sender: Any) {
        guard let nextVC: SecondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondView") as? SecondViewController else { return }
        
        nextVC.modalPresentationStyle = .fullScreen
        self.present(nextVC, animated: true, completion: nil)
    }
}

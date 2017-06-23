//
//  HomeViewController.swift
//  蘭城舊市
//
//  Created by 褚宣德 on 2017/6/23.
//  Copyright © 2017年 AppCoda. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func start(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "tabbar")as! UITabBarController
        self.present(nextVC,animated:true,completion:nil)
        
    }
    
    
}

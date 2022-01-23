//
//  NewViewController.swift
//  A202HelloLife
//
//  Created by 申潤五 on 2022/1/23.
//

import UIKit

class NewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("New Page")
        
        let view1 = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        view1.backgroundColor = UIColor.red
        self.view.addSubview(view1)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let view2 = UIView(frame: CGRect(x: 100, y: 250, width: 100, height: 100))
        view2.backgroundColor = UIColor.blue
        self.view.addSubview(view2)
        
        
    }
    
    
    

}

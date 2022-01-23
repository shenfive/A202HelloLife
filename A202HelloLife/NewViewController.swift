//
//  NewViewController.swift
//  A202HelloLife
//
//  Created by 申潤五 on 2022/1/23.
//

import UIKit

class NewViewController: UIViewController {
    
    
    var counter = 1.0
    var theTimer:Timer!
    
    
    override func loadView() {
        super.loadView()
        print("New Page")
        

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let view1 = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        view1.backgroundColor = UIColor.red
        self.view.addSubview(view1)
        
        theTimer = Timer.scheduledTimer(withTimeInterval: 0.04, repeats: true, block: { timer in
            self.setCounter(sender: view1)
        })
        
//        theTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(setCounter), userInfo: nil, repeats: true)


    }
    
    func setCounter(sender:UIView){
        
        let angel = counter * Double.pi / 180
        sender.transform = CGAffineTransform(rotationAngle: angel)
        self.counter += 4
        print(counter)
    }
    
//    @objc func setCounter(){
//        counter += 1
//        print(counter)
//    }
    
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let view2 = UIView(frame: CGRect(x: 100, y: 250, width: 100, height: 100))
        view2.backgroundColor = UIColor.blue
        self.view.addSubview(view2)
        
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("VC Disappear")
        theTimer.invalidate()
        theTimer = nil
    }
    
    

}

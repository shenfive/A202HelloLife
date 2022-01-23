//
//  NewViewController.swift
//  A202HelloLife
//
//  Created by 申潤五 on 2022/1/23.
//

import UIKit

class NewViewController: UIViewController {
    
    
    var counter = 1.0
    var offset = 1.0
    var theTimer:Timer!
    @IBOutlet weak var theSegment: UISegmentedControl!
    
    
    override func loadView() {
        super.loadView()
        print("New Page")
        

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let view1 = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        view1.backgroundColor = UIColor.red
        
        view1.center = self.view.center
        view1.layer.cornerRadius = 15
        view1.clipsToBounds = true
        
        
        self.view.addSubview(view1)
        
        theTimer = Timer.scheduledTimer(withTimeInterval: (1/60.0), repeats: true, block: { timer in
            self.setCounter(sender: view1)
        })


    }
    
    func setCounter(sender:UIView){
        
        let angel = counter * Double.pi / 180
        sender.transform = CGAffineTransform(rotationAngle: angel)
        
        if theSegment.selectedSegmentIndex == 0 {
            self.counter += offset
        }else{
            self.counter -= offset
        }
        
        
//        print("\(counter):\(theSegment.selectedSegmentIndex)")
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("VC Disappear")
        theTimer.invalidate()
        theTimer = nil
    }
    

    @IBAction func segmentAction(_ sender: UISlider) {
        print("\(sender.value)")
        offset = Double(sender.value)
    }
    
}

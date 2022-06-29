//
//  BallRunViewController.swift
//  BaiKiemTraUI
//
//  Created by Vu Nam Ha on 28/06/2022.
//

import UIKit

class BallRunViewController: UIViewController {
    
    var ballView: UIView = {
        let ballView = UIView()
        return ballView
    }()
    var timer1: Timer!
    var timer2: Timer!
    var timer3: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        creatBallView()
        goRight()
        
    }
        
    
    func creatBallView() {
        ballView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        ballView.backgroundColor = .brown
        ballView.clipsToBounds = true
        ballView.layer.cornerRadius = 50
        view.addSubview(ballView)
        
        
    }
    
    func goRight() {
        timer1 = Timer.scheduledTimer(withTimeInterval: 0.001, repeats: true, block: { _ in
            self.ballView.frame.origin.x += 0.2
            if self.ballView.frame.maxX >= self.view.bounds.maxX {
                self.timer1.invalidate()
                
                // nếu đang ở phía trên thì đi xuống, ở phía dưới thì đi lên
                if self.ballView.frame.origin.y < 100 {
                self.goDownLeft()
                } else {
                    self.goUpLeft()
                }
                }
            })
        
    }
    func goDownLeft() {
        timer2 = Timer.scheduledTimer(withTimeInterval: 0.001, repeats: true, block: { _ in
            self.ballView.frame.origin.x -= 0.2
            self.ballView.frame.origin.y += 0.2*((self.view.frame.maxY-100)/(self.view.frame.maxX-100))
            if self.ballView.frame.origin.x <= 0 {
                self.timer2.invalidate()
                self.goRight()
                }
            })
        
    }
    
    func goUpLeft() {
        timer3 = Timer.scheduledTimer(withTimeInterval: 0.001, repeats: true, block: { _ in
            self.ballView.frame.origin.x -= 0.2
            self.ballView.frame.origin.y -= 0.2*((self.view.frame.maxY-100)/(self.view.frame.maxX-100))
            if self.ballView.frame.origin.x <= 0 {
                self.timer3.invalidate()
                self.goRight()
                }
            })
        
    }
    
    
    
    
    
}

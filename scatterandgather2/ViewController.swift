//
//  ViewController.swift
//  scatterandgather2
//
//  Created by David Doswell on 1/16/19.
//  Copyright © 2019 David Doswell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var shouldScramble: Bool!
    
    @IBOutlet weak var first: UILabel!
    @IBOutlet weak var second: UILabel!
    @IBOutlet weak var third: UILabel!
    @IBOutlet weak var fourth: UILabel!
    @IBOutlet weak var fifth: UILabel!
    @IBOutlet weak var sixth: UILabel!
    
    var topConstraint: NSLayoutConstraint!
    var leadingConstraint: NSLayoutConstraint!
    var widthConstraint: NSLayoutConstraint!
    var heightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var toggleButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViews()
    }

    @IBAction func toggle(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            var frame = self.first.frame
            frame.origin.x += 100
            frame.origin.y += 200
            
            self.first.frame = frame
            self.first.textColor = .red
            self.first.font = UIFont.systemFont(ofSize: 150, weight: UIFont.Weight(rawValue: 50))
        }
        
    }
    
    private func setUpViews() {
        view.addSubview(first)
        view.addSubview(second)
        view.addSubview(third)
        view.addSubview(fourth)
        view.addSubview(fifth)
        view.addSubview(sixth)
        
        
        topConstraint = NSLayoutConstraint(item: first, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 30)
        
        leadingConstraint = NSLayoutConstraint(item: first, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 30)
        
        widthConstraint = NSLayoutConstraint(item: first, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 40)
       
        heightConstraint = NSLayoutConstraint(item: second, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50)
        
        
        
        NSLayoutConstraint.activate([topConstraint, leadingConstraint, widthConstraint, heightConstraint])
    }
    
}


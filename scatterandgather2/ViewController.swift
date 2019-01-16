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
    
    var widthConstraint: NSLayoutConstraint!
    var heightConstraint: NSLayoutConstraint!
    var centerYConstraint: NSLayoutConstraint!
    var centerXConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var toggleButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViews()
    }

    @IBAction func toggle(_ sender: Any) {
        
    }
    
    private func setUpViews() {
        view.addSubview(first)
        view.addSubview(second)
        view.addSubview(third)
        view.addSubview(fourth)
        view.addSubview(fifth)
        view.addSubview(sixth)
        
        
    }
    
}


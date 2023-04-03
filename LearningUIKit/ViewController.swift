//
//  ViewController.swift
//  LearningUIKit
//
//  Created by Jim Lambert on 4/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    //  Making a button with a closure using UIButton
    private lazy var myButton: UIButton = {
        
        // Using Button.configuration is the quickest way in UIKit
        var config = UIButton.Configuration.filled()
        config.title = "Click Me"
        config.baseBackgroundColor = .systemRed
        config.baseForegroundColor = .white
        config.cornerStyle = .capsule
        
        
        // Creating the Button and adding functionallity
        let button = UIButton(configuration: config)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(sayHello), for: .touchUpInside)
        return button
    }()
    
    @objc func sayHello(){
        print("Hello, World!")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .systemMint
        
        self.view.addSubview(myButton)
        
        // Adding button to the View
        NSLayoutConstraint.activate([
            myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    
}


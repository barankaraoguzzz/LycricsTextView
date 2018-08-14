//
//  ViewController.swift
//  LycricsTextView
//
//  Created by Baran on 31.05.2018.
//  Copyright © 2018 CodingMind. All rights reserved.
//

import UIKit
import LycricsTextView

class ViewController: UIViewController {
    
    @IBOutlet weak var lycricsTextView: LycricsTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lycricsTextView.lycricsColor = .red
        lycricsTextView.animateTime = 20
        lycricsTextView.startLycrics()
    }
    
}



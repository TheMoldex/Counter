//
//  ViewController.swift
//  Counter
//
//  Created by Денис Сташков on 13.06.2023.
//

import UIKit

class ViewController: UIViewController {

   private var count = 0
    
    @IBOutlet weak var counterValue: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func changeCounterValue() {
        counterValue.text = "Значение счетчика: \(count)"
    }
    
    @IBAction func buttonDidTape(_ sender: Any) {
        count += 1
        changeCounterValue()
    }
    
}


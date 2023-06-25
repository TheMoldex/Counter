//
//  ViewController.swift
//  Counter
//
//  Created by Денис Сташков on 13.06.2023.
//

import UIKit

class ViewController: UIViewController {

    private var count = 0
    private var time = Date()
    @IBOutlet weak private var counterValue: UILabel!
    @IBOutlet weak private var historyOfChangeTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    private func changeCounterValue() {
        counterValue.text = "Значение счетчика: \(count)"
    }

    @IBAction private func buttonDidTape(_ sender: Any) {
        count += 1
        changeCounterValue()
        historyOfChangeTextView.text += "\n\(time.timeFormat) значение изменено на +1"
    }

    @IBAction private func decreaseCounterValue(_ sender: Any) {
        if count > 0 {
            count -= 1
            counterValue.text = "Значение счетчика: \(count)"
            historyOfChangeTextView.text += "\n\(time.timeFormat) значение изменено на -1"
        } else {
            historyOfChangeTextView.text += "\n\(time.timeFormat) попытка уменьшить значение счётчика ниже 0"
        }
    }

    @IBAction private func resetValue(_ sender: UIButton) {
        count = 0
        counterValue.text = "Значение счетчика: \(count)"
        historyOfChangeTextView.text += "\n\(time.timeFormat) значение сброшено"
    }

}

extension Date {
    var timeFormat: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "d MMM yyyy HH:mm:ss"
        return dateFormatter.string(from: self)
    }
}

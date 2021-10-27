//
//  ViewController.swift
//  ThreeLetterWord
//
//  Created by Baffoe, Joseph - FUT on 10/26/21.
//

import UIKit

class ViewController: UIViewController
{
    //Declare Variables and Outlets
    
    var letters = ["A", "B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    
    var counter = 0
    
    var currentLetter = "A"
    
    @IBOutlet weak var horizStackView: UIStackView!
    
    @IBOutlet weak var currentLetterLabel: UILabel!
    
    @IBOutlet var wordLabels: [UILabel]!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }

    //Tap Gesture Action Function
    @IBAction func whenTapped(_ sender: Any)
    {
        currentLetter = letters[counter]
        currentLetterLabel.text = currentLetter
        let selectedPoint = ((sender as! AnyObject).location(in: horizStackView))
        
        for label in wordLabels
        {
            if label.frame.contains(selectedPoint)
            {
                label.text = "\(currentLetter)"
            }
        }
        
        counter += 1
        
        if counter == 26
        {
            counter = resetCounter()
            currentLetter = letters[counter]
            currentLetterLabel.text = currentLetter
            for label in self.wordLabels
            {
                label.text = "?"
            }
        }
    }
    
    
    
    func resetCounter() -> Int
    {
        let alert = UIAlertController(title: "Resetting Counter", message: nil, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)

        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
        return 0
    }
    
    
}


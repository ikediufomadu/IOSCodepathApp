//
//  ViewController.swift
//  Codepath Entry
//
//  Created by Ikedi Ufomadu on 12/19/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentControl: UISegmentedControl!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    @IBAction func introduceSelfDidTap(_ sender: UIButton) {
        let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex)
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!.lowercased()) year and I own " + petOrPets() + petOrNoPet() + " I hope to see you on campus!"
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    
    // Function to create a more grammatically correct sentence when talking about possiblity of more pets.
    func petOrNoPet() -> String {
        if (morePetsSwitch.isOn) {
            return "I plan on getting more pets!"
        }
        else {
            return "I do not plan on getting anymore pets."
        }
    }
    
    // Function to increase grammatical accuracy when talking about amount of pets.
    func petOrPets() -> String {
        if (numberOfPetsLabel.text == "1") {
            return "a pet. "
        }
        else if (numberOfPetsLabel.text == "0") {
            return "no pets. "
        }
        else {
            return "\(numberOfPetsLabel.text!) pets. "
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


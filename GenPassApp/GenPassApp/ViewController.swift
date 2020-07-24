//
//  ViewController.swift
//  GenPassApp
//
//  Created by Osman Esad on 13.07.2020.
//  Copyright © 2020 pixeldigitalart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
   
    @IBOutlet weak var karakterSayisiLabel: UILabel!
    @IBOutlet weak var passTextfiled: UITextField!
    @IBOutlet weak var sembolKontrol: UISwitch!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var basitSembolKontrol: UISwitch!



    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    @IBAction func sliderDegisim(_ sender: UISlider) {
        
        karakterSayisiLabel.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func genBtn(_ sender: Any) {
        
        /*
        let number = Int.random(in: 0 ..< 10)
        let number1 = Int.random(in: 1 ..< 25)
        
        let names = ["!","#","%","&"]

        let randomName = names.randomElement()
        
        let names1 = ["#","!","$","%","="]

        let randomName1 = names1.randomElement()
        
        let pass = ["\(number)", "\(randomName!)"]
        
        let pass1 = ["\(randomName1!)", "\(number1)"]
        
        let gen1 = pass1.randomElement()
        
        let gen = pass.randomElement()
        
        let uuid = NSUUID().uuidString
        */
        

         if sembolKontrol.isOn {
            
            passTextfiled.text = randomSembol(length1: Int(slider.value))
            
         } else if basitSembolKontrol.isOn {
            
            passTextfiled.text = randomBasit(length: Int(slider.value))
            
         } else {
            
            passTextfiled.text = randomHarfler(length2: Int(slider.value))
            
        }
               
        
        
    }
    
    
    func randomBasit(length: Int) -> String {
        
            let letters = "abcdefghijklmnopqrstuvwxyz.-_ABCDEFGHIJKLMNOPQRSTUVWXYZ.-_123456789.-_"
           
            return String((0..<length).map{ _ in letters.randomElement()! })
        
    }
    
    func randomSembol(length1: Int) -> String {
        
            let letters1 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ123456789{}[]()/\'`~,;:.-_<>#$%&?!"
            return String((0..<length1).map{ _ in letters1.randomElement()! })
        
    }
    
    func randomHarfler(length2: Int) -> String {
        
            let letters2 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ123456789"
            return String((0..<length2).map{ _ in letters2.randomElement()! })
        
    }
    
    
   
    
    

    
}


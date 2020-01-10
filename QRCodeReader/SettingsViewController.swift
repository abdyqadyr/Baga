//
//  SettingsViewController.swift
//  BagaApp
//
//  Created by Abdykadyr Maksat on 13/12/2019.
//  Copyright © 2019 Maksat. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var engBtn: UIButton!
    
    @IBOutlet weak var kazBtn: UIButton!
    @IBOutlet weak var rusBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
   
    @IBAction func englishPressed(_ sender: UIButton) {
        engBtn.backgroundColor = UIColor.init(cgColor: #colorLiteral(red: 0.9843137255, green: 0.2, blue: 0.3254901961, alpha: 1))
        engBtn.setTitleColor(.white, for: .normal)
        
        kazBtn.backgroundColor = UIColor.white
        kazBtn.setTitleColor(UIColor.init(cgColor: #colorLiteral(red: 0.9843137255, green: 0.2, blue: 0.3254901961, alpha: 1)), for: .normal)
        
        rusBtn.backgroundColor = UIColor.white
        rusBtn.setTitleColor(UIColor.init(cgColor: #colorLiteral(red: 0.9843137255, green: 0.2, blue: 0.3254901961, alpha: 1)), for: .normal)
        
        UserDefaults.standard.set("en", forKey: "AppleLanguage")
    }
    
    @IBAction func kazakhPressed(_ sender: UIButton) {
        kazBtn.backgroundColor = UIColor.init(cgColor: #colorLiteral(red: 0.9843137255, green: 0.2, blue: 0.3254901961, alpha: 1))
        kazBtn.setTitleColor(.white, for: .normal)
        
        engBtn.backgroundColor = UIColor.white
        engBtn.setTitleColor(UIColor.init(cgColor: #colorLiteral(red: 0.9843137255, green: 0.2, blue: 0.3254901961, alpha: 1)), for: .normal)
        
        rusBtn.backgroundColor = UIColor.white
        rusBtn.setTitleColor(UIColor.init(cgColor: #colorLiteral(red: 0.9843137255, green: 0.2, blue: 0.3254901961, alpha: 1)), for: .normal)
    }
    
    @IBAction func russianPressed(_ sender: UIButton) {
        rusBtn.backgroundColor = UIColor.init(cgColor: #colorLiteral(red: 0.9843137255, green: 0.2, blue: 0.3254901961, alpha: 1))
        rusBtn.setTitleColor(.white, for: .normal)
        
        engBtn.backgroundColor = UIColor.white
        engBtn.setTitleColor(UIColor.init(cgColor: #colorLiteral(red: 0.9843137255, green: 0.2, blue: 0.3254901961, alpha: 1)), for: .normal)
        
        kazBtn.backgroundColor = UIColor.white
        kazBtn.setTitleColor(UIColor.init(cgColor: #colorLiteral(red: 0.9843137255, green: 0.2, blue: 0.3254901961, alpha: 1)), for: .normal)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func closeVC(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

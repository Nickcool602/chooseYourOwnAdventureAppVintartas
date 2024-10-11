//
//  VCRIGHT.swift
//  chooseYourOwnAdventureAppVintartas
//
//  Created by NICHOLAS VINTARTAS on 10/11/24.
//

import UIKit

class VCRIGHT: UIViewController {
    
    @IBOutlet weak var invLabel: UILabel!
    
    var selection = 0
    
    var inventory2: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        if inventory2.indices.contains(0) {
            invLabel.text = inventory2[0]
        }
        else {
            print(inventory2)
            print(selection)
        }
    }
    
    @IBAction func invLeft(_ sender: Any) {
        if selection <= 0 {
            selection = 0
        }
        else {
            if inventory2.indices.contains(selection) {
                selection = selection - 1
                invLabel.text = inventory2[selection]
            }
            else {
                print(inventory2)
                print(selection)
            }
        }
    }
    
    @IBAction func invRight(_ sender: Any) {
        if selection > inventory2.count {
            
        }
        else {
            if inventory2.indices.contains(selection) {
                selection = selection - 1
                invLabel.text = inventory2[selection]
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

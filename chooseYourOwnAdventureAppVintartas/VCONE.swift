//
//  VCONE.swift
//  chooseYourOwnAdventureAppVintartas
//
//  Created by NICHOLAS VINTARTAS on 10/11/24.
//

import UIKit

class VCONE: UIViewController {

    var inventory1: [String] = ["test","test2","test3","test4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let inv1 = segue.destination as! VCRIGHT
        let inv2 = segue.destination as! VCLEFT
        
        inv1.inventory2 = inventory1
        inv2.inventory3 = inventory1
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

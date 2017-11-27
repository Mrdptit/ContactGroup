//
//  ViewController.swift
//  ContactGroup
//
//  Created by may1 on 11/11/17.
//  Copyright © 2017 Dat. All rights reserved.
//

import UIKit
import SwiftyContacts
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        requestAccess { (responce) in
            if responce{
                print("Contacts Acess Granted")
                fetchContacts(completionHandler: { (result) in
                    switch result{
                    case .Success(response: let contacts):
                        // Do your thing here with [CNContacts] array
                        print(contacts)
                        break
                    case .Error(error: let error):
                        print(error)
                        break
                    }
                })
            } else {
                print("Contacts Acess Denied")
            }
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


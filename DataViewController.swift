//
//  DataViewController.swift
//  yadetam
//
//  Created by ali fazaeli on 7/31/18.
//  Copyright © 2018 sepidar. All rights reserved.
//

import UIKit
import Alamofire

class DataViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var lbl_share_code: UILabel!
    @IBOutlet weak var lbl_internet_status: UILabel!
    var dataObject: String = ""


    @IBAction func txt_field_changed(_ sender: Any) {
        lbl_share_code.text = "HI!"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        check_internet_connection()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //self.dataLabel!.text = dataObject
    }
    
    func check_internet_connection(){
        if !Connectivity.isConnectedToInternet() {
            self.lbl_internet_status.text = "Check internet connection"
        //let alert = UIAlertController(title: "Internet Connection", message: "Check your internet connection please!", preferredStyle: .alert)
        //alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        //self.present(alert, animated: true)
        }
    }
}

class Connectivity {
    class func isConnectedToInternet() ->Bool {
        return NetworkReachabilityManager()!.isReachable
    }
}


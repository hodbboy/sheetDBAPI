//
//  ViewController.swift
//  sheetDBAPI
//
//  Created by Onion on 2021/3/3.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PCname: UITextField!
    @IBOutlet weak var SN: UITextField!
    @IBOutlet weak var Typee: UITextField!
    @IBOutlet weak var For_to: UITextField!
    @IBOutlet weak var Hostname: UITextField!
    @IBOutlet weak var Vlan_ip: UITextField!
    @IBOutlet weak var Wifi_ip: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func newbt(_ sender: UIButton) {
        let PCnumber = String(PCname.text!)
        let SNN = String(SN.text!)
        let Typeee = String(Typee.text!)
        let forto = String(For_to.text!)
        let hostnamb = String(Hostname.text!)
        let Vlanip = String(Vlan_ip.text!)
        let Wifiip = String(Wifi_ip.text!)
        
        let url = URL(string: "https://sheetdb.io/api/v1/ba0289w6p5o2y")
        var urlRequest = URLRequest(url: url!)
        
        urlRequest.httpMethod = "POST"
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let dictionary = ["PCnumber":PCnumber,"Typee":Typeee,"For_to":forto,"Hostname":hostnamb,"Vlan_ip":Vlanip,"Wifi_ip":Wifiip,"SN":SNN]
        do{
            let data = try JSONSerialization.data(withJSONObject: dictionary, options: [])
            let task = URLSession.shared.uploadTask(with: urlRequest, from: data, completionHandler: { (retData, res,
                err) in
                if let returnData = retData, let dic = (try? JSONSerialization.jsonObject(with: returnData)) as? [String:String] {
                    print(dic)
                }
            })
            task.resume()
        }
        catch{
        }
    }
    
}

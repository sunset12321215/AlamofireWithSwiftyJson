import UIKit

import Alamofire    //  Bước 1: Gọi thư viện Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        //  Bước 2: Dùng lệnh
        Alamofire.request("https://codewithchris.com/code/afsample.json").responseJSON
            {(response) in
                
                //  Bước 3: Ép kiểu rồi in dữ liệu ra
                if let json : [String : Any] = response.result.value as? [String : Any]
                {
                    print(json["firstkey"] as! String)
                    print(json["secondkey"] as! NSArray)
                }
        }
    }
}


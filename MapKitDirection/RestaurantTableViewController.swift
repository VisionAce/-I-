//
//  RestaurantTableViewController.swift
//  MapKitDirection
//
//  Created by Simon Ng on 6/10/2016.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {

    var restaurants:[Restaurant] = [
        Restaurant(name: "打鐵街", type: "餐廳", location: "260宜蘭縣宜蘭市打鐵街", phone: "039326293", image: "打鐵街", isVisited: false),
        Restaurant(name: "舊台灣銀行", type: "tea", location: "260宜蘭縣宜蘭市中山路三段1號", phone: "039323901", image: "舊台灣銀行", isVisited: false),
        Restaurant(name: "宜蘭醫院", type: "餐廳", location: "260宜蘭縣宜蘭市新民路152號", phone: "039325192", image: "宜蘭醫院", isVisited: false),
        Restaurant(name: "化龍一村", type: "吃", location: "260宜蘭縣宜蘭市舊城西路32號", phone: "無", image: "化龍一村", isVisited: false),
        Restaurant(name: "設治紀念館", type: "飯", location: "268宜蘭縣宜蘭市舊城南路力行3巷3號", phone: "039326664", image: "設治紀念館", isVisited: false),
        Restaurant(name: "宜蘭酒廠", type: "餐廳", location: "260宜蘭縣宜蘭市舊城西路3號", phone: "039355526#453", image: "宜蘭酒廠", isVisited: false),
        Restaurant(name: "宜蘭郵局", type: "麵", location: "260宜蘭縣宜蘭市中山路三段130號", phone: "039326727", image: "宜蘭郵局", isVisited: false),
        Restaurant(name: "宜蘭國小", type: "tea", location: "260宜蘭縣宜蘭市崇聖街2號", phone: "039322210", image: "宜蘭國小", isVisited: false),
        Restaurant(name: "獻馘碑", type: "飯", location: "260宜蘭縣宜蘭市崇聖街2號", phone: "039325164", image: "獻馘碑", isVisited: false),
        Restaurant(name: "楊士芳林園", type: "餐廳", location: "260宜蘭縣宜蘭市舊城西路66號", phone: "542-343434", image: "楊士芳林園", isVisited: false),
        Restaurant(name: "潘宅古井", type: "吃", location: "260宜蘭縣宜蘭市舊城西路光大巷8號", phone: "無", image: "潘宅古井", isVisited: false),
        Restaurant(name: "第一銀行", type: "飯", location: "260宜蘭縣宜蘭市中山路三段77號號", phone: "無", image: "第一銀行", isVisited: false),
        Restaurant(name: "舊農校長宿舍", type: "麵", location: "260宜蘭縣宜蘭市舊城南路縣府二巷19號", phone: "無", image: "舊農校長宿舍", isVisited: false),
        Restaurant(name: "老樹群", type: "tea", location: "260宜蘭縣宜蘭市新民路152號", phone: "無", image: "老樹群", isVisited: false),
        Restaurant(name: "南館市場", type: "tea", location: "260宜蘭縣宜蘭市光復路25-29號", phone: "無", image: "南館市場", isVisited: false),
        Restaurant(name: "舊宜蘭煙草賣捌所", type: "飯", location: "260宜蘭縣宜蘭市康樂路38號號", phone: "039352493", image: "舊宜蘭煙草賣捌所", isVisited: false),
        Restaurant(name: "基督教長老教會", type: "吃", location: "260宜蘭縣宜蘭市新民路108號", phone: "039351851", image: "基督教長老教會", isVisited: false),
        Restaurant(name: "舊監獄", type: "麵", location: "260宜蘭縣宜蘭市神農路二段117號", phone: "039322440", image: "舊監獄", isVisited: false),
        Restaurant(name: "中山國小", type: "吃", location: "260宜蘭縣宜蘭市崇聖街4號", phone: "039322064", image: "中山國小", isVisited: false),
        Restaurant(name: "舊穀倉", type: "tea", location: "260宜蘭縣宜蘭市光復路13號", phone: "無", image: "舊穀倉", isVisited: false),
        Restaurant(name: "鐵路宿舍", type: "麵", location: "260宜蘭縣宜蘭市宜興路一段116號", phone: "無", image: "鐵路宿舍", isVisited: false),
        Restaurant(name: "北門黃昏市場", type: "tea", location: "260宜蘭縣宜蘭市昇平街33-1號", phone: "039325164", image: "北門黃昏市場", isVisited: false),
        Restaurant(name: "林午鐵工廠", type: "吃", location: "260宜蘭縣宜蘭市中山路三段310號", phone: "039357358", image: "林午鐵工廠", isVisited: false),
        
    ]
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // Return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows
        return restaurants.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        let restaurant = restaurants[indexPath.row]
        cell.textLabel?.text = restaurant.name
        cell.detailTextLabel?.text = restaurant.type
        cell.imageView?.image = UIImage(named: restaurant.image)

        return cell
    }
    
    // MARK: Segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showMap" {
            let destinationController = segue.destination as! MapViewController
            if let indexPath = tableView.indexPathForSelectedRow {
                destinationController.restaurant = restaurants[indexPath.row]
            }
        }
    }
    
    @IBAction func unwindToHomeScreen(segue: UIStoryboardSegue) {
//        dismiss(animated: true, completion: nil)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "tabbar")as! UITabBarController
        self.present(nextVC,animated:true,completion:nil)
        
    }
    
}

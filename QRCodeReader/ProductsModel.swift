import Foundation
import FirebaseDatabase

struct Products {
    var name: String?
    var price: Int?
    var barcode: String?
    var dict: [String: Any]{
        return[
            "Name": name!,
            "Price": price!,
            "Barcode": barcode!
        ]
    }
    
    init(_ name: String, _ price: Int, _ barcode: String) {
        
        self.name = name
        self.price = price
        self.barcode = barcode
    }
    init(snapshot: DataSnapshot) {
        if let value = snapshot.value as? [String: Any]{
            name = value["Name"] as? String
            price = value["Price"] as? Int
            barcode = value["Barcode"] as? String
        }
    }
}

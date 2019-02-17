import UIKit
import Foundation


//codable
struct Content: Codable {
    let id: Int
    let title: String
    let body: String
}

struct Section: Codable {
    let id: Int
    let title: String
    let contents: [Content]
}

let content = Content(id: 1,
                      title: "Getting Started",
                      body: "Body of our content")
let section = Section(id:1,
                      title: "Learn iOS 11 Design",
                      contents:[content])

let encoder = JSONEncoder()
do {
    let jsonData = try encoder.encode(section)
    let jsonObject = try JSONSerialization.jsonObject(with: jsonData, options: .allowFragments)
    print(String(describing: jsonObject))
} catch {
    print(error.localizedDescription)
}




//decodable

struct Update: Decodable {
    let id: Int
    let title: String
    let text: String
    let imageURL: URL
    let date: Date
}

let updateJSONString = """
{
    "id":1,
    "title": "First update"
    "text": "This is the first update of our updates elements",
    "imageURL": "https://designcode.io/images.png",
    "data": 534988800
}
"""

do {
    let decoder = JSONDecoder()
    let data = updateJSONString.data(using: .utf8)!
    let update = try decoder.decode(Update.self, from:data)
    print(update)
} catch {
    print(error.localizedDescription)
}

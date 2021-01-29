
import Foundation

var bucketData : [BucketListItem] = loadJSON(from: "landmarkData.json")

func loadJSON(from file: String) -> [BucketListItem]{
    
    if let dataURL = Bundle.main.url(forResource: file, withExtension: nil)
    {
        let data = try! Data(contentsOf: dataURL)
        let decoder = JSONDecoder()
        do{
            let results = try decoder.decode([BucketListItem].self, from: data)
            return results
        }catch{
            print(error.localizedDescription)
        }
    }
    
    return[BucketListItem]()
}








//public class DataLoader{
//
//    @Published var userData = [Blankfilling]()
//
//    init() {
//        load()
//    }
//
//    func load() {
//        if let fileLocation = Bundle.main.url(forResource: "Blankfillintest_1", withExtension: "json"){
//            do{
//                let data = try Data(contentsOf: fileLocation)
//                let jsonDecoder = JSONDecoder()
//                let datafromJson = try jsonDecoder.decode([Blankfilling].self, from: data)
//
//                self.userData = datafromJson
//
//
//            } catch{
//                print(error)
//            }
//        }
//
//    }
//
//}

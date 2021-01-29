//
//  whatstores.swift
//  BeetleAcademy
//
//  Created by 宋世骄 on 12/10/20.
//

import Combine

class BucketStore: ObservableObject {
    @Published var buckets: [BucketListItem]
    
    
    init(buckets:[BucketListItem] = []) {
        self.buckets = buckets
    }
}

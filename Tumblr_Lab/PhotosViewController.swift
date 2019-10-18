//
//  PhotoViewController.swift
//  Tumblr_Lab
//
//  Created by Miko James on 10/17/19.
//  Copyright © 2019 Miko James. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
    // MARK: - Properties
    
    var posts: [[String: Any]] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        retreivePosts()
    }
    
    // MARK: - Private Functions
    
    private func retreivePosts() {
        let url = URL(string: "https://api.tumblr.com/v2/blog/humansofnewyork.tumblr.com/posts/photo?api_key=Q6vHoaVm5L1u2ZAW1fqv3Jw48gFzYVg9P0vH0VHl3GVy6quoGV")!
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: .main)
        session.configuration.requestCachePolicy = .reloadIgnoringLocalCacheData
        let task = session.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
            } else if let data = data,
                let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                print(dataDictionary)
                
                // TODO: Get the posts and store in posts property
                
                // TODO: Reload the table view
            }
        }
        task.resume()
    }
}
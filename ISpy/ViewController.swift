//
//  ViewController.swift
//  ISpy
//
//  Created by Dana Lucas on 3/21/22.
//

import UIKit

class ViewController: UIViewController , UIScrollViewDelegate{

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    override func viewDidAppear(_ animated: Bool) {
        updateZoomFor(size: view.bounds.size)

    
    }
    func updateZoomFor(size:CGSize)
    {
        let widthScale = size.width / imageView.bounds.width
        let heightScale = size.height / imageView.bounds.height
        let scale = min(widthScale, heightScale)
        scrollView.minimumZoomScale = scale
        scrollView.zoomScale = scale
        // Do any additional setup after loading the view.
    }


}


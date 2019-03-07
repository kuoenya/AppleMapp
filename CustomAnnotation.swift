//
//  CustomAnnotation.swift
//  Applemap
//
//  Copyright © 2018年 azusa. All rights reserved.
//

import UIKit
import MapKit

@objc protocol CustomAnnotation: MKAnnotation {
    var viewId: String { get }
    var img: UIImage { get }
    init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D)
}

class AnnotationBlue: NSObject, CustomAnnotation {
    var viewId = "annotation_blue"
    var img = #imageLiteral(resourceName: "blue")
    var coordinate:CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    required init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
        super.init()
    }
}

class AnnotationRed: NSObject, CustomAnnotation {
    var viewId = "annotation_red"
    var img = #imageLiteral(resourceName: "red")
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    required init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
    
}


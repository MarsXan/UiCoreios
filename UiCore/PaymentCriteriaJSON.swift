//
//  PaymentCriteriaJSON.swift
//  Razmeh
//
//  Created by Fariba on 12/20/1396 AP.
//  Copyright © 1396 AP Rahyab. All rights reserved.
//

import Foundation
import ObjectMapper


public open class PaymentCriteriaJSON :NSObject, Mappable {
    var pay_in :String?
    var current_date :String?
    var wage_pay_method :String?
    var items_pay_method :String?
    
  public override init() {
    super.init()
  }
  
  required public init?(map: Map) {
  }
  
  public func mapping(map: Map) {
        pay_in <- map["pay_in"]
        current_date <- map ["current_date"]
        wage_pay_method <- map["wage_pay_method"]
        items_pay_method <- map["items_pay_method"]
  }
  
  override open func isEqual(_ object: Any?) -> Bool {
    if let other = object as? PaymentCriteriaJSON {
      return self.wage_pay_method == other.wage_pay_method && self.items_pay_method == other.items_pay_method
    } else {
      return false
    }
  }
}

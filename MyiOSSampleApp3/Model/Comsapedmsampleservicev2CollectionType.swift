//
// MyiOSSampleApp3
//
// Created by SAP Cloud Platform SDK for iOS Assistant application on 08/05/20
//

import Foundation

enum Comsapedmsampleservicev2CollectionType: String {
    case salesOrderItems = "SalesOrderItems"
    case productTexts = "ProductTexts"
    case salesOrderHeaders = "SalesOrderHeaders"
    case stock = "Stock"
    case customers = "Customers"
    case purchaseOrderItems = "PurchaseOrderItems"
    case productCategories = "ProductCategories"
    case suppliers = "Suppliers"
    case purchaseOrderHeaders = "PurchaseOrderHeaders"
    case products = "Products"
    case none = ""
    static let all = [salesOrderItems, productTexts, salesOrderHeaders, stock, customers, purchaseOrderItems, productCategories, suppliers, purchaseOrderHeaders, products]
}

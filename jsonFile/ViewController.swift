//
//  ViewController.swift
//  jsonFile
//
//  Created by Ruslan Sharshenov on 18.01.2022.
//

import UIKit

// #1 //

class NewsModel: Codable{
    var news: [NewsModel1] = []
    var page: Int? = nil
}

class NewsModel1: Codable{
    var title: String? = nil
    var id: Int? = nil
    var image: String? = nil
}
 // #2 //


class CafeModel: Codable{
    var cafe: [CafeModel1] = []
    var coment: Comment
}

class CafeModel1: Codable{
    var title: String? = nil
    var id: Int? = nil
    var image: String? = nil
    var bord: [Int] = []
}

class Comment: Codable{
    var id: String? = nil
}

// #3 //

class CafeModel2: Codable{
    var cafe: [CafeModel23] = []
}

class CafeModel23: Codable{
    var title: String? = nil
    var id: Int? = nil
    var image: String? = nil
    var bord: [BordModel] = []
}

class BordModel: Codable{
    var id: Int? = nil
    var title: String? = nil
}

// ДОП //

class EldarsDop: Codable {
    var dependentsCount: String? = nil
    var requestingAmount: Int? = nil
    var repaymentDays: Int? = nil
    var educationDegree: String? = nil
    var actualResidenceLocation: String? = nil
    var durationOfActualResidenceLocation: String
    var placeOfWork: PlaceOfWork
    var incomes: [Incomes] = []
    var maritalStatus: String? = nil
    var spouse: Spouse
    var realEstateItems: [RealEstateItem] = []
    var personalEstateItems: [PersonalEstateItem] = []
    var isPublicOfferRead: Bool
    var isLimitUpgradeApplication: Bool
}

class Incomes: Codable {
    var work: String? = nil
    var value: Int? = nil
}

class PersonalEstateItem: Codable {
    var type: String? = nil
    var brand: String? = nil
    var model: String? = nil
    var manufactureYear: Int? = nil
}

class PlaceOfWork: Codable {
    var placeOfWorkType: String? = nil
    var income: Int? = nil
    var address: String? = nil
    var workExperience: String? = nil
    var employeeCompany: String? = nil
    var employeePosition: String? = nil
    var documentImage: String? = nil
    var entrepreneurshipType: String? = nil
    var entrepreneurshipDescription: String? = nil
    var entrepreneurshipCertificateNumber: String? = nil
}

class RealEstateItem: Codable {
    var type: String? = nil
    var address: String? = nil
}

class Spouse: Codable {
    var name: String? = nil
    var surname: String? = nil
    var patronymic: String? = nil
    var incomes: [Incomes] = []
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // #1 //
        var json1 = """
{
  "news" : [
    {
      "title": "test1",
      "id": 1,
      "image": "URL"
    },
    {
      "title": "test1",
      "id": 1,
      "image": "URL"
    },
    {
      "title": "test1",
      "id": 1,
      "image": "URL"
    },
    {
      "title": "test1",
      "id": 1,
      "image": "URL"
    },
    {
      "title": "test1",
      "id": 1,
      "image": "URL"
    }
  ],
  "page": 10
}

"""
        // #2 //
       var json2 = """
        {
          "cafe" : [
            {
              "title": "test1",
              "id": 1,
              "image": "URL",
              "bord": [1, 2, 3, 4]
            },
            {
              "title": "test1",
              "id": 1,
              "image": "URL",
              "bord": [1, 2, 3, 4]
            },
            {
              "title": "test1",
              "id": 1,
              "image": "URL",
              "bord": [1, 2, 3, 4]
            },
            {
              "title": "test1",
              "id": 1,
              "image": "URL",
              "bord": [1, 2, 3, 4]
            },
            {
              "title": "test1",
              "id": 1,
              "image": "URL",
              "bord": [1, 2, 3, 4]
            }
          ],
          "coment": {
            "id": "test"
          }
        }
"""
        // #3 //
        var json3 = """
{
  "cafe" : [
    {
      "title": "test1",
      "id": 1,
      "image": "URL",
      "bord": [
        {
          "id": 1,
          "title": "test"
        },
        {
          "id": 2,
          "title": "test"
        }
      ]
    },
    {
      "title": "test1",
      "id": 1,
      "image": "URL",
      "bord": [
        {
          "id": 1,
          "title": "test"
        },
        {
          "id": 2,
          "title": "test"
        }
        ]
    },
    {
      "title": "test1",
      "id": 1,
      "image": "URL",
      "bord": [
        {
          "id": 1,
          "title": "test"
        },
        {
          "id": 2,
          "title": "test"
        }
      ]
    },
    {
      "title": "test1",
      "id": 1,
      "image": "URL",
      "bord": [
        {
          "id": 1,
          "title": "test"
        },
        {
          "id": 2,
          "title": "test"
        }
        ]
    },
    {
      "title": "test1",
      "id": 1,
      "image": "URL",
      "bord": [
        {
          "id": 1,
          "title": "test"
        },
        {
          "id": 2,
          "title": "test"
        }
      ]
    }
  ]
}
"""
        // ДОП //
        var json4 = """
{
  "dependentsCount": "Nil",
  "requestingAmount": 0,
  "repaymentDays": 0,
  "educationDegree": "Higher",
  "actualResidenceLocation": "Bishkek",
  "durationOfActualResidenceLocation": "_0and2Months",
  "placeOfWork": {
    "placeOfWorkType": "Company",
    "income": 100000000,
    "address": "string",
    "workExperience": "OneOrLess",
    "employeeCompany": "string",
    "employeePosition": "Specialist",
    "documentImage": "string",
    "entrepreneurshipType": "Trade",
    "entrepreneurshipDescription": "string",
    "entrepreneurshipCertificateNumber": "string"
  },
  "incomes": [
    {
      "work": "string",
      "value": 100000000
    }
  ],
  "maritalStatus": "Single",
  "spouse": {
    "name": "string",
    "surname": "string",
    "patronymic": "string",
    "incomes": [
      {
        "work": "string",
        "value": 100000000
      }
    ]
  },
  "realEstateItems": [
    {
      "type": "Apartment",
      "address": "string"
    }
  ],
  "personalEstateItems": [
    {
      "type": "Car",
      "brand": "string",
      "model": "string",
      "manufactureYear": 2100
    }
  ],
  "isPublicOfferRead": true,
  "isLimitUpgradeApplication": true
}

"""
        // #1 //
        var model1 = try! JSONDecoder().decode(NewsModel.self, from: Data(json1.utf8))

        dump(model1)
        // #2 //
        var model2 = try! JSONDecoder().decode(CafeModel.self, from: Data(json2.utf8))

        dump(model2)
        // #3 //
        var model3 = try! JSONDecoder().decode(CafeModel2.self, from: Data(json3.utf8))

        dump(model3)
        // ДОП //
        var model4 = try! JSONDecoder().decode(EldarsDop.self, from: Data(json4.utf8))

        dump(model4)
    }


}


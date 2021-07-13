import UIKit

class Contact {
     private var userName = ""
     private var userNumber = ""

    func getName() -> String {
        return userName
    }

    func editUserName(Name: String) {
        userName = Name
    }

    func getNumber()-> String{
        return userNumber
    }
    func editNumber(number: String)  {
        userNumber = number
    }
}



class Phone {
    var number: String
    var model: String = ""
    var contacts:[Contact]

    init(number: String, model: String, contacts: [Contact]) {
        self.model = model
        self.number = number
        self.contacts = contacts

        
    }
    func reciveCall(number: String)  {
        var message = "Звонок от \(number)"
        for i in self.contacts {
            if i.getNumber() == number {
                message = "Звонок от \(i.getName())"
                break
            }
        }
        print(message)
    }
    
}
    
class Iphone: Phone {
    
    
    override func reciveCall(number: String) {
        var message = "\(number) is calling"
        for contact in contacts where contact.getNumber() == number {
            message = " \(contact.getName()) is calling"
            break
        }
        print(message)
    }
    
}


let contact1 = Contact()
contact1.editNumber(number: "0500111112")
contact1.editUserName(Name: "MAx")
let contact2  = Contact()
contact2.editNumber(number: "0500111113")
contact2.editUserName(Name: "Mert")
let contact3  = Contact()
contact3.editNumber(number: "0500111114")
contact3.editUserName(Name: "Nena")



let iphone = Iphone(number: "0500111112", model: "Nokia", contacts: [contact1,contact2,contact3])

iphone.reciveCall(number:"0500111112")







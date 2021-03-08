import UIKit

// Задание 1. Формирование коллекции типа очередь (Queue) в Generic структуре

struct QueueGeneric<Element> {
    var items = [Element]()

    mutating func push(_ item: Element) {
        items.insert(item, at: 0)
    }
    
    mutating func pop() {
        items.removeFirst()
    }
    
    
    // Задание 2. Создание методов высшего порядка для обработки коллекции типа Queue
    
    func ItemsMoreThan<Element>(array: [Element], function: (_ element: Element) -> Bool) -> Int {           // Подсчет количества элементов больших MoreThan
        
        var k: Int = 0
        
        for element in array {
            if function(element) {
                k += 1
            }
        }
        return k
    }
    
    func ItemsMultipleOfNumber<Element>(array: [Element], function: (_ element: Element) -> Bool) -> Int {    // Подсчет количества элементов кратных Number
        
        var k: Int = 0
        
        for element in array {
            if function(element) {
                k += 1
            }
        }
        return k
    }
    
    
    func ArrayMultipleOfNumber<Element>(array: [Element], functionSelect: (_ element: Element) -> Bool) -> [Element] {   // Получение массива из элементов кратных Number
        
        var NewItems = [Element]()
        
        for element in array {
            if functionSelect(element) {
                NewItems.append(element)
            }
        }
        
        return NewItems
        
    }
        
    // Задание 3. Создание Subscript с обращением к элементу массива по случайному индексу
    
    subscript(index: Int) -> Element? {
        var ValueReturn: Element? = nil
        if index <= items.count {
            ValueReturn = items[index]
        }
            return ValueReturn
    }
    
}
    


let QueueArrayQuantity: Int = 20                              // Количество элементов в очереди

let MoreThan: Int = 50                                        // Значение, относительно которого ведется подсчет количества элементов очереди (>)

let Number: Int = 3                                           // Значение для подсчета количества кратных ему элементов в очереди

var QueueOfInt = QueueGeneric<Int>()



for _ in 1...QueueArrayQuantity {                             // Формирование коллекции типа очередь (Queue) из Generic структуры в экземпляр QueueOfInt
                                                    
    let QueueArrayItem: Int = Int.random(in: 1...100)         // Формирование элемента очереди случайным образом
    
    QueueOfInt.push(QueueArrayItem)                           // Создание очереди типа Int в Generic структуре
}

print(QueueOfInt)


// Обращение к методам высшего порядка в Generic структуре для обработки массива

print("Количество элементов в массиве, которые больше \(MoreThan):  \(QueueOfInt.ItemsMoreThan(array: QueueOfInt.items) { $0 > MoreThan}) шт")

print("Количество элементов в массиве, кратных \(Number):  \(QueueOfInt.ItemsMultipleOfNumber(array: QueueOfInt.items) { $0 % Number == 0}) шт")

print("Массив из элементов, кратных \(Number):  \(QueueOfInt.ArrayMultipleOfNumber(array: QueueOfInt.items) {$0 % Number == 0})")



let IndexArray: Int = Int.random(in: 0...49)                  // Генерация случайного индекса

if let s = (QueueOfInt[IndexArray]) {
    print("Значение элемента массива по индексу: \(IndexArray):  \(s)")
} else {
    print("Значение элемента массива по индексу: \(IndexArray): nil ")
}


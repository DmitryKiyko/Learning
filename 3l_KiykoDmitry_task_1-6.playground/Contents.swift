//  Задание № 1, 2, 4, 4, 6. Структуры, Методы, Конструкторы.

enum PassengerCarModel {
    case ScodaOctavia
    case ToyotaCorolla
    case NissanQashkai
    case VWTuareg
}

enum SportCarModel {
    case Porshe944
    case BMWM8
    case MersedesGT
    case AudiRSQ8
}

enum TruckModel {
    case MAN
    case Kamaz
    case Iveco
    case DAF
}

enum ManufacDate {
    case July2020, Aug2020, Sept2020, Oct2020, Nov2020, Dec2020
}
    

enum Engine {
    case Running, Stopped
}

enum Windows {
    case Open, Close
}

enum Boot {
    case Empty, Full
}

struct PassengerCar {
    let model: PassengerCarModel
    let manufacdate: ManufacDate
    var enginestatus: Engine
    var windowsstatus: Windows
    var bootstatus: Boot
    var bootvolume: Double
    mutating func FullEmptyBootPass(statusB: Boot) {
        self.bootstatus = statusB
    }
    mutating func CloseOpenWindowsPass(statusW: Windows) {
        self.windowsstatus = statusW
    }
    
    init(modelPass: PassengerCarModel, manufacdatePass: ManufacDate, enginestatusPass: Engine, windowsstatusPass: Windows, bootstatusPass: Boot, bootvolumePass: Double, kmPass: Double) {
        self.model = modelPass
        self.manufacdate = manufacdatePass
        self.enginestatus = enginestatusPass
        self.windowsstatus = windowsstatusPass
        self.bootstatus = bootstatusPass
        self.bootvolume = bootvolumePass
    }
}

struct SportCar {
    let model: SportCarModel
    let manufacdate: ManufacDate
    var enginestatus: Engine
    var windowsstatus: Windows
    var bootstatus: Boot
    var bootvolume: Double
    
    mutating func FullEmptyBootSport(statusB: Boot) {
        self.bootstatus = statusB
    }
    mutating func CloseOpenWindowsSport(statusW: Windows) {
        self.windowsstatus = statusW
    }
    
    init(modelSport: SportCarModel, manufacdateSport: ManufacDate, enginestatusSport: Engine, windowsstatusSport: Windows, bootstatusSport: Boot, bootvolumeSport: Double, kmSport: Double) {
        self.model = modelSport
        self.manufacdate = manufacdateSport
        self.enginestatus = enginestatusSport
        self.windowsstatus = windowsstatusSport
        self.bootstatus = bootstatusSport
        self.bootvolume = bootvolumeSport
    }
}

struct Truck {
    let model: TruckModel
    let manufacdate: ManufacDate
    var enginestatus: Engine
    var windowsstatus: Windows
    var bootstatus: Boot
    var bootvolume: Double
    
    mutating func FullEmptyBootTruck(statusB: Boot) {
        self.bootstatus = statusB
    }
    mutating func CloseOpenWindowsTruck(statusW: Windows) {
        self.windowsstatus = statusW
    }
    
    init(modelTruck: TruckModel, manufacdateTruck: ManufacDate, enginestatusTruck: Engine, windowsstatusTruck: Windows, bootstatusTruck: Boot, bootvolumeTruck: Double, kmTruck: Double) {
        self.model = modelTruck
        self.manufacdate = manufacdateTruck
        self.enginestatus = enginestatusTruck
        self.windowsstatus = windowsstatusTruck
        self.bootstatus = bootstatusTruck
        self.bootvolume = bootvolumeTruck
    }
}

    var car1 = PassengerCar(modelPass: .ScodaOctavia, manufacdatePass: .Dec2020, enginestatusPass: .Running, windowsstatusPass: .Close, bootstatusPass: .Empty, bootvolumePass: 458.5, kmPass: 21.3)
    var car2 = PassengerCar(modelPass: .VWTuareg, manufacdatePass: .Nov2020, enginestatusPass: .Stopped, windowsstatusPass: .Close, bootstatusPass: .Empty, bootvolumePass: 720.2, kmPass: 5.2)
print("Легковой автомобиль: \(car1.model), Состояние окон:  \(car1.windowsstatus)")
car1.CloseOpenWindowsPass(statusW: .Open)
print("Легковой автомобиль: \(car1.model), Состояние окон:  \(car1.windowsstatus)")
print("Легковой автомобиль: \(car2.model), Состояние багажника:  \(car2.bootstatus)")
car2.FullEmptyBootPass(statusB: .Full)
print("Легковой автомобиль: \(car2.model), Состояние багажника:  \(car2.bootstatus)")

    var sportcar1 = SportCar(modelSport: .Porshe944, manufacdateSport: .Oct2020, enginestatusSport: .Stopped, windowsstatusSport: .Close, bootstatusSport: .Empty, bootvolumeSport: 110.3, kmSport: 10.7)
    var sportcar2 = SportCar(modelSport: .AudiRSQ8, manufacdateSport: .Sept2020, enginestatusSport: .Stopped, windowsstatusSport: .Close, bootstatusSport: .Empty, bootvolumeSport: 60.8, kmSport: 8.1)
print("Спорткар: \(sportcar1.model), Состояние окон:  \(sportcar1.windowsstatus)")
sportcar1.CloseOpenWindowsSport(statusW: .Open)
print("Спорткар: \(sportcar1.model), Состояние окон:  \(sportcar1.windowsstatus)")
print("Спорткар: \(sportcar2.model), Состояние багажника:  \(sportcar2.bootstatus)")
sportcar2.FullEmptyBootSport(statusB: .Full)
print("Спорткар: \(sportcar2.model), Состояние багажника:  \(sportcar2.bootstatus)")

    var truck1 = Truck(modelTruck: .DAF, manufacdateTruck: .July2020, enginestatusTruck: .Stopped, windowsstatusTruck: .Open, bootstatusTruck: .Empty, bootvolumeTruck: 21050.3, kmTruck: 8.3)
    var truck2 = Truck(modelTruck: .MAN, manufacdateTruck: .Aug2020, enginestatusTruck: .Stopped, windowsstatusTruck: .Open, bootstatusTruck: .Empty, bootvolumeTruck: 20100.0, kmTruck: 12.1)
print("Грузовик: \(truck1.model), Состояние окон:  \(truck1.windowsstatus)")
truck1.CloseOpenWindowsTruck(statusW: .Close)
print("Грузовик: \(truck1.model), Состояние окон:  \(truck1.windowsstatus)")
print("Грузовик: \(truck2.model), Состояние кузова:  \(truck2.bootstatus)")
truck2.FullEmptyBootTruck(statusB: .Full)
print("Грузовик: \(truck2.model), Состояние кузова:  \(truck2.bootstatus)")




// Задание 3. Перечисления

enum CarAction {
    case Engine (Start: Int, Stop: Int)
    case Windows (Open: Int, Close: Int)
    case Load (Weight: Double)
    case Unload (Weight: Double)
}
let action = CarAction.Engine (Start: 0, Stop: 1)

switch action {
case let .Engine (Start, Stop) where Start == 1 && Stop == 0:
    print("Engine Start Command")
case let .Engine (Start, Stop) where Start == 0 && Stop == 1:
    print("Engine Stop Command")
case .Windows (let Open, let Close) where Open == 1 && Close == 0:
    print("Windows Open Command")
case .Windows (let Open, let Close) where Open == 0 && Close == 1:
    print("Windows Close Command")
case let .Load (Weight) where Weight < 50.0:
    print("Load Command")
case let .Load (Weight):
    print("Error: The luggage is too heavy")
case let .Unload (Weight):
    print("Unload Command. Weight: \(Weight)")
default:
    print("No any command")
}




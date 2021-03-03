
enum CarModel {
    case Ford
    case Toyota
    case Audi
    case VW
}

enum ManufacDate {
    case July2020, Aug2020, Sept2020, Oct2020, Nov2020, Dec2020
}

enum Windows {
    case Open, Close
}

enum Boot {
    case Empty, Full
}

enum Engine {
    case Running, Stopped
}



protocol Car {
    
    var bootCond: Boot {get set}
    var windowsCond: Windows {get set}
    var engineCond: Engine {get set}
    
}

extension Car {
    
    mutating func FullEmptyBoot(statusB: Boot) {
        self.bootCond = statusB
        print(" Багажник: \(bootCond)")
    }
    
    mutating func CloseOpenWindows(statusW: Windows) {
        self.windowsCond = statusW
        print("Окна в состоянии: \(windowsCond)")
    }
    
    mutating func StartStopEngine(statusEngine: Engine) {
        self.engineCond = statusEngine
        print("Двигатель: \(engineCond)")
    }
}



class SportCar: Car {
    
    var bootCond: Boot {
        get {
            return bootstatus
        }
        set{
            bootstatus = newValue
        }}
    var windowsCond: Windows {
        get {
            return windowsstatus
        }
        set {
            windowsstatus = newValue
        }}
    var engineCond: Engine {
        get {
            return enginestatus
        }
        set {
            enginestatus = newValue
        }}
    
    
    enum SportSeats {
        case One, Two
    }
    
    
    let model: CarModel
    let manufacdate: ManufacDate
    var enginestatus: Engine
    var windowsstatus: Windows
    var bootstatus: Boot
    var bootvolume: Double
    
    var EnginePower: Int
    var BrakeSize: Int
    var Seats: SportSeats
    
    init(model: CarModel, manufacdate: ManufacDate, enginestatus: Engine, windowsstatus: Windows, bootstatus: Boot, bootvolume: Double, km: Double, EnginePower: Int, BrakeSize: Int, Seats: SportSeats) {
        self.EnginePower = EnginePower
        self.BrakeSize = BrakeSize
        self.Seats = Seats
        self.model = model
        self.manufacdate = manufacdate
        self.enginestatus = enginestatus
        self.windowsstatus = windowsstatus
        self.bootstatus = bootstatus
        self.bootvolume = bootvolume
    }
    
    var description: String {
        return String (describing: BrakeSize)
    }
    
    func ChangeBrakeSize(_ Diamentr: Int){
        BrakeSize = Diamentr
        print(" \(model) (Sport ver): Замена тормозных дисков на диаметр (мм): \(BrakeSize) ")
    }
    
    func ChangeSeats(_ SeatsNumber: Int){
        switch SeatsNumber {
        case 1:
            Seats = .One
        case 2:
            Seats = .Two
        default:
            print("Количество спортивных сидений введено некорректно")
        }
        
        print(" \(model) (Sport ver): Количество спортивных сидений : \(Seats) ")
    }
    
    
}

extension SportCar: CustomStringConvertible {
    func printDescription() {
        print(" Размер тормозных дисков: \(description) (мм)")
    }
}



class TrunkCar: Car {
    
    var bootCond: Boot {
        get {
            return bootstatus
        }
        set{
            bootstatus = newValue
        }}
    var windowsCond: Windows {
        get {
            return windowsstatus
        }
        set {
            windowsstatus = newValue
        }}
    var engineCond: Engine {
        get {
            return enginestatus
        }
        set {
            enginestatus = newValue
        }}
    
    
    
    var EnginePower: Int
    var TrunkLength: Double
    
    let model: CarModel
    let manufacdate: ManufacDate
    var enginestatus: Engine
    var windowsstatus: Windows
    var bootstatus: Boot
    var bootvolume: Double
    
    
    init(model: CarModel, manufacdate: ManufacDate, enginestatus: Engine, windowsstatus: Windows, bootstatus: Boot, bootvolume: Double, km: Double,  EnginePower: Int, TrunkLength: Double) {
        self.EnginePower = EnginePower
        self.TrunkLength = TrunkLength
        self.model = model
        self.manufacdate = manufacdate
        self.enginestatus = enginestatus
        self.windowsstatus = windowsstatus
        self.bootstatus = bootstatus
        self.bootvolume = bootvolume
    
    }
    
    var description: String {
        return String (describing: TrunkLength)
    }
    
    func ChangeTrunkLength(_ Length: Double){
        TrunkLength = Length
        print(" \(model) (Trunk ver): Замена багажника. Установлен багажник длиной (см): \(TrunkLength) ")
    }
    
    func ChangeTrunkVolume(_ Volume: Double){
        bootvolume = Volume
        print(" \(model) (Trunk ver): Замена багажника. Установлен багажник объемом (л): \(bootvolume) ")
    }
    
    
}

extension TrunkCar: CustomStringConvertible {
    func printDescription() {
        print(" Длина багажника: \(description) (см)")
    }
}


var SportCar1 = SportCar(model: .Toyota, manufacdate: .Dec2020, enginestatus: .Stopped, windowsstatus: .Close, bootstatus: .Empty, bootvolume: 90.2, km: 12.7, EnginePower: 290, BrakeSize: 320, Seats: .One)

var SportCar2 = SportCar(model: .Ford, manufacdate: .July2020, enginestatus: .Stopped, windowsstatus: .Close, bootstatus: .Empty, bootvolume: 85.5, km: 8.3, EnginePower: 300, BrakeSize: 330, Seats: .One)

var SportCar3 = SportCar(model: .Audi, manufacdate: .Aug2020, enginestatus: .Stopped, windowsstatus: .Close, bootstatus: .Empty, bootvolume: 100.0, km: 15.9, EnginePower: 310, BrakeSize: 340, Seats: .One)


SportCar1.ChangeBrakeSize(340)
SportCar1.FullEmptyBoot(statusB: .Full)
SportCar1.printDescription()

SportCar2.ChangeBrakeSize(350)
SportCar2.FullEmptyBoot(statusB: .Full)
SportCar2.printDescription()

SportCar3.ChangeBrakeSize(330)
SportCar3.FullEmptyBoot(statusB: .Full)
SportCar3.printDescription()

print("")


var TrunkCar1 = TrunkCar(model: .VW, manufacdate: .Oct2020, enginestatus: .Stopped, windowsstatus: .Close, bootstatus: .Empty, bootvolume: 2800, km: 120.8, EnginePower: 270, TrunkLength: 220)

var TrunkCar2 = TrunkCar(model: .Toyota, manufacdate: .Dec2020, enginestatus: .Stopped, windowsstatus: .Close, bootstatus: .Empty, bootvolume: 3000, km: 90.5, EnginePower: 290, TrunkLength: 215)

var TrunkCar3 = TrunkCar(model: .Ford, manufacdate: .Nov2020, enginestatus: .Stopped, windowsstatus: .Close, bootstatus: .Empty, bootvolume: 2750, km: 58.1, EnginePower: 298, TrunkLength: 230)

TrunkCar1.ChangeTrunkLength(235)
TrunkCar1.FullEmptyBoot(statusB: .Full)
TrunkCar1.printDescription()

TrunkCar2.ChangeTrunkLength(230)
TrunkCar2.FullEmptyBoot(statusB: .Full)
TrunkCar2.printDescription()

TrunkCar3.ChangeTrunkLength(225)
TrunkCar3.FullEmptyBoot(statusB: .Full)
TrunkCar3.printDescription()

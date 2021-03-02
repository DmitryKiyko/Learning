
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
    
    func FullEmptyBoot(statusB: Boot)
    
    func CloseOpenWindows(statusW: Windows)
        
    func StartStopEngine(statusEngine: Engine)
    
    var bootCond: Boot {get set}
    var windowsCond: Windows {get set}
    var engineCond: Engine {get set}
    
}

extension Car {
    
    mutating func FullEmptyBoot(statusB: Boot) {
        self.bootCond = statusB
        print("Багажник: \(bootCond)")
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
    
    func FullEmptyBoot(statusB: Boot) {
    }
    func CloseOpenWindows(statusW: Windows) {
    }
    func StartStopEngine(statusEngine: Engine) {
    }
    
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




class TrunkCar: Car {
    
    func FullEmptyBoot(statusB: Boot) {
    }
    func CloseOpenWindows(statusW: Windows) {
    }
    func StartStopEngine(statusEngine: Engine) {
    }
    
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

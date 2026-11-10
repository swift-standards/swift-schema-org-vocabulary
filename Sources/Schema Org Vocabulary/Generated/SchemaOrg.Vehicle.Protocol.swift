extension SchemaOrg.Vehicle {

    public protocol `Protocol`:
        SchemaOrg.Product.`Protocol`,
        SchemaOrg.Domain.CallSign,
        SchemaOrg.Domain.FuelType,
        SchemaOrg.Domain.ProductionDate,
        SchemaOrg.Domain.PurchaseDate
    {}
}

extension SchemaOrg.Vehicle.`Protocol` {

    public var accelerationTime: SchemaOrg.QuantitativeValue? {
        get { self[first: "accelerationTime"] }
        set { self[first: "accelerationTime"] = newValue }
    }

    public var bodyType: SchemaOrg.Range.BodyType? {
        get { self[first: "bodyType"] }
        set { self[first: "bodyType"] = newValue }
    }

    public var cargoVolume: SchemaOrg.QuantitativeValue? {
        get { self[first: "cargoVolume"] }
        set { self[first: "cargoVolume"] = newValue }
    }

    public var dateVehicleFirstRegistered: ISO_8601.CalendarDate? {
        get { self[first: "dateVehicleFirstRegistered"] }
        set { self[first: "dateVehicleFirstRegistered"] = newValue }
    }

    public var driveWheelConfiguration: SchemaOrg.Range.DriveWheelConfiguration? {
        get { self[first: "driveWheelConfiguration"] }
        set { self[first: "driveWheelConfiguration"] = newValue }
    }

    public var emissionsCO2: Swift.Double? {
        get { self[first: "emissionsCO2"] }
        set { self[first: "emissionsCO2"] = newValue }
    }

    public var fuelCapacity: SchemaOrg.QuantitativeValue? {
        get { self[first: "fuelCapacity"] }
        set { self[first: "fuelCapacity"] = newValue }
    }

    public var fuelConsumption: SchemaOrg.QuantitativeValue? {
        get { self[first: "fuelConsumption"] }
        set { self[first: "fuelConsumption"] = newValue }
    }

    public var fuelEfficiency: SchemaOrg.QuantitativeValue? {
        get { self[first: "fuelEfficiency"] }
        set { self[first: "fuelEfficiency"] = newValue }
    }

    public var knownVehicleDamages: Swift.String? {
        get { self[first: "knownVehicleDamages"] }
        set { self[first: "knownVehicleDamages"] = newValue }
    }

    public var meetsEmissionStandard: SchemaOrg.Range.MeetsEmissionStandard? {
        get { self[first: "meetsEmissionStandard"] }
        set { self[first: "meetsEmissionStandard"] = newValue }
    }

    public var mileageFromOdometer: SchemaOrg.QuantitativeValue? {
        get { self[first: "mileageFromOdometer"] }
        set { self[first: "mileageFromOdometer"] = newValue }
    }

    public var modelDate: ISO_8601.CalendarDate? {
        get { self[first: "modelDate"] }
        set { self[first: "modelDate"] = newValue }
    }

    public var numberOfAirbags: SchemaOrg.Range.NumberOfAirbags? {
        get { self[first: "numberOfAirbags"] }
        set { self[first: "numberOfAirbags"] = newValue }
    }

    public var numberOfAxles: SchemaOrg.Range.NumberOfAxles? {
        get { self[first: "numberOfAxles"] }
        set { self[first: "numberOfAxles"] = newValue }
    }

    public var numberOfDoors: SchemaOrg.Range.NumberOfDoors? {
        get { self[first: "numberOfDoors"] }
        set { self[first: "numberOfDoors"] = newValue }
    }

    public var numberOfForwardGears: SchemaOrg.Range.NumberOfForwardGears? {
        get { self[first: "numberOfForwardGears"] }
        set { self[first: "numberOfForwardGears"] = newValue }
    }

    public var numberOfPreviousOwners: SchemaOrg.Range.NumberOfPreviousOwners? {
        get { self[first: "numberOfPreviousOwners"] }
        set { self[first: "numberOfPreviousOwners"] = newValue }
    }

    public var payload: SchemaOrg.QuantitativeValue? {
        get { self[first: "payload"] }
        set { self[first: "payload"] = newValue }
    }

    public var seatingCapacity: SchemaOrg.Range.SeatingCapacity? {
        get { self[first: "seatingCapacity"] }
        set { self[first: "seatingCapacity"] = newValue }
    }

    public var speed: SchemaOrg.QuantitativeValue? {
        get { self[first: "speed"] }
        set { self[first: "speed"] = newValue }
    }

    public var steeringPosition: SchemaOrg.SteeringPositionValue? {
        get { self[first: "steeringPosition"] }
        set { self[first: "steeringPosition"] = newValue }
    }

    public var tongueWeight: SchemaOrg.QuantitativeValue? {
        get { self[first: "tongueWeight"] }
        set { self[first: "tongueWeight"] = newValue }
    }

    public var trailerWeight: SchemaOrg.QuantitativeValue? {
        get { self[first: "trailerWeight"] }
        set { self[first: "trailerWeight"] = newValue }
    }

    public var vehicleConfiguration: Swift.String? {
        get { self[first: "vehicleConfiguration"] }
        set { self[first: "vehicleConfiguration"] = newValue }
    }

    public var vehicleEngine: SchemaOrg.EngineSpecification? {
        get { self[first: "vehicleEngine"] }
        set { self[first: "vehicleEngine"] = newValue }
    }

    public var vehicleIdentificationNumber: Swift.String? {
        get { self[first: "vehicleIdentificationNumber"] }
        set { self[first: "vehicleIdentificationNumber"] = newValue }
    }

    public var vehicleInteriorColor: Swift.String? {
        get { self[first: "vehicleInteriorColor"] }
        set { self[first: "vehicleInteriorColor"] = newValue }
    }

    public var vehicleInteriorType: Swift.String? {
        get { self[first: "vehicleInteriorType"] }
        set { self[first: "vehicleInteriorType"] = newValue }
    }

    public var vehicleModelDate: ISO_8601.CalendarDate? {
        get { self[first: "vehicleModelDate"] }
        set { self[first: "vehicleModelDate"] = newValue }
    }

    public var vehicleSeatingCapacity: SchemaOrg.Range.VehicleSeatingCapacity? {
        get { self[first: "vehicleSeatingCapacity"] }
        set { self[first: "vehicleSeatingCapacity"] = newValue }
    }

    public var vehicleSpecialUsage: SchemaOrg.Range.VehicleSpecialUsage? {
        get { self[first: "vehicleSpecialUsage"] }
        set { self[first: "vehicleSpecialUsage"] = newValue }
    }

    public var vehicleTransmission: SchemaOrg.Range.VehicleTransmission? {
        get { self[first: "vehicleTransmission"] }
        set { self[first: "vehicleTransmission"] = newValue }
    }

    public var weightTotal: SchemaOrg.QuantitativeValue? {
        get { self[first: "weightTotal"] }
        set { self[first: "weightTotal"] = newValue }
    }

    public var wheelbase: SchemaOrg.QuantitativeValue? {
        get { self[first: "wheelbase"] }
        set { self[first: "wheelbase"] = newValue }
    }
}

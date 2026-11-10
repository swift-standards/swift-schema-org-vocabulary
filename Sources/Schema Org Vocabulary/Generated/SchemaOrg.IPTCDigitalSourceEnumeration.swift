extension SchemaOrg {

    public enum IPTCDigitalSourceEnumeration: SchemaOrg.Value, Swift.Hashable {

        case algorithmicMediaDigitalSource

        case algorithmicallyEnhancedDigitalSource

        case compositeCaptureDigitalSource

        case compositeDigitalSource

        case compositeSyntheticDigitalSource

        case compositeWithTrainedAlgorithmicMediaDigitalSource

        case dataDrivenMediaDigitalSource

        case digitalArtDigitalSource

        case digitalCaptureDigitalSource

        case minorHumanEditsDigitalSource

        case multiFrameComputationalCaptureDigitalSource

        case negativeFilmDigitalSource

        case positiveFilmDigitalSource

        case printDigitalSource

        case screenCaptureDigitalSource

        case trainedAlgorithmicMediaDigitalSource

        case virtualRecordingDigitalSource

        case instance(Instance)
    }
}

extension SchemaOrg.IPTCDigitalSourceEnumeration {

    public var term: Swift.String? {
        switch self {
        case .algorithmicMediaDigitalSource:
            "AlgorithmicMediaDigitalSource"

        case .algorithmicallyEnhancedDigitalSource:
            "AlgorithmicallyEnhancedDigitalSource"

        case .compositeCaptureDigitalSource:
            "CompositeCaptureDigitalSource"

        case .compositeDigitalSource:
            "CompositeDigitalSource"

        case .compositeSyntheticDigitalSource:
            "CompositeSyntheticDigitalSource"

        case .compositeWithTrainedAlgorithmicMediaDigitalSource:
            "CompositeWithTrainedAlgorithmicMediaDigitalSource"

        case .dataDrivenMediaDigitalSource:
            "DataDrivenMediaDigitalSource"

        case .digitalArtDigitalSource:
            "DigitalArtDigitalSource"

        case .digitalCaptureDigitalSource:
            "DigitalCaptureDigitalSource"

        case .minorHumanEditsDigitalSource:
            "MinorHumanEditsDigitalSource"

        case .multiFrameComputationalCaptureDigitalSource:
            "MultiFrameComputationalCaptureDigitalSource"

        case .negativeFilmDigitalSource:
            "NegativeFilmDigitalSource"

        case .positiveFilmDigitalSource:
            "PositiveFilmDigitalSource"

        case .printDigitalSource:
            "PrintDigitalSource"

        case .screenCaptureDigitalSource:
            "ScreenCaptureDigitalSource"

        case .trainedAlgorithmicMediaDigitalSource:
            "TrainedAlgorithmicMediaDigitalSource"

        case .virtualRecordingDigitalSource:
            "VirtualRecordingDigitalSource"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "AlgorithmicMediaDigitalSource":
            self = .algorithmicMediaDigitalSource
            return

        case "AlgorithmicallyEnhancedDigitalSource":
            self = .algorithmicallyEnhancedDigitalSource
            return

        case "CompositeCaptureDigitalSource":
            self = .compositeCaptureDigitalSource
            return

        case "CompositeDigitalSource":
            self = .compositeDigitalSource
            return

        case "CompositeSyntheticDigitalSource":
            self = .compositeSyntheticDigitalSource
            return

        case "CompositeWithTrainedAlgorithmicMediaDigitalSource":
            self = .compositeWithTrainedAlgorithmicMediaDigitalSource
            return

        case "DataDrivenMediaDigitalSource":
            self = .dataDrivenMediaDigitalSource
            return

        case "DigitalArtDigitalSource":
            self = .digitalArtDigitalSource
            return

        case "DigitalCaptureDigitalSource":
            self = .digitalCaptureDigitalSource
            return

        case "MinorHumanEditsDigitalSource":
            self = .minorHumanEditsDigitalSource
            return

        case "MultiFrameComputationalCaptureDigitalSource":
            self = .multiFrameComputationalCaptureDigitalSource
            return

        case "NegativeFilmDigitalSource":
            self = .negativeFilmDigitalSource
            return

        case "PositiveFilmDigitalSource":
            self = .positiveFilmDigitalSource
            return

        case "PrintDigitalSource":
            self = .printDigitalSource
            return

        case "ScreenCaptureDigitalSource":
            self = .screenCaptureDigitalSource
            return

        case "TrainedAlgorithmicMediaDigitalSource":
            self = .trainedAlgorithmicMediaDigitalSource
            return

        case "VirtualRecordingDigitalSource":
            self = .virtualRecordingDigitalSource
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .algorithmicMediaDigitalSource:
            SchemaOrg.serialize(term: "AlgorithmicMediaDigitalSource")

        case .algorithmicallyEnhancedDigitalSource:
            SchemaOrg.serialize(term: "AlgorithmicallyEnhancedDigitalSource")

        case .compositeCaptureDigitalSource:
            SchemaOrg.serialize(term: "CompositeCaptureDigitalSource")

        case .compositeDigitalSource:
            SchemaOrg.serialize(term: "CompositeDigitalSource")

        case .compositeSyntheticDigitalSource:
            SchemaOrg.serialize(term: "CompositeSyntheticDigitalSource")

        case .compositeWithTrainedAlgorithmicMediaDigitalSource:
            SchemaOrg.serialize(term: "CompositeWithTrainedAlgorithmicMediaDigitalSource")

        case .dataDrivenMediaDigitalSource:
            SchemaOrg.serialize(term: "DataDrivenMediaDigitalSource")

        case .digitalArtDigitalSource:
            SchemaOrg.serialize(term: "DigitalArtDigitalSource")

        case .digitalCaptureDigitalSource:
            SchemaOrg.serialize(term: "DigitalCaptureDigitalSource")

        case .minorHumanEditsDigitalSource:
            SchemaOrg.serialize(term: "MinorHumanEditsDigitalSource")

        case .multiFrameComputationalCaptureDigitalSource:
            SchemaOrg.serialize(term: "MultiFrameComputationalCaptureDigitalSource")

        case .negativeFilmDigitalSource:
            SchemaOrg.serialize(term: "NegativeFilmDigitalSource")

        case .positiveFilmDigitalSource:
            SchemaOrg.serialize(term: "PositiveFilmDigitalSource")

        case .printDigitalSource:
            SchemaOrg.serialize(term: "PrintDigitalSource")

        case .screenCaptureDigitalSource:
            SchemaOrg.serialize(term: "ScreenCaptureDigitalSource")

        case .trainedAlgorithmicMediaDigitalSource:
            SchemaOrg.serialize(term: "TrainedAlgorithmicMediaDigitalSource")

        case .virtualRecordingDigitalSource:
            SchemaOrg.serialize(term: "VirtualRecordingDigitalSource")

        case .instance(let value):
            .node(value.node)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let term = SchemaOrg.term(of: value), let member = Self(term: term) {
            return member
        }
        return Instance.deserialize(value).map(Self.instance)
    }
}

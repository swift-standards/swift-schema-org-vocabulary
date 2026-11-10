extension SchemaOrg {

    public enum USNonprofitType: SchemaOrg.Value, Swift.Hashable {

        case nonprofit501a

        case nonprofit501c1

        case nonprofit501c10

        case nonprofit501c11

        case nonprofit501c12

        case nonprofit501c13

        case nonprofit501c14

        case nonprofit501c15

        case nonprofit501c16

        case nonprofit501c17

        case nonprofit501c18

        case nonprofit501c19

        case nonprofit501c2

        case nonprofit501c20

        case nonprofit501c21

        case nonprofit501c22

        case nonprofit501c23

        case nonprofit501c24

        case nonprofit501c25

        case nonprofit501c26

        case nonprofit501c27

        case nonprofit501c28

        case nonprofit501c3

        case nonprofit501c4

        case nonprofit501c5

        case nonprofit501c6

        case nonprofit501c7

        case nonprofit501c8

        case nonprofit501c9

        case nonprofit501d

        case nonprofit501e

        case nonprofit501f

        case nonprofit501k

        case nonprofit501n

        case nonprofit501q

        case nonprofit527

        case instance(Instance)
    }
}

extension SchemaOrg.USNonprofitType {

    public var term: Swift.String? {
        switch self {
        case .nonprofit501a:
            "Nonprofit501a"

        case .nonprofit501c1:
            "Nonprofit501c1"

        case .nonprofit501c10:
            "Nonprofit501c10"

        case .nonprofit501c11:
            "Nonprofit501c11"

        case .nonprofit501c12:
            "Nonprofit501c12"

        case .nonprofit501c13:
            "Nonprofit501c13"

        case .nonprofit501c14:
            "Nonprofit501c14"

        case .nonprofit501c15:
            "Nonprofit501c15"

        case .nonprofit501c16:
            "Nonprofit501c16"

        case .nonprofit501c17:
            "Nonprofit501c17"

        case .nonprofit501c18:
            "Nonprofit501c18"

        case .nonprofit501c19:
            "Nonprofit501c19"

        case .nonprofit501c2:
            "Nonprofit501c2"

        case .nonprofit501c20:
            "Nonprofit501c20"

        case .nonprofit501c21:
            "Nonprofit501c21"

        case .nonprofit501c22:
            "Nonprofit501c22"

        case .nonprofit501c23:
            "Nonprofit501c23"

        case .nonprofit501c24:
            "Nonprofit501c24"

        case .nonprofit501c25:
            "Nonprofit501c25"

        case .nonprofit501c26:
            "Nonprofit501c26"

        case .nonprofit501c27:
            "Nonprofit501c27"

        case .nonprofit501c28:
            "Nonprofit501c28"

        case .nonprofit501c3:
            "Nonprofit501c3"

        case .nonprofit501c4:
            "Nonprofit501c4"

        case .nonprofit501c5:
            "Nonprofit501c5"

        case .nonprofit501c6:
            "Nonprofit501c6"

        case .nonprofit501c7:
            "Nonprofit501c7"

        case .nonprofit501c8:
            "Nonprofit501c8"

        case .nonprofit501c9:
            "Nonprofit501c9"

        case .nonprofit501d:
            "Nonprofit501d"

        case .nonprofit501e:
            "Nonprofit501e"

        case .nonprofit501f:
            "Nonprofit501f"

        case .nonprofit501k:
            "Nonprofit501k"

        case .nonprofit501n:
            "Nonprofit501n"

        case .nonprofit501q:
            "Nonprofit501q"

        case .nonprofit527:
            "Nonprofit527"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "Nonprofit501a":
            self = .nonprofit501a
            return

        case "Nonprofit501c1":
            self = .nonprofit501c1
            return

        case "Nonprofit501c10":
            self = .nonprofit501c10
            return

        case "Nonprofit501c11":
            self = .nonprofit501c11
            return

        case "Nonprofit501c12":
            self = .nonprofit501c12
            return

        case "Nonprofit501c13":
            self = .nonprofit501c13
            return

        case "Nonprofit501c14":
            self = .nonprofit501c14
            return

        case "Nonprofit501c15":
            self = .nonprofit501c15
            return

        case "Nonprofit501c16":
            self = .nonprofit501c16
            return

        case "Nonprofit501c17":
            self = .nonprofit501c17
            return

        case "Nonprofit501c18":
            self = .nonprofit501c18
            return

        case "Nonprofit501c19":
            self = .nonprofit501c19
            return

        case "Nonprofit501c2":
            self = .nonprofit501c2
            return

        case "Nonprofit501c20":
            self = .nonprofit501c20
            return

        case "Nonprofit501c21":
            self = .nonprofit501c21
            return

        case "Nonprofit501c22":
            self = .nonprofit501c22
            return

        case "Nonprofit501c23":
            self = .nonprofit501c23
            return

        case "Nonprofit501c24":
            self = .nonprofit501c24
            return

        case "Nonprofit501c25":
            self = .nonprofit501c25
            return

        case "Nonprofit501c26":
            self = .nonprofit501c26
            return

        case "Nonprofit501c27":
            self = .nonprofit501c27
            return

        case "Nonprofit501c28":
            self = .nonprofit501c28
            return

        case "Nonprofit501c3":
            self = .nonprofit501c3
            return

        case "Nonprofit501c4":
            self = .nonprofit501c4
            return

        case "Nonprofit501c5":
            self = .nonprofit501c5
            return

        case "Nonprofit501c6":
            self = .nonprofit501c6
            return

        case "Nonprofit501c7":
            self = .nonprofit501c7
            return

        case "Nonprofit501c8":
            self = .nonprofit501c8
            return

        case "Nonprofit501c9":
            self = .nonprofit501c9
            return

        case "Nonprofit501d":
            self = .nonprofit501d
            return

        case "Nonprofit501e":
            self = .nonprofit501e
            return

        case "Nonprofit501f":
            self = .nonprofit501f
            return

        case "Nonprofit501k":
            self = .nonprofit501k
            return

        case "Nonprofit501n":
            self = .nonprofit501n
            return

        case "Nonprofit501q":
            self = .nonprofit501q
            return

        case "Nonprofit527":
            self = .nonprofit527
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .nonprofit501a:
            SchemaOrg.serialize(term: "Nonprofit501a")

        case .nonprofit501c1:
            SchemaOrg.serialize(term: "Nonprofit501c1")

        case .nonprofit501c10:
            SchemaOrg.serialize(term: "Nonprofit501c10")

        case .nonprofit501c11:
            SchemaOrg.serialize(term: "Nonprofit501c11")

        case .nonprofit501c12:
            SchemaOrg.serialize(term: "Nonprofit501c12")

        case .nonprofit501c13:
            SchemaOrg.serialize(term: "Nonprofit501c13")

        case .nonprofit501c14:
            SchemaOrg.serialize(term: "Nonprofit501c14")

        case .nonprofit501c15:
            SchemaOrg.serialize(term: "Nonprofit501c15")

        case .nonprofit501c16:
            SchemaOrg.serialize(term: "Nonprofit501c16")

        case .nonprofit501c17:
            SchemaOrg.serialize(term: "Nonprofit501c17")

        case .nonprofit501c18:
            SchemaOrg.serialize(term: "Nonprofit501c18")

        case .nonprofit501c19:
            SchemaOrg.serialize(term: "Nonprofit501c19")

        case .nonprofit501c2:
            SchemaOrg.serialize(term: "Nonprofit501c2")

        case .nonprofit501c20:
            SchemaOrg.serialize(term: "Nonprofit501c20")

        case .nonprofit501c21:
            SchemaOrg.serialize(term: "Nonprofit501c21")

        case .nonprofit501c22:
            SchemaOrg.serialize(term: "Nonprofit501c22")

        case .nonprofit501c23:
            SchemaOrg.serialize(term: "Nonprofit501c23")

        case .nonprofit501c24:
            SchemaOrg.serialize(term: "Nonprofit501c24")

        case .nonprofit501c25:
            SchemaOrg.serialize(term: "Nonprofit501c25")

        case .nonprofit501c26:
            SchemaOrg.serialize(term: "Nonprofit501c26")

        case .nonprofit501c27:
            SchemaOrg.serialize(term: "Nonprofit501c27")

        case .nonprofit501c28:
            SchemaOrg.serialize(term: "Nonprofit501c28")

        case .nonprofit501c3:
            SchemaOrg.serialize(term: "Nonprofit501c3")

        case .nonprofit501c4:
            SchemaOrg.serialize(term: "Nonprofit501c4")

        case .nonprofit501c5:
            SchemaOrg.serialize(term: "Nonprofit501c5")

        case .nonprofit501c6:
            SchemaOrg.serialize(term: "Nonprofit501c6")

        case .nonprofit501c7:
            SchemaOrg.serialize(term: "Nonprofit501c7")

        case .nonprofit501c8:
            SchemaOrg.serialize(term: "Nonprofit501c8")

        case .nonprofit501c9:
            SchemaOrg.serialize(term: "Nonprofit501c9")

        case .nonprofit501d:
            SchemaOrg.serialize(term: "Nonprofit501d")

        case .nonprofit501e:
            SchemaOrg.serialize(term: "Nonprofit501e")

        case .nonprofit501f:
            SchemaOrg.serialize(term: "Nonprofit501f")

        case .nonprofit501k:
            SchemaOrg.serialize(term: "Nonprofit501k")

        case .nonprofit501n:
            SchemaOrg.serialize(term: "Nonprofit501n")

        case .nonprofit501q:
            SchemaOrg.serialize(term: "Nonprofit501q")

        case .nonprofit527:
            SchemaOrg.serialize(term: "Nonprofit527")

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

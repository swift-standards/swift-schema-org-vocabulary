extension SchemaOrg.Game {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.CharacterAttribute,
        SchemaOrg.Domain.GameItem,
        SchemaOrg.Domain.GameLocation,
        SchemaOrg.Domain.NumberOfPlayers,
        SchemaOrg.Domain.Quest
    {}
}

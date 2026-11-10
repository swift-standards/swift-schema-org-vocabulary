extension SchemaOrg.Range.Offers {

    public static var free: Self {
        .offer(SchemaOrg.Offer(price: 0))
    }
}

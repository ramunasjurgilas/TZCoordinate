import Foundation

public struct TZCoordinate {
    static let shared = TZCoordinate()

    public private(set) var text = "Hello, World!"

    private init() {
    }

    internal func timeZones() throws -> [TimeZone]  {
        guard let url = Bundle.module.url(forResource: "TimeZones", withExtension: "json") else { throw NSError() }
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode([TimeZone].self, from: data)
    }
}

/*
 - (NSDictionary *)closesZoneInfoWithLocation:(CLLocation *)location source:(NSArray *)source {
     CLLocationDistance closestDistance = DBL_MAX;
     NSDictionary *closestZoneInfo = nil;

     for (NSDictionary *locationInfo in source) {

         double latitude = [locationInfo[@"latitude"] doubleValue];
         double longitude = [locationInfo[@"longitude"] doubleValue];

         CLLocation *zoneLocation = [[CLLocation alloc] initWithLatitude:latitude longitude:longitude];
         CLLocationDistance distance = [location distanceFromLocation:zoneLocation];
         if (distance < closestDistance) {
             closestDistance = distance;
             closestZoneInfo = locationInfo;
         }
     }
     return closestZoneInfo;
 }
 */

//
//  LocationsDataService.swift
//  King Crawlers
//
//  Created by Cody Burgess on 10/18/23.
//
//  Update this DataArray to add New trails

//  To do List
//  Need to put update Coordinates & Ratings First
// Descriptions and requirments after
// update Images for each trail head
// Total 12 trails


import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "Pinnacle 1",
            cityName: "Price City",
            stateName: "Utah",
            coordinates: CLLocationCoordinate2D(latitude: 39.5917870, longitude: -110.9142930),
            rating: "Three Star",
            description: "Fill in the Blank with bullshit later",
            requirement: "Fill in the Blank with bullshit later",
            imageNames: [
                "Pinnacle1",
                "rockCrawler2",
                "rockCrawler3",
            ],
            link: "https://www.youtube.com/@KingCrawlersAssociation/about"
        ),
        Location(
            name: "Pinnacle 2",
            cityName: "Price City",
            stateName: "Utah",
            coordinates: CLLocationCoordinate2D(latitude: 39.5960240, longitude: -110.9758350),
            rating: "Four Star",
            description: "Fill in the Blank with bullshit later",
            requirement: "Fill in the Blank with bullshit later",
            imageNames: [
                "Pinnacle1",
                "rockCrawler2",
                "rockCrawler3",
            ],
            link: "https://www.youtube.com/@KingCrawlersAssociation/about"
        ),
        Location(
            name: "Lower Diff Hanger",
            cityName: "Price City",
            stateName: "Utah",
            coordinates: CLLocationCoordinate2D(latitude: 39.6457870, longitude: -110.7604910),
            rating: "Four Star",
            description: "Fill in the Blank with bullshit later",
            requirement: "Fill in the Blank with bullshit later",
            imageNames: [
                "Pinnacle1",
                "rockCrawler2",
                "rockCrawler3",
            ],
            link: "https://www.youtube.com/@KingCrawlersAssociation/about"
        ),
        Location(
            name: "Upper Diff Hanger",
            cityName: "Price City",
            stateName: "Utah",
            coordinates: CLLocationCoordinate2D(latitude: 39.6783320, longitude: -110.7716950),
            rating: "Four Star",
            description: "Fill in the Blank with bullshit later",
            requirement: "Fill in the Blank with bullshit later",
            imageNames: [
                "Pinnacle1",
                "rockCrawler2",
                "rockCrawler3",
            ],
            link: "https://www.youtube.com/@KingCrawlersAssociation/about"
        ),
        Location(
            name: "Gremlin",
            cityName: "Price City",
            stateName: "Utah",
            coordinates: CLLocationCoordinate2D(latitude: 39.6781302, longitude: -110.7715620),
            rating: "Four Star",
            description: "Fill in the Blank with bullshit later",
            requirement: "Fill in the Blank with bullshit later",
            imageNames: [
                "Pinnacle1",
                "rockCrawler2",
                "rockCrawler3",
            ],
            link: "https://www.youtube.com/@KingCrawlersAssociation/about"
        ),
        Location(
            name: "Judgement Day",
            cityName: "Price City",
            stateName: "Utah",
            coordinates: CLLocationCoordinate2D(latitude: 39.6764960, longitude: -110.7654830),
            rating: "Four Star",
            description: "Fill in the Blank with bullshit later",
            requirement: "Fill in the Blank with bullshit later",
            imageNames: [
                "Pinnacle1",
                "rockCrawler2",
                "rockCrawler3",
            ],
            link: "https://www.youtube.com/@KingCrawlersAssociation/about"
        ),
        Location(
            name: "Wrong Turn",
            cityName: "Price City",
            stateName: "Utah",
            coordinates: CLLocationCoordinate2D(latitude: 39.6662710, longitude: -110.7615540),
            rating: "Four Star",
            description: "Fill in the Blank with bullshit later",
            requirement: "Fill in the Blank with bullshit later",
            imageNames: [
                "Pinnacle1",
                "rockCrawler2",
                "rockCrawler3",
            ],
            link: "https://www.youtube.com/@KingCrawlersAssociation/about"
        ),
        Location(
            name: "Strawberry Fields",
            cityName: "Price City",
            stateName: "Utah",
            coordinates: CLLocationCoordinate2D(latitude: 39.6393230, longitude: -110.7161620),
            rating: "Four Star",
            description: "Fill in the Blank with bullshit later",
            requirement: "Fill in the Blank with bullshit later",
            imageNames: [
                "Pinnacle1",
                "rockCrawler2",
                "rockCrawler3",
            ],
            link: "https://www.youtube.com/@KingCrawlersAssociation/about"
        ),
        
        //Still Need GPS Coordinates
        
        Location(
            name: "Mini Rubicon",
            cityName: "Price City",
            stateName: "Utah",
            coordinates: CLLocationCoordinate2D(latitude: 39.4730775, longitude: -110.8827632),
            rating: "Four Star",
            description: "Fill in the Blank with bullshit later",
            requirement: "Fill in the Blank with bullshit later",
            imageNames: [
                "Pinnacle1",
                "rockCrawler2",
                "rockCrawler3",
            ],
            link: "https://www.youtube.com/@KingCrawlersAssociation/about"
        ),
        Location(
            name: "Curse Canyon",
            cityName: "Price City",
            stateName: "Utah",
            coordinates: CLLocationCoordinate2D(latitude: 39.658301, longitude: -110.6309959),
            rating: "Four Star",
            description: "Fill in the Blank with bullshit later",
            requirement: "Fill in the Blank with bullshit later",
            imageNames: [
                "Pinnacle1",
                "rockCrawler2",
                "rockCrawler3",
            ],
            link: "https://www.youtube.com/@KingCrawlersAssociation/about"
        ),
        Location(
            name: "Willis Cuts",
            cityName: "Price City",
            stateName: "Utah",
            coordinates: CLLocationCoordinate2D(latitude: 39.495088, longitude: -110.6689251),
            rating: "Four Star",
            description: "Fill in the Blank with bullshit later",
            requirement: "Fill in the Blank with bullshit later",
            imageNames: [
                "Pinnacle1",
                "rockCrawler2",
                "rockCrawler3",
            ],
            link: "https://www.youtube.com/@KingCrawlersAssociation/about"
        ),
        Location(
            name: "DeadMan",
            cityName: "Price City",
            stateName: "Utah",
            coordinates: CLLocationCoordinate2D(latitude: 39.64, longitude: -110.73778),
            rating: "Four Star",
            description: "Fill in the Blank with bullshit later",
            requirement: "Fill in the Blank with bullshit later",
            imageNames: [
                "Pinnacle1",
                "rockCrawler2",
                "rockCrawler3",
            ],
            link: "https://www.youtube.com/@KingCrawlersAssociation/about"
        )
    ]
}

#### show list of db
    show dbs
#### create database 
    use flights
if you are not already create db, you can use it.

#### create collection
create single collection

    db.flightData.insertOne({
        "departureAirport": "MUC",
        "arrivalAirport": "SFO",
        "aircraft": "Airbus A380",
        "distance": 12000,
        "intercontinental": true
    })
create multiple collection

    db.flightData.insertMany([{
            "departureAirport": "MUC",
            "arrivalAirport": "SFO",
            "aircraft": "Airbus A380",
            "distance": 12000,
            "intercontinental": true
        },
        {
            "departureAirport": "LHR",
            "arrivalAirport": "TXL",
            "aircraft": "Airbus A320",
            "distance": 950,
            "intercontinental": false
        }
    ])

#### get all the data
    db.flightData.find().pretty()
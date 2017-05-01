//Dictionary of players

let player1: [String: Any] = ["playerName": "Joe Smith",
                              "heightInInches": 42,
                              "experiencedInSoccer": true,
                              "guardians": "Jim and Jan Smith" ]


let player2: [String: Any] = ["playerName": "Jill Tanner",
                              "heightInInches": 36,
                              "experiencedInSoccer": true,
                              "guardians": "Clara Tanner" ]


let player3: [String: Any] = ["playerName": "Bill Bon",
                              "heightInInches": 43,
                              "experiencedInSoccer": true,
                              "guardians": "Sara and Jenny Bon" ]

let player4  : [String: Any] = ["playerName": "Eva Gordon",
                                "heightInInches": 45,
                                "experiencedInSoccer": false,
                                "guardians": "Wendy and Mike Gordon" ]

let player5: [String: Any] = ["playerName": "Matt Gill",
                              "heightInInches": 40,
                              "experiencedInSoccer": false,
                              "guardians": "Charles and Sylvia Gill" ]

let player6: [String: Any] = ["playerName": "Kimmy Stein",
                              "heightInInches": 41,
                              "experiencedInSoccer": false,
                              "guardians": "Bill and Hillary Stein" ]

let player7: [String: Any] = ["playerName": "Sammy Adams",
                              "heightInInches": 45,
                              "experiencedInSoccer": false,
                              "guardians": "Jeff Adams" ]

let player8: [String: Any] = ["playerName": "Karl Saygan",
                              "heightInInches": 42,
                              "experiencedInSoccer": true,
                              "guardians": "Heather Bledsoe" ]

let player9: [String: Any] = ["playerName": "Suzane Greenberg",
                              "heightInInches": 44,
                              "experiencedInSoccer": true,
                              "guardians": "Henrietta  Dumas" ]

let player10: [String: Any] = ["playerName": "Sal Dali",
                               "heightInInches": 41,
                               "experiencedInSoccer": false,
                               "guardians": "Gala Dali" ]

let player11: [String: Any] = ["playerName": "Joe Kavalier",
                               "heightInInches": 39,
                               "experiencedInSoccer": false,
                               "guardians": "Sam and Elaine Kavalier" ]

let player12: [String: Any] = ["playerName": "Ben Finkelstein",
                               "heightInInches": 44,
                               "experiencedInSoccer": false,
                               "guardians": "Aaron and Jill Finkelstein" ]

let player13: [String: Any] = ["playerName": "Diego Soto",
                               "heightInInches": 41,
                               "experiencedInSoccer": true,
                               "guardians": "Robin and Sarika Soto" ]

let player14: [String: Any] = ["playerName": "Chloe Alaska",
                               "heightInInches": 47,
                               "experiencedInSoccer": false,
                               "guardians": "David and Jamie Alaska" ]

let player15: [String: Any] = ["playerName": "Arnold Willis",
                               "heightInInches": 43,
                               "experiencedInSoccer": false,
                               "guardians": "Claire Willis" ]

let player16: [String: Any] = ["playerName": "Phillip Helm",
                               "heightInInches": 44,
                               "experiencedInSoccer": true,
                               "guardians": "Thomas Helm and Eva Jones" ]

let player17: [String: Any] = ["playerName": "Les Clay",
                               "heightInInches": 42,
                               "experiencedInSoccer": true,
                               "guardians": "Wynona Brown" ]

let player18: [String: Any] = ["playerName": "Herschel Krustofski",
                               "heightInInches": 45,
                               "experiencedInSoccer": true,
                               "guardians": "Hyman and Rachel Krustrofski" ]


//Single Collection of Players

var players: [[String: Any]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]


//Experience Variables
var experienced =  [[String:Any]]()
var inexperienced = [[String:Any]]()

//Team Variables

var teamSharks: [[String: Any]] = []
var teamDragons: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []
var teams = [teamSharks, teamDragons, teamRaptors]


//Team Practice Date and Times
var teamDragonsPractice: [String: String] = ["teamName": "Dragons", "date": "March 17", "time": "1:00 pm"]
var teamSharksPractice: [String: String] = ["teamName": "Sharks", "date":"March 17", "time":"3:00 pm"]
var teamRaptorsPractice: [String: String] = ["teamName": "Raptors", "date":"March 18","time":"1:00 pm"]


//Players count
var totalPlayersPerTeam = players.count / teams.count
var totalNumberOfExperiencedPerTeam = Int()
var totalNumberOfInexperiencedPerTeam  =  Int()

//Functions

//This function determines if the players has soccer experience and adds the player to the appropriate variable: experience and inxeperienced
func sortPlayerExperience()
{
    for player in players
    {
        
        if player["experiencedInSoccer"]  as! Bool == true{
            experienced.append(player)
            
        }else
        {
            inexperienced.append(player)
            
        }
        
        
    }
    
    
    totalNumberOfExperiencedPerTeam = experienced.count / teams.count
    totalNumberOfInexperiencedPerTeam = experienced.count / teams.count
    
    
}


//This function separate players equally into 3 teams based on  experience
func sortPlayersIntoTeams()
{
    var experiencedSharksCounter: Int = 0
    var inexperiencedSharksCounter: Int = 0
    var experiencedRaptorsCounter: Int = 0
    var inexperiencedRaptorsCounter: Int = 0
    var experiencedDragonsCounter: Int = 0
    var inexperiencedDragonsCounter: Int = 0
    
    // Nested while statements that adds equal amounts of experienced and inexperienced team player for the Sharks
    while  teamSharks.count < totalPlayersPerTeam
    {
        
          while experiencedSharksCounter < totalNumberOfExperiencedPerTeam {
            teamSharks.append(experienced.removeFirst())
            experiencedSharksCounter += 1
            
        }
        
        while inexperiencedSharksCounter < totalNumberOfInexperiencedPerTeam {
            teamSharks.append(inexperienced.removeFirst())
            inexperiencedSharksCounter += 1
            
        }
        
    // Nested while statements that adds equal amounts of experienced and inexperienced team player for the Raptors
        while  teamRaptors.count < totalPlayersPerTeam
        {
            
            while experiencedRaptorsCounter < totalNumberOfExperiencedPerTeam {
                teamRaptors.append(experienced.removeFirst())
                experiencedRaptorsCounter += 1
                
            }
            
            while inexperiencedRaptorsCounter < totalNumberOfInexperiencedPerTeam {
                teamRaptors.append(inexperienced.removeFirst())
                inexperiencedRaptorsCounter += 1
                
                
                
            }
        }
        
        
// Nested while statements that adds equal amounts of experienced and inexperienced team player for the Dragons
        while  teamDragons.count < totalPlayersPerTeam
        {
            
            while experiencedDragonsCounter < totalNumberOfExperiencedPerTeam {
                teamDragons.append(experienced.removeFirst())
                experiencedDragonsCounter += 1
                
            }
            
            while inexperiencedDragonsCounter < totalNumberOfInexperiencedPerTeam {
                teamDragons.append(inexperienced.removeFirst())
                inexperiencedDragonsCounter += 1
                
            }
        }
       
    }
    
}




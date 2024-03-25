//
//  User.swift
//  LogInApp
//
//  Created by Amirov Foma on 24.03.2024.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let location: String
    let currentJob: Job
    let currentEducation: Education
    let hobby: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Foma",
            surname: "Amirov",
            age: 28,
            location: "Moscow",
            currentJob: Job.getJob(),
            currentEducation: Education.getEducation(),
            hobby: "In my free time I like to be active. For example, playing sports is football, volleyball, and any kind of sports in general. I also strive to travel more, although so far it’s not working out well."
        )
    }
}

struct Job {
    let title: String
    let jobTitle: String
    let department: String
    
    static func getJob() -> Job{
        Job(
            title: "MEDSI",
            jobTitle: "Otorhinolaringologyst",
            department: "Surgery")
    }
}

struct Education {
    let schoolTitle: String
    let profession: String
    let language: String
    let teachersNames: String
    
    static func getEducation() -> Education {
        Education(
            schoolTitle: "Swiftbook",
            profession: "Mobile developer",
            language: "Swift",
            teachersNames: "Alexey, Marius"
        )
    }
}

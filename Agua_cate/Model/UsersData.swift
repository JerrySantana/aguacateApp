//
//  UsersData.swift
//  Agua_cate
//
//  Created by Gerardo Santana.
//
import Foundation

func saveUsersData(_ newUser: Users) {
    let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    let archiveURL = documentDirectory.appendingPathComponent("usersData").appendingPathExtension("json")
    let usersArray = [newUser]
    
    let decoder = JSONDecoder()
    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted
    
    do {
        if (try loadData(from: archiveURL, decoder: decoder) == nil) {
            let jsonData = try encoder.encode(usersArray)
            try jsonData.write(to: archiveURL, options: .noFileProtection)
        } else {
            var existingUsers = try loadData(from: archiveURL, decoder: decoder)
            existingUsers!.append(newUser)
            
            let jsonData = try encoder.encode(existingUsers)
            try jsonData.write(to: archiveURL, options: .noFileProtection)
        }
    } catch {
        fatalError("Couldn't save user data:\n\(error)")
    }
    print("File saved at: \(archiveURL.path)")
}

func loadData(from url: URL, decoder: JSONDecoder) throws -> [Users]? {
    if FileManager.default.fileExists(atPath: url.path) {
        let jsonData = try Data(contentsOf: url)
        return try decoder.decode([Users].self, from: jsonData)
    } else {
        return nil
    }
}

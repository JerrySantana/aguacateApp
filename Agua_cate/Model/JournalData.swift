//
//  JournalData.swift
//  Agua_cate
//
//  Created by Gerardo Santana.
//
import Foundation

func saveJournalData(_ newEntrie: Journal) {
    let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    let archiveURL = documentDirectory.appendingPathComponent("diaryData").appendingPathExtension("json")
    let entriesArray = [newEntrie]
    
    let decoder = JSONDecoder()
    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted
    
    do {
        if (try loadJournalData(from: archiveURL, decoder: decoder) == nil) {
            let jsonData = try encoder.encode(entriesArray)
            try jsonData.write(to: archiveURL, options: .noFileProtection)
        } else {
            var existingEntries = try loadJournalData(from: archiveURL, decoder: decoder)
            existingEntries!.append(newEntrie)
            
            let jsonData = try encoder.encode(existingEntries)
            try jsonData.write(to: archiveURL, options: .noFileProtection)
        }
    } catch {
        fatalError("Couldn't save journal entrie data:\n\(error)")
    }
    print("File saved at: \(archiveURL.path)")
}

func loadJournalData(from url: URL, decoder: JSONDecoder) throws -> [Journal]? {
    if FileManager.default.fileExists(atPath: url.path) {
        let jsonData = try Data(contentsOf: url)
        return try decoder.decode([Journal].self, from: jsonData)
    } else {
        return nil
    }
}

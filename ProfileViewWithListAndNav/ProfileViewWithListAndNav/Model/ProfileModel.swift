//
//  ProfileModel.swift
//  ProfileViewWithListAndNav
//
//  Created by ArunSha on 23/11/21.
//

import Foundation

struct ProfileModel {
    let profileId: Int
    let profileName: String
    let profileImageURL: String
    let profileAge: Int
}


extension ProfileModel {
    static func allProfiles() -> [ProfileModel] {
        return [
            ProfileModel(profileId: 1, profileName: "Arun", profileImageURL: "arunsha", profileAge: 25),
            ProfileModel(profileId: 2, profileName: "AquaMan", profileImageURL: "aquaman", profileAge: 25),
            ProfileModel(profileId: 3, profileName: "SpiderMan", profileImageURL: "spiderman", profileAge: 25)
        ]
    }
}

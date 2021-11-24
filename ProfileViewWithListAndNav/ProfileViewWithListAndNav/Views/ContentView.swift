//
//  ContentView.swift
//  ProfileViewWithListAndNav
//
//  Created by ArunSha on 23/11/21.
//

import SwiftUI

struct ContentView: View {
    //Get list Of Profiles Info
    let listOfProfiles = ProfileModel.allProfiles()
    var body: some View {
        NavigationView{
            List(self.listOfProfiles, id: \.profileId) { profile in
                NavigationLink (destination: ProfileDetailView(profile: profile)){
                    ProfileCell(profile: profile)
                }
            }
            .navigationTitle(Text("User Profile"))
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ProfileCell: View {
    var profile: ProfileModel
    var body: some View {
        HStack{
            Image(profile.profileImageURL)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .cornerRadius(16)
            VStack{
                Text(profile.profileName)
                Text("\(profile.profileAge)")
            }
        }
    }
}


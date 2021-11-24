//
//  ProfileDetailView.swift
//  ProfileViewWithListAndNav
//
//  Created by ArunSha on 23/11/21.
//

import SwiftUI

struct ProfileDetailView: View {
    let profile: ProfileModel
    @State private var zoomed: Bool = false
    var body: some View {
        VStack{
            Image(profile.profileImageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                }
            Text(profile.profileName)
        }.navigationBarTitle(Text(profile.profileName), displayMode: .inline)
    }
}

//struct ProfileDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileDetailView(profileModel: ProfileModel())
//    }
//}

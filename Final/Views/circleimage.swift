//
//  circleimage.swift
//  Final
//
//  Created by Max Diess on 11/16/21.
//

import SwiftUI

struct circleimage: View {
    var image: Image
    var body: some View {
        image.clipShape(Circle()).font(.system(size: 100)).overlay(Circle().stroke(Color.white, lineWidth: 4)).shadow(radius: 7).background(Circle()).foregroundColor(.white)
    }
}

struct circleimage_Previews: PreviewProvider {
    static var previews: some View {
        circleimage(image: Image(systemName: "house"))
    }
}

//
//  DiagnosisView.swift
//  eDoctor
//
//  Created by Rishab Jain on 7/2/22.
//

import SwiftUI

struct DiagnosisView: View {
    @State private var image: Image?
    
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    @State private var ready = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Diagnosis")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                    .padding(.horizontal, 5)
            }
            ZStack {
                
                if image != nil {
                    image?
                        .resizable()
                        .scaledToFit()
                } else {
                    Image("placeholder")
                        .resizable()
                        .scaledToFit()
                }
            }
            .onTapGesture {
                self.showingImagePicker = true
            }
            
            if ready {
                Text("Disease identified as: Monkeypox")
                    .foregroundColor(.red)
                Image("diagnosis1")
                    .resizable()
                    .scaledToFit()
                HStack {
                    Text("Severity:")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                }
                .foregroundColor(.red)
                .padding()
                
                Link("Treatment & What to do", destination: URL(string: "https://www.cdc.gov/poxvirus/monkeypox/treatment.html")!)
                    .foregroundColor(.red)
            } else {
                Text("Click to select an image")
                    .fontWeight(.bold)
            }
            
        }
        .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
            ImagePicker(image: self.$inputImage)
        }
    }
    
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
        ready = true
    }
}

struct DiagnosisView_Previews: PreviewProvider {
    static var previews: some View {
        DiagnosisView()
    }
}

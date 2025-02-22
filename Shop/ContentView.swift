import SwiftUI

struct ContentView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var buttonText1 = "Add to Cart"
    @State private var buttonText2 = "Add to Cart"

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .center, spacing: 20) {
                    
                    // First Product
                    VStack {
                        Image("Shoes1")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 300, height: 300)
                        
                        Text("Air Jordan 1 Low")
                            .font(.title2)
                            .foregroundColor(.black)
                        
                        Button(action: {
                            buttonText1 = "Added! Thanks for Buying!"
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                buttonText1 = "Add to Cart"
                            }
                        }) {
                            Text(buttonText1)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.gray)
                                .foregroundColor(.white)
                                .font(.title3)
                                .fontWeight(.bold)
                                .cornerRadius(10)
                        }
                        .padding(.horizontal, 40)
                    }
                    
                    Divider()
                    
                    // Second Product
                    VStack {
                        Image("Shoes2")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 300, height: 300)
                        
                        Text("Nike Air Force 1")
                            .font(.title2)
                            .foregroundColor(.black)
                        
                        Button(action: {
                            buttonText2 = "Added! Thanks for Buying!"
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                buttonText2 = "Add to Cart"
                            }
                        }) {
                            Text(buttonText2)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.gray)
                                .foregroundColor(.white)
                                .font(.title3)
                                .fontWeight(.bold)
                                .cornerRadius(10)
                        }
                        .padding(.horizontal, 40)
                    }
                    
                }
                .padding()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.black)
                    }
                }

                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        Image("NikeLogo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                    }
                }
                ToolbarItem(placement: .principal){
                    Text("Nike Authentic Shop")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

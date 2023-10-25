import SwiftUI

struct SignUpPage: View {
    @State var fname: String = String()
    @State var lname: String = String()
    @State var password: String = String()
    @State var cPassword: String = String()
    
    var body: some View {
        
        ZStack {
            ScrollView{
                
                VStack {
                    Image("circledesign")
                        .resizable()
                        .frame(width: 200, height: 150)
                        .aspectRatio(contentMode: .fit)
                        .position(x: 100, y: 55)
                        .padding(.top, 20)
                    Spacer()
                }
                .ignoresSafeArea()
                
                
                VStack{
                    
                    VStack {
                        Text("Welcome OnBoard!")
                            .font(.title)
                            .bold()
                        
                        Text("Let's Help You Meet Up Your Task")
                            .foregroundColor(ColorConstant.primaryGreen)
                            .padding(.vertical,20)
                    }
                    
                    VStack(spacing: 30){
                        TextField("Enter Your Full Name", text: $fname)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .background(Color.white)
                            .cornerRadius(8)
                        
                        TextField("Enter Your Email", text: $lname)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .background(Color.white)
                            .cornerRadius(8)
                        
                        TextField("Enter Your Password", text: $password)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .background(Color.white)
                            .cornerRadius(8)
                        
                        TextField("Confirm Password", text: $cPassword)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .background(Color.white)
                            .cornerRadius(8)
                            .foregroundColor(Color.black)
                        
                        
                        NavigationLink {
                            SignInPage()
                        } label: {
                            Text("SingUp")
                                .font(.title2)
                                .frame(height: 44)
                                .frame(maxWidth: 220)
                                .foregroundColor(.white)
                                .bold()
                                .background(ColorConstant.primaryGreen)
                                .cornerRadius(10)
                            
                        }.padding()
                        
                        
                    }
                    .padding(.horizontal,20)
                    
                }
                
                VStack{
                    HStack{
                        Text("Already have an account ?")
                        NavigationLink("SignIn", destination: SignInPage())
                            .foregroundColor(ColorConstant.primaryGreen)
                            .bold()
                    }
                }.padding(.top,100)
                .padding(.bottom,30)
            }.ignoresSafeArea()
            
        }.background(ColorConstant.primaryBackground)
        
    }
    
    
}

struct SignUpPage_Previews: PreviewProvider {
    static var previews: some View {
        SignUpPage()
    }
}

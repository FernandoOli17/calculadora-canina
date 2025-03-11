import SwiftUI

struct ContentView: View {
    @State private var inputText: String = ""
    @State private var idadeCachorro: Int? = nil
    
    var body: some View {
        VStack {
            Image("cute-and-happy-dog-png")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .padding()
            
            Text("Calculadora Canina")
                .font(.title)
                .padding()
            
            TextField("Digite a idade do cachorro em anos humanos", text: $inputText)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
            
            if let idade = idadeCachorro {
                Text("Idade do cachorro em anos caninos: \(idade) anos")
                    .padding()
            }

            Button(action: {
                if let idadeHumano = Int(inputText) {
                    idadeCachorro = calcularIdadeCachorro(idadeHumano: idadeHumano)
                }
            }) {
                Text("Calcular Idade")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
        .padding()
    }
    
    func calcularIdadeCachorro(idadeHumano: Int) -> Int {
        return idadeHumano * 7
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

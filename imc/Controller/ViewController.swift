
import UIKit

final class ViewController: UIViewController {
    
    
    // MARK: - Attributes
    
    private var result: Double = 0
    
    // MARK: - IBOutlet
    
    @IBOutlet private weak var heightTextField: UITextField!
    @IBOutlet private weak var weightTextField: UITextField!
    @IBOutlet private weak var resultTextField: UITextField!

    // MARK: - View cycle life
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBActions
    
    @IBAction private func calcularButton(_ sender: Any) {
        
        guard
            let personHeight = heightTextField?.text,
            let height = Double(personHeight),
            let personWeight = weightTextField?.text,
            let weight = Double(personWeight) else {
            return
        }
       
        let IMC: Double = weight / (height * height)
        
        if (IMC < 17) {
            resultTextField.text = "Muito abaixo do peso"
        } else if (IMC >= 17.0 && IMC <= 18.49) {
            resultTextField.text = "Abaixo do peso"
        } else if (IMC >= 18.5 && IMC <= 24.99) {
            resultTextField.text = "Peso ideal ou normal"
        } else if (IMC >= 25 && IMC <= 29.99) {
            resultTextField.text = "Acima do peso "
        } else if (IMC >= 30 && IMC <= 34.99) {
            resultTextField.text = "Obesidade I "
        } else if (IMC >= 35 && IMC <= 39.99) {
            resultTextField.text = "Obesidade II (severa) "
        } else if (IMC > 40) {
            resultTextField.text = "Obesidade III (mórbida) "
        }
        
    }
    
}


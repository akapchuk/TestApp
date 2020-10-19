//
//  SignViewController.swift
//  TestApp
//
//  Created by Саша Капчук on 10/11/20.
//

import UIKit

class SignViewController: UIViewController {
    
    @IBOutlet weak var createLoginField: UITextField!
    @IBOutlet weak var createPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func signUpButton(_ sender: UIButton) {
        
        // Задаю всплывающее окно для соблюдения требований к паролю
        let alertController = UIAlertController(
            title: "Некорректный пароль",
            message: "Пароль должен содержать не менее 7 символов, хотя бы одну цифры и букву каждого регистра",
            preferredStyle: UIAlertController.Style.alert)
        
        // Задаю кнопки к всплывающему окну
        alertController.addAction(UIAlertAction(title: "Повторить", style: UIAlertAction.Style.default, handler: nil))
        alertController.addAction(UIAlertAction(title: "Понятно", style: UIAlertAction.Style.default, handler: nil))
        
        // Задаю всплывающее окно для проверки совпадения двух паролей
        let alertControllerPassEquals = UIAlertController(
            title: "Пароли не совпадают",
            message: "Повторите попытку",
            preferredStyle: UIAlertController.Style.alert)
        
        // Задаю кнопки к всплывающему окну
        alertControllerPassEquals.addAction(UIAlertAction(title: "Повторить", style: UIAlertAction.Style.default, handler: nil))
        alertControllerPassEquals.addAction(UIAlertAction(title: "Понятно", style: UIAlertAction.Style.default, handler: nil))
        
        
        
        // Условия проверки пароля
        // Наличие в пароле не менее 7 символов
        if createPasswordTextField.text!.count < 7 {
            self.present(alertController, animated: true, completion: nil)
            
        // Наличие в пароле хотя бы одной буквы верхнего и нижнего регистра
        } else if createPasswordTextField.text == createPasswordTextField.text!.uppercased()
               || repeatPasswordTextField.text == createPasswordTextField.text!.lowercased()
        {
            self.present(alertController, animated: true, completion: nil)
            
        // Условие совпадения паролей
        } else if createPasswordTextField.text != repeatPasswordTextField.text {
            self.present(alertControllerPassEquals, animated: true, completion: nil)
        } else {
            
        // NavigationaController на следующую страницу
            let buttonSignUp = storyboard?.instantiateViewController(withIdentifier: "GreetingViewController") as! GreetingViewController
            let text = createLoginField.text
            buttonSignUp.textFromCreatedLogin = text
            navigationController?.pushViewController(buttonSignUp, animated: true)
        }
    }
    
    
}
//@IBAction func signUpButton(_ sender: UIButton) {
//
//    let buttonSignUp = storyboard?.instantiateViewController(withIdentifier: "GreetingViewController") as! GreetingViewController
//    let text = createLoginField.text
//    buttonSignUp.textFromCreatedLogin = text
//    navigationController?.pushViewController(buttonSignUp, animated: true)
//}

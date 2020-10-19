//
//  SignUpPageViewController.swift
//  TestApp
//
//  Created by Саша Капчук on 10/14/20.
//

import UIKit





class SignUpPageViewController: UIViewController {
    
    
    // xib на весь экран
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        modalPresentationStyle = .fullScreen
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    // Инициализация текстовых полей
    @IBOutlet weak var enterLoginTextField: UITextField!
    @IBOutlet weak var createPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Кнопка-переход на страницу Login
    @IBAction func pushToLogin(_ sender: UIButton) {
        let loginPage = LoginPageViewController(nibName: "LoginPageViewController", bundle: nil)
        self.present(loginPage, animated: true, completion: nil)
    }
    
    // Кнопка Sign Up
    @IBAction func pushSignUpButton(_ sender: UIButton) {
        // Задаю всплывающее окно для соблюдения требований к паролю
        let alertMessage = UIAlertController(
            title: "Некорректный пароль",
            message: "Пароль должен содержать не менее 7 символов, хотя бы одну цифры и букву каждого регистра",
            preferredStyle: UIAlertController.Style.alert)
        
        alertMessage.addAction(UIAlertAction(title: "Повторить", style: UIAlertAction.Style.default, handler: nil))
        alertMessage.addAction(UIAlertAction(title: "Отмена", style: UIAlertAction.Style.default, handler: nil))
        
        // Задаю всплывающее окно при разных паролях
        let alertMessageDifferentPasswords = UIAlertController(title: "Пароли не совпадают", message: "Повторите попытку", preferredStyle: UIAlertController.Style.alert)
        
        alertMessageDifferentPasswords.addAction(UIAlertAction(title: "Повторить", style: UIAlertAction.Style.default, handler: nil))
        alertMessageDifferentPasswords.addAction(UIAlertAction(title: "Отмена", style: UIAlertAction.Style.default, handler: nil))
        
        // С помощью функции создать alert и вводить аргументы в зависимости от того, какое уведомление мне нужно (или класс + enum с набором ошибок)
        
        // Требования к паролю
        if createPasswordTextField.text!.count < 7 {
            self.present(alertMessage, animated: true, completion: nil)
            
        // Наличие в пароле хотя бы одной буквы верхнего и нижнего регистра
        } else if createPasswordTextField.text == createPasswordTextField.text?.uppercased() || createPasswordTextField.text == createPasswordTextField.text?.lowercased() {
            self.present(alertMessage, animated: true, completion: nil)
            
        // Проверка совпадения паролей
        } else if createPasswordTextField.text != repeatPasswordTextField.text {
            self.present(alertMessageDifferentPasswords, animated: true, completion: nil)
            
        // Переход на следующий Xib
        } else {
            
            let welcomePage = WelcomePageViewController(nibName: "WelcomePageViewController", bundle: nil)
            self.present(welcomePage, animated: true, completion: nil)
        }
            
            
    }}

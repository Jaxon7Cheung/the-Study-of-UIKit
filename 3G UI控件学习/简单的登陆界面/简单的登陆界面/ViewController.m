//
//  ViewController.m
//  简单的登陆界面
//
//  Created by 张旭洋 on 2023/7/15.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //用户名提示标签🏷️创建
    _lbUserName = [[UILabel alloc] init];
    _lbUserName.frame = CGRectMake(20, 60, 100, 40);
    _lbUserName.text = @"Username";
    _lbUserName.font = [UIFont systemFontOfSize: 19];
    _lbUserName.textAlignment = NSTextAlignmentNatural;
    
    //用户密码提示
    _lbPassword = [[UILabel alloc] init];
    _lbPassword.frame = CGRectMake(20, 140, 100, 40);
    _lbPassword.text = @"Password";
    _lbPassword.font = [UIFont systemFontOfSize: 19];
    _lbPassword.textAlignment = NSTextAlignmentNatural;
    
    //用户名输入框
    _tfUserName = [[UITextField alloc] init];
    _tfUserName.frame = CGRectMake(120, 60, 250, 40);
    _tfUserName.placeholder = @"Please enter your username";
    _tfUserName.borderStyle = UITextBorderStyleRoundedRect;
    
    //密码输入框
    _tfPassword = [[UITextField alloc] init];
    _tfPassword.frame = CGRectMake(120, 140, 250, 40);
    _tfPassword.placeholder = @"Please enter your password";
    _tfPassword.borderStyle = UITextBorderStyleRoundedRect;
    _tfPassword.keyboardType = UIKeyboardTypeDefault;
    _tfPassword.secureTextEntry = YES;
    
    //登陆和注册btn创建
    _btLogin = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    _btLogin.frame =CGRectMake(250, 180, 80, 40);
    [_btLogin setTitle: @"Login" forState: UIControlStateNormal];
    [_btLogin addTarget: self action: @selector(pressLogin) forControlEvents: UIControlEventTouchUpInside];
    _btRegister = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    _btRegister.frame = CGRectMake(125, 180, 80, 40);
    [_btRegister setTitle: @"Register" forState: UIControlStateNormal];
    [_btRegister addTarget: self action: @selector(pressRegister) forControlEvents: UIControlEventTouchUpInside];
    
    //将控件添加到视图中
    [self.view addSubview: _lbUserName];
    [self.view addSubview: _lbPassword];
    [self.view addSubview: _tfUserName];
    [self.view addSubview: _tfPassword];
    [self.view addSubview: _btLogin];
    [self.view addSubview: _btRegister];
}

- (void)pressLogin
{
    NSString* strName = @"Mckenna";
    NSString* strPass = @"123654";
    
    //获取输入框中的用户名文字
    NSString* strTextName = _tfUserName.text;
    NSString* strTextPass = _tfPassword.text;
    
    if ([strName isEqualToString: strTextName] && [strPass isEqualToString: strTextPass]) {
        NSLog(@"登陆成功！");
        
        _alertView = [UIAlertController alertControllerWithTitle: @"提示" message: @"验证成功，成功登陆" preferredStyle: UIAlertControllerStyleActionSheet];
        UIAlertAction* cancel = [UIAlertAction actionWithTitle: @"确认✅" style: UIAlertActionStyleCancel handler: nil];
        [_alertView addAction: cancel];
        [self presentViewController: _alertView animated: YES completion: nil];
    } else {
        _alertView = [UIAlertController alertControllerWithTitle: @"提示" message: @"验证失败，用户名或密码错误🙅" preferredStyle: UIAlertControllerStyleAlert];
        UIAlertAction* cancel = [UIAlertAction actionWithTitle: @"确认✅" style: UIAlertActionStyleCancel handler: nil];
        [_alertView addAction: cancel];
        [self presentViewController: _alertView animated: YES completion: nil];
    }
}

- (void)pressRegister
{
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [_tfPassword resignFirstResponder];
    [_tfUserName resignFirstResponder];
}

@end

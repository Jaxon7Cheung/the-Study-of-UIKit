//
//  ViewController.m
//  UITextField
//
//  Created by 张旭洋 on 2023/7/15.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize textField = _textField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //_textField
    //创建一个文本输入区对象
    self.textField = [[UITextField alloc]init];
    
    //设定文本输入区的位置
    self.textField.frame = CGRectMake(100, 200, 200, 40);
    
    //设置textField的内容文字
    self.textField.text = @"Mckenna";
    
    //设置文字的字体大小
    self.textField.font = [UIFont systemFontOfSize: 19];
    
    //设置字体的颜色
    self.textField.textColor = [UIColor orangeColor];
    
    //设置边框的风格
    //UITextBorderStyleRoundedRect:圆角风格
    //UITextBorderStyleLine:线框风格
    //UITextBorderStyleBezel:bezel线框风格
    //UITextBorderStyleNone:无边框风格
    self.textField.borderStyle = UITextBorderStyleLine;
    
    //设置虚拟键盘风格⌨️
    //UIKeyboardTypeDefalut:默认风格
    //UIKryboardTypeNamePhonePad:字母和数字组合风格
    //UIKeyboardTypeNumber:纯数字风格
    self.textField.keyboardType = UIKeyboardTypeDefault;
    
    //提示文字信息
    //当text属性为空，显示此条信息
    //浅灰色提示文字
    self.textField.placeholder = @"请输入用户名.....😊";
    
    //是否作为密码输入
    //YES：圆点加密，隐式输入
    //NO：正常显示输入的文字
    self.textField.secureTextEntry = NO;
    
    [self.view addSubview: self.textField];
    
    //设置代理对象
    //self.textField.delegate = self;
}

- (void)textFieldDidBeginEditing: (UITextField *)textField
{
    NSLog(@"开始编辑了！");
}

- (void)textFieldDidEndEditing: (UITextField *)textField
{
    self.textField.text = @"";
    NSLog(@"编辑输入结束!");
}

//是否可以进行输入
//默认为YES
- (BOOL)textFieldShouldBeginEditing: (UITextField *)textField
{
    return YES;
}

//是否可以结束输入
//默认为YES
- (BOOL)textFieldShouldEndEditing: (UITextField *)textField
{
    return YES;
}



//点击屏幕空白处调用此函数
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //使虚拟键盘回收，不再作为第一消息响应者
    [self.textField resignFirstResponder];
}

@end

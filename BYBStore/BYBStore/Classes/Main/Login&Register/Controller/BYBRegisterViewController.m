//
//  BYBRegisterViewController.m
//  BYBStore
//
//  Created by 晓梦影 on 2017/9/23.
//  Copyright © 2017年 BYBStore. All rights reserved.
//

#import "BYBRegisterViewController.h"

@interface BYBRegisterViewController ()
@property (weak, nonatomic) IBOutlet UITextField *phoneTextF;
@property (weak, nonatomic) IBOutlet UITextField *codeTextF;
@property (weak, nonatomic) IBOutlet UIButton *getCodeBtn;
@property (weak, nonatomic) IBOutlet UITextField *nickNameTextF;
@property (weak, nonatomic) IBOutlet UITextField *pdwTextF;
@property (weak, nonatomic) IBOutlet UIButton *commitBtn;
@property (weak, nonatomic) IBOutlet UILabel *agreementLabel;

@property (nonatomic, strong) UIButton *rightBtn;
@end

@implementation BYBRegisterViewController

- (UIButton *)rightBtn{
    if (_rightBtn == nil) {
        _rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _rightBtn.size = CGSizeMake(24, 24);
        [_rightBtn addTarget:self action:@selector(rightBtnAction:) forControlEvents:UIControlEventTouchUpInside];
        [_rightBtn setImage:[UIImage imageNamed:@"weixianshimima_20x20_"] forState:UIControlStateNormal];
        [_rightBtn setImage:[UIImage imageNamed:@"xianshimima_20x20_"] forState:UIControlStateSelected];
    }
    return _rightBtn;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *rightView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 34, 24)];
    [rightView addSubview:self.rightBtn];
    self.pdwTextF.rightView = rightView;
    self.pdwTextF.secureTextEntry = YES;
    
    self.commitBtn.layer.cornerRadius = 5;
    self.commitBtn.layer.masksToBounds = YES;
    self.commitBtn.enabled = NO;
    [self.commitBtn setBackgroundImage:[UIImage imageWithColor:BYBBGColor] forState:UIControlStateDisabled];
    [self.commitBtn setBackgroundImage:[UIImage imageWithColor:BYBThemeColor] forState:UIControlStateNormal];
    [self.commitBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(textChangeAction) name:UITextFieldTextDidChangeNotification object:nil];
    
}
- (IBAction)commitAction:(id)sender {
    
}
- (IBAction)getCodeAction:(id)sender {
    
}
- (IBAction)colseAction:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)rightBtnAction:(UIButton *)button{
    button.selected = !button.selected;
    self.pdwTextF.secureTextEntry = !button.selected;
}

- (void)textChangeAction{
    
    if (self.phoneTextF.text.length && self.codeTextF.text.length && self.nickNameTextF.text.length && self.pdwTextF.text.length) {
        self.commitBtn.enabled = YES;
    }else{
        self.commitBtn.enabled = NO;
    }
}

- (void)dealloc{
    [[NSNotificationCenter defaultCenter]removeObserver:self name:UITextFieldTextDidChangeNotification object:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

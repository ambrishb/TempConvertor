//
//  TempViewController.m
//  TempConvertor
//
//  Created by Ambrish Bhargava on 8/7/13.
//  Copyright (c) 2013 Ambrish Bhargava. All rights reserved.
//

#import "TempViewController.h"

@interface TempViewController ()

@property (nonatomic, strong) NSNumber *fieldType;

@end

@implementation TempViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Temperature";
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.cTextField.delegate = self;
    self.fTextField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark Action methods
- (void) onDoneEditing {
    [self.view endEditing:YES];
}

- (void) convertTemperature {
    if (self.cTextField.text.length != 0 && self.fTextField.text.length != 0) {
        float fTemp1 = [self.fTextField.text floatValue];
        float cTemp1 = (fTemp1 - 32 ) / 1.8;
        
        float cTemp2 = [self.cTextField.text floatValue];
        float fTemp2 = cTemp2 * 1.8 + 32;
        
        self.cInput.text = [NSString stringWithFormat:@"%0.2f",cTemp2];
        self.fInput.text = [NSString stringWithFormat:@"%0.2f",fTemp1];
        self.cTextField.text = [NSString stringWithFormat:@"%0.2f",cTemp1];
        self.fTextField.text = [NSString stringWithFormat:@"%0.2f",fTemp2];
    } else if (self.cTextField.text.length != 0) {
        float cTemp = [self.cTextField.text floatValue];
        float fTemp = cTemp * 1.8 + 32;
        self.fTextField.text = [NSString stringWithFormat:@"%0.2f",fTemp];
        self.cInput.text = [NSString stringWithFormat:@""];
        self.fInput.text = [NSString stringWithFormat:@""];
    } else if (self.fTextField.text.length != 0) {
        float fTemp = [self.fTextField.text floatValue];
        float cTemp = (fTemp - 32 ) / 1.8;
        self.cTextField.text = [NSString stringWithFormat:@"%0.2f",cTemp];
        self.cInput.text = [NSString stringWithFormat:@""];
        self.fInput.text = [NSString stringWithFormat:@""];
    } else {
        self.cInput.text = [NSString stringWithFormat:@""];
        self.fInput.text = [NSString stringWithFormat:@""];
        self.cTextField.text = [NSString stringWithFormat:@""];
        self.fTextField.text = [NSString stringWithFormat:@""];
    }
}

@end

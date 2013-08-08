//
//  TempViewController.h
//  TempConvertor
//
//  Created by Ambrish Bhargava on 8/7/13.
//  Copyright (c) 2013 Ambrish Bhargava. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TempViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, strong) IBOutlet UITextField *fTextField;
@property (nonatomic, strong) IBOutlet UITextField *cTextField;
@property (nonatomic, strong) IBOutlet UILabel *cInput;
@property (nonatomic, strong) IBOutlet UILabel *fInput;

- (IBAction) onDoneEditing;
- (IBAction) convertTemperature;

@end

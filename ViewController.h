//
//  ViewController.h
//  DemoCalculator
//
//  Created by Quoc Dung Tran on 8/4/15.
//  Copyright (c) 2015 Quoc Dung Tran. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int operation;
double displayNumber;
double resultNumber;
BOOL isDecimal;
@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *txtResult;

-(void) setResultWithNumber: (int) thenumber;
-(void) operationWithNumber: (int) thenumber;
-(IBAction) pressToOneButton :(id) sender;
-(IBAction) pressToTwoButton :(id) sender;
-(IBAction) pressToThreeButton :(id) sender;
-(IBAction) pressToFourButton :(id) sender;
-(IBAction) pressToFiveButton :(id) sender;
-(IBAction) pressToSixButton :(id) sender;
-(IBAction) pressToSevenButton :(id) sender;
-(IBAction) pressToEightButton :(id) sender;
-(IBAction) pressToNineButton :(id) sender;
-(IBAction) pressToZeroButton :(id) sender;
-(IBAction) pressToDotButton :(id) sender;
-(IBAction) pressToAddButton :(id) sender;
-(IBAction) pressToMinusButton :(id) sender;
-(IBAction) pressToMultiplyButton :(id) sender;
-(IBAction) pressToDivideButton :(id) sender;
-(IBAction) pressToEqualsButton:(id)sender;

@end


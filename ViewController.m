//
//  ViewController.m
//  DemoCalculator
//
//  Created by Huy Anh Nguyen on 8/4/15.
//  Copyright (c) 2015 Huy Anh Nguyen. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    isDecimal = false;
    resultNumber = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) setResultWithNumber:(int) thenumber{
    if(!isDecimal){
        displayNumber *= 10;
        displayNumber += thenumber;
        self.txtResult.text = [NSString stringWithFormat:@"%.0f", displayNumber];
    }
    else{
        self.txtResult.text = [self.txtResult.text stringByAppendingString: [NSString stringWithFormat:@"%d", thenumber]];
    }
    displayNumber = [self.txtResult.text floatValue];
}

-(void) operationWithNumber:(int)thenumber{
    isDecimal =false;
    if(resultNumber == 0){
        resultNumber = displayNumber;
    }
    else{
        self.txtResult.text = [NSString stringWithFormat:@"%.2f", resultNumber];
        switch (operation) {
            case 1:
                resultNumber += displayNumber;
                break;
            case 2:
                resultNumber -= displayNumber;
                break;
            case 3:
                resultNumber *= displayNumber;
                break;
            case 4:
                resultNumber /= displayNumber;
                break;
            default:
                break;
        }
    }
    operation = thenumber;
    displayNumber = 0;
}

- (IBAction)pressToOneButton:(id)sender {
    [self setResultWithNumber:1];
}
- (IBAction)pressToTwoButton:(id)sender {
    [self setResultWithNumber:2];
}
- (IBAction)pressToThreeButton:(id)sender {
    [self setResultWithNumber:3];
}
- (IBAction)pressToFourButton:(id)sender {
    [self setResultWithNumber:4];
}
- (IBAction)pressToFiveButton:(id)sender {
    [self setResultWithNumber:5];
}
- (IBAction)pressToSixButton:(id)sender {
   [ self setResultWithNumber:6];
}
- (IBAction)pressToSevenButton:(id)sender {
  [self setResultWithNumber: 7];
}
- (IBAction)pressToEightButton:(id)sender {
   [self setResultWithNumber:8];
}
- (IBAction)pressToNineButton:(id)sender {
    [self setResultWithNumber: 9];
}
- (IBAction)pressToZeroButton:(id)sender {
    [self setResultWithNumber:0];
}
- (IBAction)pressToDotButton:(id)sender {
    isDecimal = true;
    NSRange range = [self.txtResult.text rangeOfString:@"."];
    if (range.location == NSNotFound){
        self.txtResult.text =  [self.txtResult.text stringByAppendingString:@"."];
    }
}
- (IBAction) pressToAddButton :(id) sender{
    if (resultNumber != 0){
        [self operationWithNumber: operation ];
        self.txtResult.text = [NSString stringWithFormat:@"%.2f", displayNumber];
        displayNumber = [self.txtResult.text floatValue];
        resultNumber = 0;
    }
    [self operationWithNumber:1];
    
}
- (IBAction) pressToMinusButton :(id) sender{
    if (resultNumber != 0){
        [self operationWithNumber: operation ];
        self.txtResult.text = [NSString stringWithFormat:@"%.2f", displayNumber];
        displayNumber = [self.txtResult.text floatValue];
        resultNumber = 0;
    }
    [self operationWithNumber:2];
    
    
}
- (IBAction) pressToMultiplyButton :(id) sender{
    if (resultNumber != 0){
        [self operationWithNumber: operation ];
        self.txtResult.text = [NSString stringWithFormat:@"%.2f", displayNumber];
        displayNumber = [self.txtResult.text floatValue];
        resultNumber = 0;
    }
    [self operationWithNumber:3];
    
}
- (IBAction) pressToDivideButton :(id) sender{
    if (resultNumber != 0){
        [self operationWithNumber: operation ];
        self.txtResult.text = [NSString stringWithFormat:@"%.2f", displayNumber];
        displayNumber = [self.txtResult.text floatValue];
        resultNumber = 0;
    }
    [self operationWithNumber:4];
}
- (IBAction)pressToCleanButton:(id)sender {
    operation = 0;
    resultNumber = 0;
    displayNumber = 0;
    isDecimal = false;
    self.txtResult.text = [NSString stringWithFormat: @"%i", 0];
}
- (IBAction)pressToEqualsButton:(id)sender{
    [self operationWithNumber: operation];
        self.txtResult.text = [NSString stringWithFormat:@"%.2f", resultNumber];
        displayNumber = [self.txtResult.text floatValue];
        resultNumber = 0;
}

@end

//
//  ViewController.m
//  1-Question-Answer
//
//  Created by Joshua Ide on 7/02/2016.
//  Copyright © 2016 Fox Gallery Studios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) presentAnswer: (NSString*) title boolCorrect:(NSString*) boolCorrect {
    UIAlertController *incorrect = [UIAlertController alertControllerWithTitle:title message:boolCorrect preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *close = [UIAlertAction actionWithTitle:@"Close" style:UIAlertActionStyleDefault handler:nil];
    [incorrect addAction:close];
    [self presentViewController:incorrect animated:YES completion:nil];
}

- (IBAction)onQuestionPressed:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Question" message:@"Is Melbourne a city in Australia?" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *yes = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self presentAnswer:@"Correct" boolCorrect:@"This is correct."];
    }];
    UIAlertAction *no = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self presentAnswer:@"Incorrect" boolCorrect:@"That is incorrect."];
    }];
    [alert addAction:yes];
    [alert addAction:no];
    [self presentViewController:alert animated:YES completion:nil];
}

@end

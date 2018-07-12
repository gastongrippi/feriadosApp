//
//  ViewController.m
//  feriadosApp
//
//  Created by gaston on 7/11/18.
//  Copyright © 2018 gaston. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[self labelSwitch] setText:@"Cambiar este label con lo que hay en el edit text"];
    [self.labelSwitch setLineBreakMode:NSLineBreakByWordWrapping];
    self.labelSwitch.numberOfLines = 0;
    self.labelSwitch.textAlignment = NSTextAlignmentCenter;
    
    self.textfieldSwitch.placeholder = @"Que label quiere mostrar?";
    
}

- (IBAction)changeTexts:(id)sender {
    self.labelSwitch.text = self.textfieldSwitch.text;
    self.textfieldSwitch.text = @"";
}
- (IBAction)navegarASegundaVista:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"secondView" bundle:nil];
    secondViewController *myNewVC = (secondViewController *)[storyboard instantiateViewControllerWithIdentifier:@"secondViewController"];
    [self.navigationController presentViewController:myNewVC animated:YES completion:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

//
//  ViewController.m
//  ProtocolBF
//
//  Created by kare on 25/08/2017.
//  Copyright © 2017 kare. All rights reserved.
//

#import "ViewController.h"
#import "Person.pbobjc.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person *person = [[Person alloc] init];
    person.name = @"Kare";
    person.name = @"karepbq@gmail.com";
    
    NSData *data = [person data];
    NSLog(@"data -> %@", data);
    
    NSError *error = nil;
    Person *p = [Person parseFromData:data error:&error];
    if (error != nil) {
        NSLog(@"error infor -> %@", error.description);
    }else{
        NSLog(@"person %@", p);
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

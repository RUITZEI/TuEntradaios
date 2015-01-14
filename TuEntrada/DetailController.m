//
//  DetailController.m
//  TuEntrada
//
//  Created by Manuel Ruiz on 1/12/15.
//  Copyright (c) 2015 Ruitzei. All rights reserved.
//

#import "DetailController.h"
#import "WebController.h"

@interface DetailController ()

@end

@implementation DetailController

@synthesize link;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.nombre.text = [self.data objectAtIndex:0];
    self.fecha.text = [self.data objectAtIndex:1];
    self.lugar.text = [self.data objectAtIndex:2];
    self.seatsFrom.text = [self.data objectAtIndex:3];
    self.ciudad.text = [self.data objectAtIndex:4];
    [self.imagen sd_setImageWithURL:[NSURL URLWithString:[[self.data objectAtIndex:5] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]] placeholderImage:[UIImage imageNamed:@"default_logo.jpg"]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"webSegue"]) {
        WebController *webView = [segue destinationViewController];
        
        NSString* seat = @"seat";
        NSString* primeraParte = [self.link substringToIndex:[self.link rangeOfString:seat].location];
        NSString* segundaParte = [self.link substringFromIndex:[self.link rangeOfString:seat].location];
        NSString *linkMobile = [[primeraParte stringByAppendingString:@"mobile/"] stringByAppendingString:segundaParte];
        
        NSLog(@"Link Mobile: %@", linkMobile);
        
        //webView.link = self.l
        
        webView.link = linkMobile;
        
        webView.hidesBottomBarWhenPushed = YES;
        
    } else {
        NSLog(@"Se abrio un Segue no identificado");
    }
}


@end

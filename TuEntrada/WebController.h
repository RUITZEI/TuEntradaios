//
//  WebController.h
//  TuEntrada
//
//  Created by Manuel Ruiz on 1/12/15.
//  Copyright (c) 2015 Ruitzei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebController : UIViewController
<UIWebViewDelegate>

@property (strong, nonatomic) NSString* link;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (nonatomic,strong) UIActivityIndicatorView *spinner;

@property (nonatomic, weak) IBOutlet UIBarButtonItem *backButton;
@property (nonatomic, weak) IBOutlet UIBarButtonItem *forwardButton;
@property (nonatomic, weak) IBOutlet UIBarButtonItem *refreshButton;



@end

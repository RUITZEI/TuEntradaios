//
//  AgendaViewController
//  TuEntrada
//
//  Created by Manuel Ruiz on 1/11/15.
//  Copyright (c) 2015 Ruitzei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "ItemAgenda.h"

@interface AgendaViewController : UITableViewController

@property (nonatomic, retain) AppDelegate *app;
@property (nonatomic, retain) ItemAgenda *itemAgenda;
@property (nonatomic, strong) NSArray *resultadosBusqueda;
@property IBOutlet UISearchBar *searchBar;
@property (nonatomic, strong) UIActivityIndicatorView *spinner;

@end

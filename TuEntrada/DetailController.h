//
//  DetailController.h
//  TuEntrada
//
//  Created by Manuel Ruiz on 1/12/15.
//  Copyright (c) 2015 Ruitzei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SDWebImage/UIImageView+WebCache.h>

@interface DetailController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *nombre;
@property (weak, nonatomic) IBOutlet UILabel * fecha;
@property (weak, nonatomic) IBOutlet UILabel * lugar;
@property (weak, nonatomic) IBOutlet UILabel * seatsFrom;
@property (weak, nonatomic) IBOutlet UILabel * ciudad;
@property (weak, nonatomic) IBOutlet UIImageView * imagen;

@property (strong, nonatomic) NSString* link;
@property (strong, nonatomic) NSArray* data;


@end

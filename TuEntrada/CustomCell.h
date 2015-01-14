//
//  CustomCell.h
//  TuEntrada
//
//  Created by Manuel Ruiz on 1/9/15.
//  Copyright (c) 2015 Ruitzei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SDWebImage/UIImageView+WebCache.h>

@interface CustomCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UIImageView *imagenEvento;
@property (weak, nonatomic) IBOutlet UILabel *nombre;
@property (weak, nonatomic) IBOutlet UILabel *fecha;
@property (weak, nonatomic) IBOutlet UILabel *ciudad;

- (void) asignarImagenConLink:(NSString *)link;
- (void) asignarNombre: (NSString *)nombre;
- (void) asignarFecha: (NSString *)fecha;
- (void) asignarCity: (NSString *)city;
@end

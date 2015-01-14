//
//  CustomCell.m
//  TuEntrada
//
//  Created by Manuel Ruiz on 1/9/15.
//  Copyright (c) 2015 Ruitzei. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell



- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}


/*
 
 Esto es un comentario de Prueba para ver si se comitea...
 */
- (void) asignarImagenConLink:(NSString *)link{
    NSString *nombreDeLaImagen;
    //self.imagenEvento.layer.cornerRadius = 20.0f;
    

    if ( link == nil) {
        nombreDeLaImagen = [NSString stringWithFormat:@"default_logo.jpg"];
        self.imagenEvento.image = [UIImage imageNamed:nombreDeLaImagen];
    } else {
        [self.imagenEvento sd_setImageWithURL:[NSURL URLWithString:[link stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]] placeholderImage:[UIImage imageNamed:@"default_logo.jpg"]];
    
    }
}

- (void) asignarNombre: (NSString *)nombre{
    self.nombre.text = nombre;
}

- (void) asignarFecha: (NSString *)fecha{
    self.fecha.text = fecha;
}

- (void) asignarCity: (NSString *)city{
    self.ciudad.text = city;
}


@end

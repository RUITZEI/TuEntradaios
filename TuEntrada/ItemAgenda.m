//
//  ItemAgenda.m
//  TuEntrada
//
//  Created by Manuel Ruiz on 1/9/15.
//  Copyright (c) 2015 Ruitzei. All rights reserved.
//

#import "ItemAgenda.h"

@implementation ItemAgenda


@synthesize nombre, ciudad, fecha, link, logoId, fechaDeVenta, nombreVenue, asientosDesde, seriesName, disponibilidad, itemId;


- (NSString *) getFechaDeVentaConvertida{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    //Formato ejemplo: 2014-07-29 10:00 AM
    [dateFormatter setDateFormat:@"yyyy-MM-dd h:mm a"];
    
    //Paso el string a fecha.
    NSDate *fechaFormateada = [dateFormatter dateFromString: self.fechaDeVenta];
    
    //Le cambio el formato para que devuelva:   25/05 a las 20:00hs
    [dateFormatter setDateFormat:@"dd'/'M 'a las 'h:mm'hs'"];
    
    return ([dateFormatter stringFromDate:fechaFormateada]);
}

- (NSString *) getFechaConvertida{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    //Formato ejemplo: 2014-07-29 10:00 AM
    [dateFormatter setDateFormat:@"yyyy-MM-dd h:mm a"];
    
    //Paso el string a fecha.
    NSDate *fechaFormateada = [dateFormatter dateFromString: self.fecha];
    
    //Le cambio el formato para que devuelva:   25/05 a las 20:00hs
    [dateFormatter setDateFormat:@"dd'/'MM'/'yy"];
    
    return ([dateFormatter stringFromDate:fechaFormateada]);
}




@end

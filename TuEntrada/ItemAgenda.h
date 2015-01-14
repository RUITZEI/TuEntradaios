//
//  ItemAgenda.h
//  TuEntrada
//
//  Created by Manuel Ruiz on 1/9/15.
//  Copyright (c) 2015 Ruitzei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ItemAgenda : NSObject

@property (nonatomic, retain) NSString *nombre;
@property (nonatomic, retain) NSString *ciudad;
@property (nonatomic, retain) NSString *fecha;
@property (nonatomic, retain) NSString *link;
@property (nonatomic, retain) NSString *logoId;
@property (nonatomic, retain) NSString *fechaDeVenta;
@property (nonatomic, retain) NSString *nombreVenue;
@property (nonatomic, retain) NSString *asientosDesde;
@property (nonatomic, retain) NSString *seriesName;
@property (nonatomic, retain) NSString *disponibilidad;
@property (nonatomic, readwrite) NSInteger itemId;

- (NSString *) getFechaDeVentaConvertida;
- (NSString *) getFechaConvertida;




@end

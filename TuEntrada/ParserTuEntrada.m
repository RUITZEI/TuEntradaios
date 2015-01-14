//
//  ParserTuEntrada.m
//  TuEntrada
//
//  Created by Manuel Ruiz on 1/9/15.
//  Copyright (c) 2015 Ruitzei. All rights reserved.
//

#import "ParserTuEntrada.h"
#import "Constantes.h"

@implementation ParserTuEntrada
- (id) initParser{
    
    if (self == [super init]){
        
        app = (AppDelegate *)[[UIApplication sharedApplication]delegate];
        
    }
    
    return self;
}

- (void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict{
    
    if ([elementName isEqualToString:@"results"]) {
        
        app.agenda = [[NSMutableArray alloc] init];
        
    } else if([elementName isEqualToString:@"event"]) {
        
        itemAgenda = [[ItemAgenda alloc] init];
        itemAgenda.itemId = [[attributeDict objectForKey:@"count"] integerValue];
    }
    
    
}

- (void) parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
    
    if (!currentElementValue){
        currentElementValue = [[NSMutableString alloc] initWithString:string];
    }else {
        [currentElementValue appendString:string];
    }
}

- (void) parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{
    
    if ([elementName isEqualToString:@"results"]){
        return;
    }
    
    if ([elementName isEqualToString:@"event"]) {
        [app.agenda addObject:itemAgenda];
        
        itemAgenda = nil;
    }else{
        
        //[itemAgenda setValue:currentElementValue forKey:elementName];
        
        //currentElementValue = nil;
        
        if ([elementName isEqualToString:ATT_NOMBRE]){
            [itemAgenda setValue:currentElementValue forKey:@"nombre"]
            ;
        }else if([elementName isEqualToString:ATT_CIUDAD]){
            [itemAgenda setValue:currentElementValue forKey:@"ciudad"];
            
        }else if ([elementName isEqualToString:ATT_FECHA]) {
            [itemAgenda setValue:currentElementValue forKey:@"fecha"];
            
        }else if([elementName isEqualToString:ATT_LINK]){
            [itemAgenda setValue:currentElementValue forKey:@"link"];
            
        }else if ([elementName isEqualToString:ATT_LOGOID]) {
            [itemAgenda setValue:currentElementValue forKey:@"logoId"];
            
        }else if ([elementName isEqualToString:ATT_VENUE_NAME]){
            [itemAgenda setValue:currentElementValue forKey:@"nombreVenue"];
            
        }else if ([elementName isEqualToString:ATT_SEATS_FROM]){
            [itemAgenda setValue:currentElementValue forKey:@"asientosDesde"];
            
        }else if ([elementName isEqualToString:ATT_SERIES_NAME]){
            [itemAgenda setValue:currentElementValue forKey:@"seriesName"];
            
        }else if ([elementName isEqualToString:ATT_DISPONIBILIDAD]){
            [itemAgenda setValue:currentElementValue forKey:@"disponibilidad"];
            
        }else if ([elementName isEqualToString:ATT_ONSALE]){
            [itemAgenda setValue:currentElementValue forKey:@"fechaDeVenta"];
        }
        
        
        
        currentElementValue = nil;
        
    }
}


@end

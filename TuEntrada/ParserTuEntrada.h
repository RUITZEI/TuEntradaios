//
//  ParserTuEntrada.h
//  TuEntrada
//
//  Created by Manuel Ruiz on 1/9/15.
//  Copyright (c) 2015 Ruitzei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "ItemAgenda.h"

@interface ParserTuEntrada : NSObject <NSXMLParserDelegate>{
    AppDelegate *app;
    ItemAgenda *itemAgenda;
    NSMutableString *currentElementValue;
}

- (id) initParser;

@end

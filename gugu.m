//
//  gugu.m
//  helloWorld
//
//  Created by YK on 2014. 8. 16..
//  Copyright (c) 2014년 yk. All rights reserved.
//

#import "gugu.h"

@implementation gugu

- inputGugu(int gugu) {
    
    
    for(i=1; i<10; i++){
        int gugudan = gugu*i;
        _uiTitle.text =  @"%d * %d = %d",gugu,i,gugudan;
    }
    
    
}

@end




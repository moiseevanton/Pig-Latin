//
//  main.m
//  PigLatin
//
//  Created by Anton Moiseev on 2016-05-06.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"
int main(int argc, const char * argv[]) {

    NSString *s = @"Kale Chips";
    
    NSString *result = [s stringByPigLatinization];
    
    NSLog(@"%@", result);
    
    return 0;
}

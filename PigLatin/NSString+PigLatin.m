//
//  NSString+PigLatinization.m
//  PigLatin
//
//  Created by Anton Moiseev on 2016-05-06.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

- (NSString *)stringByPigLatinization {
    
    if (self.length == 0) {
        
        return self;
    } else {
        
        NSString *str = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        NSArray *listOfWords = [str componentsSeparatedByString:@" "];
        
        NSMutableArray *finalListOfWords = [NSMutableArray new];
        
        for (NSString *eachStr in listOfWords) {
            
            NSRange indexOfFirstVowel = [eachStr rangeOfCharacterFromSet:[NSCharacterSet characterSetWithCharactersInString:@"aeiou"]];
            NSString *substring = [eachStr substringWithRange: NSMakeRange(indexOfFirstVowel.location, eachStr.length - indexOfFirstVowel.location)];
            
            NSArray *array = [eachStr componentsSeparatedByString:substring];
            
            NSString *restOfTheWord = array[0];
            
            NSString *eachWord = [substring stringByAppendingString:restOfTheWord];
            
            eachWord = [eachWord stringByAppendingString:@"ay"];
            
            [finalListOfWords addObject:eachWord];
                
            }
        
        NSMutableString *finalString = [NSMutableString new];
        
        for (NSString *eachStr in finalListOfWords) {
            
            [finalString appendFormat:@"%@ ", eachStr];
            
        }
        
        return finalString;
        
    }

}

@end

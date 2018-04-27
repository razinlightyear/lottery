//
//  LotteryEntry.m
//  lottery
//
//  Created by Andrew Emrazian on 4/20/18.
//  Copyright © 2018 Andrew Emrazian. All rights reserved.
//

#import "LotteryEntry.h"

@implementation LotteryEntry

-(id)init // was (void)prepareNumbers
{
//    self = [super init];
//    if(self)
//    {
//        firstNumber = ((int)random() % 100)+1;
//        secondNumber = ((int)random() % 100)+1;
//    }
//    return self;
    return [self initWithEntryDate:[NSDate date]];
}

-(id)initWithEntryDate:(NSDate *)date;
{
    self = [super init];
    if(self)
    {
        firstNumber = ((int)random() % 100)+1;
        secondNumber = ((int)random() % 100)+1;
        entryDate = date;
    }
    return self;
}

-(void)setEntryDate:(NSDate *)date
{
    entryDate = date;
}

-(NSDate *)entryDate
{
    return entryDate;
}

-(int)firstNumber
{
    return firstNumber;
}

-(int)secondNumber
{
    return secondNumber;
}

-(NSString *)description
{
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setTimeStyle:NSDateFormatterNoStyle];
    [df setDateStyle:NSDateFormatterMediumStyle];
    NSString *result;
    result = [[NSString alloc] initWithFormat:@"%@ = %d and %d",
              [df stringFromDate:entryDate],
              firstNumber, secondNumber];
    return result;
}
@end

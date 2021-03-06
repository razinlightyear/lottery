//
//  main.m
//  lottery
//
//  Created by Andrew Emrazian on 4/19/18.
//  Copyright © 2018 Andrew Emrazian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LotteryEntry.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSMutableArray *array;
//        array = [[NSMutableArray alloc] init];
//        int i;
//        for(i=0; i<10; i++) {
//            NSNumber *newNumber = [[NSNumber alloc] initWithInt:(i * 3)];
//            [array addObject:newNumber];
//        }
//        for(i=0; i<10; i++) {
//            NSLog(@"array[%d] = %@", i, [array objectAtIndex:i]);
//        }
        
        NSDate *now = [[NSDate alloc] init];
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSDateComponents *weekComponents = [[NSDateComponents alloc] init];
        srandom((unsigned)time(NULL));
        NSMutableArray *array;
        array = [[NSMutableArray alloc] init];
        NSLog(@"first item = %@", [array objectAtIndex:0]);
        int i;
        for(i=0; i<10; i++)
        {
            [weekComponents setWeek:i];
            
            NSDate *iWeeksFromNow;
            iWeeksFromNow = [cal dateByAddingComponents:weekComponents
                                                 toDate:now
                                                options:0];
            
            //LotteryEntry *newEntry = [[LotteryEntry alloc] init];
            //[newEntry prepareRandomNumbers];
            //[newEntry setEntryDate:iWeeksFromNow];

            //LotteryEntry *newEntry = [[LotteryEntry alloc] init];
            
            LotteryEntry *newEntry = [[LotteryEntry alloc] initWithEntryDate:iWeeksFromNow];
            
            [array addObject:newEntry];
        }
        
        for(LotteryEntry *entryToPrint in array)
        {
            NSLog(@"%@", entryToPrint);
        }
    }
    return 0;
}

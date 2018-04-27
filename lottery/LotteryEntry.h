//
//  LotteryEntry.h
//  lottery
//
//  Created by Andrew Emrazian on 4/20/18.
//  Copyright © 2018 Andrew Emrazian. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef LotteryEntry_h
#define LotteryEntry_h

@interface LotteryEntry:NSObject {
    NSDate *entryDate;
    int firstNumber;
    int secondNumber;
}

//-(void)prepareRandomNumbers;
-(id)initWithEntryDate:(NSDate *)date;
-(void)setEntryDate:(NSDate *)date;
-(NSDate *)entryDate;
-(int)firstNumber;
-(int)secondNumber;
@end
#endif /* LotteryEntry_h */

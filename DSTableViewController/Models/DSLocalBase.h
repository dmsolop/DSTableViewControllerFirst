//
//  DSLocalBase.h
//  DSProfileClasswork
//
//  Created by Дмитрий Солоп on 18.03.17.
//  Copyright © 2017 ios. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DSPerson;
@interface DSLocalBase : NSObject

@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;
@property (strong, nonatomic) NSString *sex;
@property (strong, nonatomic) NSString *country;
@property (assign, nonatomic) NSInteger age;
@property (strong, nonatomic) NSDate *dateOfBirth;
@property (strong, nonatomic) NSMutableArray <DSPerson*> *listOfPersons;


+ (id)singleToneLocalBase;
- (void) addPersonToList:(DSPerson *)person;
- (void) printBase;

@end

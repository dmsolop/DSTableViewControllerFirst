//
//  DSPerson.h
//  DSTableViewController
//
//  Created by Дмитрий Солоп on 11.04.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DSPerson : NSObject

@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;
@property (strong, nonatomic) NSString *country;
@property (strong, nonatomic) NSString *sex;
@property (assign, nonatomic) NSInteger age;
@property (strong, nonatomic) NSDate *dateOfBirth;
+ (DSPerson *) personInitialiseWithParams;

@end

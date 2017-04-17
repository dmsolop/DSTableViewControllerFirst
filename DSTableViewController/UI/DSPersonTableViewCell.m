//
//  DSPersonTableViewCell.m
//  DSTableViewController
//
//  Created by Дмитрий Солоп on 11.04.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "DSPersonTableViewCell.h"
#import "DSPerson.h"
#import "DSLocalBase.h"

@implementation DSPersonTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];

}

- (void)fillThePersonCell:(DSPerson *)person {
    NSDateFormatter *dateForm = [[NSDateFormatter alloc] init];
    [dateForm setDateFormat:@"dd MMMM yyyy"];
    self.firstNameLable.text = person.firstName;
    self.lastNameLable.text = person.lastName;
    self.dateLable.text = [dateForm stringFromDate:person.dateOfBirth];
    self.ageLable.text = [NSString stringWithFormat:@"%ld full age", person.age];
    self.countryLable.text = person.country;
    self.sexLable.text = person.sex;
}

@end

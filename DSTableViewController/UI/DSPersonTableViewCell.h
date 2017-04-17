//
//  DSPersonTableViewCell.h
//  DSTableViewController
//
//  Created by Дмитрий Солоп on 11.04.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DSPerson;
@interface DSPersonTableViewCell : UITableViewCell

- (void)fillThePersonCell:(DSPerson *)person;
@property (weak, nonatomic) IBOutlet UILabel *firstNameLable;
@property (weak, nonatomic) IBOutlet UILabel *lastNameLable;
@property (weak, nonatomic) IBOutlet UILabel *dateLable;
@property (weak, nonatomic) IBOutlet UILabel *ageLable;
@property (weak, nonatomic) IBOutlet UILabel *countryLable;
@property (weak, nonatomic) IBOutlet UILabel *sexLable;

@end

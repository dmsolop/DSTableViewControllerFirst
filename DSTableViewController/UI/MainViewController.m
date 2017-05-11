//
//  MainViewController.m
//  DSTableViewController
//
//  Created by Дмитрий Солоп on 11.04.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "MainViewController.h"
#import "ViewController.h"

#import "DSPersonTableViewCell.h"
#import "DSTableViewCell.h"

#import "DSPerson.h"
#import "DSLocalBase.h"

#import "UIStoryboard+DSExtension.h"

@interface MainViewController () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) NSMutableArray *arrayPersons;
@property (nonatomic, strong) DSLocalBase *base;
@end

@implementation MainViewController

#pragma mark - View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.base = [DSLocalBase new];
//    for (int index = 0; index < 50; index++) {
//        [self.arrayPersons addObject:[DSPerson personInitialiseWithParams]];
//    }
   }
- (void)dealloc {
    NSLog(@"mainViewController dealocated");
}

#pragma mark - UITableViewDataSource Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.base.listOfPersons.count +1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row < self.base.listOfPersons.count) {
        NSString* identifier = NSStringFromClass([DSPersonTableViewCell class]);
        DSPersonTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
        DSPerson *person = self.base.listOfPersons[indexPath.row];
        [cell fillThePersonCell:person];
        
        return cell;
    } else {
        return [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([DSTableViewCell class])];
    }
}

#pragma mark - UITableViewDelegate Methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == self.base.listOfPersons.count) {
        ViewController *viewController = [[UIStoryboard anotherStoryboard:@"ProfilePerson"] viewControllerFromClass:[ViewController class]];
        
        viewController.personBlock = ^(DSPerson* person){
            [self.base addPersonToList:person];
        };
        [self.navigationController pushViewController:viewController animated:YES];
        [self.tableView reloadData];
    }
}

@end

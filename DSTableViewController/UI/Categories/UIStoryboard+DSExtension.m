//
//  UIStoryboard+DSExtension.m
//  DSTableViewController
//
//  Created by Дмитрий Солоп on 07.05.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "UIStoryboard+DSExtension.h"

@implementation UIStoryboard (DSExtension)

+ (UIStoryboard *)anotherStoryboard:(NSString *)storyboardName {
    return [UIStoryboard storyboardWithName:storyboardName bundle:nil];
}

- (id) viewControllerFromClass:(Class)viewControllerClass {
    return [self instantiateViewControllerWithIdentifier:NSStringFromClass(viewControllerClass)];
}


@end

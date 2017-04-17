//
//  DSPerson.m
//  DSTableViewController
//
//  Created by Дмитрий Солоп on 11.04.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "DSPerson.h"

@interface DSPerson ()

@property (nonatomic, strong) NSArray *arrayBaseOfFirstName;
@property (nonatomic, strong) NSArray *arrayBaseOfLastName;

@end

@implementation DSPerson

+ (DSPerson *) personInitialiseWithParams {
    return [[DSPerson alloc] initWithParams];
}


- (instancetype)initWithParams
{
    self = [super init];
    if (self) {
        
        _arrayBaseOfFirstName = @[@"Михаил", @"Николай", @"Дмитрий", @"Роман", @"Василий", @"Алексей", @"Максим", @"Евгений", @"Владимир", @"Андрей",@"Олег", @"Елисей", @"Александр", @"Илья", @"Тимофей", @"Матвей", @"Семен", @"Денис", @"Данила", @"Григорий", @"Руслан", @"Тимур", @"Юрий", @"Георгий", @"Давид",@"Ольга", @"Елена", @"Алена", @"Татьяна", @"Авдотья", @"Вераника", @"Галина", @"Ксения", @"Алла", @"Виола", @"Влада", @"Богдана", @"Валерия", @"Варвара", @"Дана", @"Джамиля", @"Жасмин", @"Диана", @"Екатерина", @"Жозефина", @"Илона", @"Ирма", @"Кристина", @"Клара", @"Лилия"];
        
        _arrayBaseOfLastName = @[@"Солоп", @"Данченко", @"Клюйко", @"Запорожченко", @"Петренко", @"Андреенко", @"Руденко", @"Полищук", @"Бондарь", @"Бондаренко",@"Бондарчук", @"Захаренко", @"Захарченко", @"Юшко", @"Клименко", @"Макаренко", @"Макарченко", @"Чикотило", @"Махно", @"Николенко", @"Никольченко", @"Гончар", @"Гончаренко", @"Гончарук", @"Кравец", @"Кравченко", @"Кравчук", @"Гоголь", @"Горобец", @"Комар", @"Шевченко", @"Белоштан", @"Хрущ", @"Хрущов", @"Лещенко", @"Кобзон", @"Кривонос", @"Рябоконь", @"Подопригора", @"Вырвихвост", @"Непийвода", @"Миняйло", @"Колесниченко", @"Коваль", @"Коваленко", @"Ковальчук", @"Весна", @"Шумейко", @"Кличко", @"Марочко"];
        
        _firstName = [_arrayBaseOfFirstName objectAtIndex:arc4random() % [_arrayBaseOfFirstName count]];
        
        _lastName = [_arrayBaseOfLastName objectAtIndex:arc4random() % [_arrayBaseOfLastName count]];
    }
    return self;
}


@end

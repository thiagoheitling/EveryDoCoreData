//
//  addNewTodoItemViewController.h
//  EveryDoCoreData
//
//  Created by Thiago Heitling on 2016-02-03.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Todo.h"

@interface AddNewTodoItemViewController : UIViewController

@property (nonatomic, strong) Todo *todoItem;
@property (nonatomic) NSManagedObjectContext *context;

@end

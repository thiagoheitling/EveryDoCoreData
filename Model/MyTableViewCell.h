//
//  MyTableViewCell.h
//  EveryDoCoreData
//
//  Created by Thiago Heitling on 2016-02-03.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <UIKit/UIKit.h>

//#import "Todo.h"

@interface MyTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *todoNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UIButton *taskCompletedButton;

@property (nonatomic) NSManagedObjectContext *context;


@end

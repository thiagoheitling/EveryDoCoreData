//
//  MyTableViewCell.m
//  EveryDoCoreData
//
//  Created by Thiago Heitling on 2016-02-03.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import "MyTableViewCell.h"


@interface MyTableViewCell ()

@end

@implementation MyTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)taskCompletedStatusDidChangeButton:(UIButton *)sender
{
    self.taskCompletedButton.selected = !self.taskCompletedButton.selected;
    
}

@end

//
//  addNewTodoItemViewController.m
//  EveryDoCoreData
//
//  Created by Thiago Heitling on 2016-02-03.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import "AddNewTodoItemViewController.h"

@interface AddNewTodoItemViewController ()

@property (weak, nonatomic) IBOutlet UITextField *todoItemName;
@property (weak, nonatomic) IBOutlet UITextField *todoItemDescription;

@end

@implementation AddNewTodoItemViewController

- (IBAction)doneButtonDidPress:(UIButton *)sender
{
    NSManagedObject *newTodo = [NSEntityDescription insertNewObjectForEntityForName:@"Todo" inManagedObjectContext:self.context];
    
    [newTodo setValue:self.todoItemName.text forKey:@"name"];
    [newTodo setValue:self.todoItemDescription.text forKey:@"descriptions"];
    
    NSError *error = nil;
    
    if (![self.context save:&error]) {
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

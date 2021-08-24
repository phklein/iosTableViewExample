//
//  MainViewController.m
//  DesafioTableView
//
//  Created by Pedro Almeida on 10/08/21.
//

#import "MainViewController.h"
#import "TableViewController.h"
@interface MainViewController (){
   

}
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //colocando Stirngs dentro da array
    _test = @"teste";
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
   
}

- (IBAction)changeView:(UIButton *)sender {
    [self ViewChangerTable:@"TableViewController"];
}
-(void) ViewChangerTable:(NSString *)NibName{
    TableViewController *d = [[TableViewController alloc] initWithNibName:NibName bundle:nil];
    [d setTest:_test];
    [self.navigationController pushViewController:d animated:YES];
}


@end

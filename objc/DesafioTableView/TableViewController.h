//
//  TableViewController.h
//  DesafioTableView
//
//  Created by Pedro Almeida on 11/08/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *outTableView;
@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet UILabel *lbl1;
@property(retain) NSString *test ;
@end

NS_ASSUME_NONNULL_END

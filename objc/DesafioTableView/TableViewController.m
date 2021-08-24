//
//  TableViewController.m
//  DesafioTableView
//
//  Created by Pedro Almeida on 11/08/21.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "MainViewController.h"
#import "SecondTableViewCell.h"
@interface TableViewController (){
    const NSArray *textArray;
    const NSString *testSubject;
   

}


@end

@implementation TableViewController
   

- (void)viewDidLoad {
    [super viewDidLoad];
     testSubject = @"PETR4";
    //colocando Stirngs dentro da array
    textArray = [[NSArray alloc] initWithObjects:@"PETR4", @"APPL34",@"GMCO34",@"PETR4",@"MGLU3",@"MSFT34", @"PETR4",@"OIBR3",@"ITASA4",@"AMER3",@"ABEV3",@"PETR 4",@"TOTS3",@"SNEC34",@"PETR4",@"HPQB34",@"PETR4",@"ATVI34",@"UBI",@"PETR4",nil];
   
    _lbl1.text = [NSString stringWithFormat:@"você possui %lu ativos na carteira", (unsigned long)[textArray count]];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(returnViewMain) ];
    [_btn1 addGestureRecognizer:tap];
    [self registerCells];
    NSLog(_test);
       
}
//Numeros de Sections na Table
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
//Numeros de colunas na tabela {baseado na quantidade de itens da array}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [textArray count];
}
-(void) registerCells{
    [_outTableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"TableViewCell"];
    [_outTableView registerNib:[UINib nibWithNibName:@"SecondTableViewCell" bundle:nil] forCellReuseIdentifier:@"SecondTableViewCell"];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    long dontChangeTheFirstCell = indexPath.row + 1;
    if(dontChangeTheFirstCell %4 == 0){
        SecondTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SecondTableViewCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"SecondTableViewCell"];
        return cell;
    }
    else{
        TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
        cell.lblText.text = [textArray objectAtIndex:indexPath.row];
        if ([textArray[indexPath.row]  isEqual:testSubject]) {
            cell.backgroundColor = [UIColor redColor];
        }
         else {
             cell.backgroundColor = [UIColor darkGrayColor];
             
         }
        [cell.image setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",cell.lblText.text]]];
        return  cell;
       
    }

    
}

-(void) returnViewMain{
   
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}


@end

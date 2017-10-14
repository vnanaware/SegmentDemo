//
//  ViewController.m
//  LiuXSegment
//
//  Created by 刘鑫 on 16/3/18.
//  Copyright © 2016年 liuxin. All rights reserved.
//

#import "ViewController.h"
#import "LXSegmentScrollView.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor whiteColor];
    //iOS7新增属性
    self.automaticallyAdjustsScrollViewInsets=NO;
 
    NSMutableArray *array=[NSMutableArray array];
    for (int i =0; i<2; i++) {
        UIView *view=[[UIView alloc] init];
        if (i==0) {
            view.backgroundColor=[UIColor whiteColor];
        }if (i==1) {
            view.backgroundColor=[UIColor grayColor];
        }
        [array addObject:view];
    }
    
    UITableView *tbale=[[UITableView alloc] init];
    tbale.delegate=self;
    tbale.dataSource=self;
    tbale.rowHeight=100;
    
    [array addObject:tbale];
    
    LXSegmentScrollView *scView=[[LXSegmentScrollView alloc] initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height-64) titleArray:@[@"ABC",@"OPQ",@"XYZ"] contentViewArray:array];
    [self.view addSubview:scView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellid=@"cell";
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:cellid];
    if (!cell) {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
    }
    cell.textLabel.text=@"test";
    
    return cell;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

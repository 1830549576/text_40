//
//  ViewController.m
//  text_40
//
//  Created by alnpet on 16/5/6.
//  Copyright © 2016年 alnpet. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSMutableArray *newArr = [[NSMutableArray alloc] init];
    NSMutableArray *oldArr = [NSMutableArray arrayWithCapacity:0];
    
    
    int n = 81;
    
    for (int i=0; i<n; i++) {
        
        if (i%10==0&&i!=0) {
            
            [newArr addObject:[oldArr copy]];
            
           // NSLog(@"newArr=====%@",newArr);

            [oldArr removeAllObjects];
            
            [oldArr addObject:[NSString stringWithFormat:@"%d",i]];
            
            if (i==n-1) {
                [newArr addObject:[oldArr copy]];
            }
            
        }else if(i==n-1&&i%10!=0){
        
            [oldArr addObject:[NSString stringWithFormat:@"%d",i]];
            [newArr addObject:[oldArr copy]];
        
        }else{
        
            [oldArr addObject:[NSString stringWithFormat:@"%d",i]];
        }
    }
    
    
    NSLog(@"=====================%@",newArr);
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

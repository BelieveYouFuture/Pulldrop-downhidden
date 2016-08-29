
//
//  Created by 张文晏
//  Copyright © 2016 FZLZ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *redView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (assign, nonatomic) CGFloat flag;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    if (scrollView.contentOffset.y <= 0) {
        return ;
    }
    
    if (scrollView.contentOffset.y - 10 >= self.flag) {
        if (scrollView.contentOffset.y > self.flag){
            self.redView.hidden = YES;
            self.flag = scrollView.contentOffset.y;
            
        }
    }else{
        if (scrollView.contentOffset.y < self.flag) {
            self.redView.hidden = NO;
            self.flag = scrollView.contentOffset.y;
        }
        
        
    }
    
}

@end

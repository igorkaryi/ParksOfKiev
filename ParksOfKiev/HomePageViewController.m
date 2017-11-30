//
//  ViewController.m
//  ParksOfKiev
//
//  Created by Igor Karyi on 10.07.17.
//  Copyright © 2017 Igor Karyi. All rights reserved.
//

#import "HomePageViewController.h"

@interface HomePageViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (strong, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (strong, nonatomic) IBOutlet UIButton *showParksButton;


@end

@implementation HomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.backgroundImageView.alpha = 0;
    self.descriptionLabel.alpha = 0;
    self.showParksButton.alpha = 0;
    
    [UIView animateWithDuration:0.5 animations:^{
        self.backgroundImageView.alpha = 1;
    } completion:^(BOOL completion) {
        [self animateDescription];
    }];
}


- (void)animateDescription {
    [UIView animateWithDuration:0.5 animations:^{
        self.descriptionLabel.alpha = 1;
    } completion:^(BOOL completion) {
        [self animateButton];
    }];
}

- (void)animateButton {
    [UIView animateWithDuration:0.5 animations:^{
        self.showParksButton.alpha = 1;
    }    ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

//
//  CGMainViewController.m
//  CGStretch
//
//  Created by Chris Galzerano on 6/25/14.
//  Copyright (c) 2014 chrisgalz. All rights reserved.
//

#import "CGMainViewController.h"
#import "CGStretchView.h"

@interface CGMainViewController ()

@end

@implementation CGMainViewController {
    UIView *backgroundView;
    CGStretchView *stretchImageView;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    backgroundView = [[UIView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:backgroundView];
    
    //There are a bunch of different properties that can be set on this.
    stretchImageView = [[CGStretchView alloc] initWithFrame:CGRectMake(60, 60, self.view.frame.size.width-120, self.view.frame.size.width-120)];
    stretchImageView.image = [UIImage imageNamed:@"dogeArt.jpg"];
    stretchImageView.cornerButtonImage = [UIImage imageNamed:@"dogeArt.jpg"];
    stretchImageView.labelText = @"Wow";
    stretchImageView.borderColor = [UIColor greenColor];
    stretchImageView.borderThickness = 5.0f;
    stretchImageView.cornerButtonRadius = 30.0f;
    stretchImageView.delegate = self;
    stretchImageView.cornerButtonOriginallyHidden = YES;
    [self.view addSubview:stretchImageView];
    
    UITapGestureRecognizer *fullViewTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideButton)];
    fullViewTap.delegate = self;
    [backgroundView addGestureRecognizer:fullViewTap];
    
}

- (void)hideButton {
    stretchImageView.cornerButtonHidden = YES;
}

- (void)stretchViewTapped:(CGStretchView *)stretchView {
    stretchImageView.cornerButtonHidden = NO;
}

- (void)cornerButtonPressed:(UIButton *)cornerButton withStretchView:(CGStretchView *)stretchView {
    CGPoint location = CGPointMake(arc4random()%(int)self.view.frame.size.width, arc4random()%(int)self.view.frame.size.height);
    UILabel *wow = [[UILabel alloc] initWithFrame:CGRectMake(location.x, location.y, 100, 20)];
    wow.font = [UIFont systemFontOfSize:18];
    wow.text = @"wow";
    [backgroundView addSubview:wow];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

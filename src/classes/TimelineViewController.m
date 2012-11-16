// Hive Omni Erp
// Copyright (C) 2008-2012 Hive Solutions Lda.
//
// This file is part of Hive Omni Erp.
//
// Hive Omni Erp is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Hive Omni Erp is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Hive Omni Erp. If not, see <http://www.gnu.org/licenses/>.

// __author__    = João Magalhães <joamag@hive.pt>
// __version__   = 1.0.0
// __revision__  = $LastChangedRevision$
// __date__      = $LastChangedDate$
// __copyright__ = Copyright (c) 2008-2012 Hive Solutions Lda.
// __license__   = GNU General Public License (GPL), Version 3

#import "TimelineViewController.h"

@implementation TimelineViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // retrieves the pattern image to be used and sets it in
    // the current view (should be able to change the background)
    UIImage *patternImage = [UIImage imageNamed:@"background.png"];
    self.view.backgroundColor = [UIColor colorWithPatternImage:patternImage];

    [self drawTimeline];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // @TODO: temporary full screen approach
    [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationFade];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    UIImageView *balloon = (UIImageView *) [self.view viewWithTag:2];
    
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    
    balloon.frame = CGRectMake(56, 260, 264, 180);
    
    [UIView commitAnimations];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)drawTimeline {
    UIImageView *image1 = (UIImageView *) [self.view viewWithTag:1];
    
    UIImageView *balloon = (UIImageView *) [self.view viewWithTag:2];
    
    //UIImageView *image2 = (UIImageView *) [self.view viewWithTag:2];
    image1.image = [[UIImage imageNamed:@"dummy_guy_1.png"] roundWithRadius:22];
    //image2.image = [[UIImage imageNamed:@"dummy_guy_2.png"] roundWithRadius:3];
    
    balloon.image = [[UIImage imageNamed:@"balloon.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(46, 20, 24, 241)];
    
    //balloon.frame = CGRectMake(56, 260, 400, 180)
}

@end

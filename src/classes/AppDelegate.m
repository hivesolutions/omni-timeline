// Hive Omni ERP
// Copyright (c) 2008-2017 Hive Solutions Lda.
//
// This file is part of Hive Omni ERP.
//
// Hive Omni ERP is free software: you can redistribute it and/or modify
// it under the terms of the Apache License as published by the Apache
// Foundation, either version 2.0 of the License, or (at your option) any
// later version.
//
// Hive Omni ERP is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// Apache License for more details.
//
// You should have received a copy of the Apache License along with
// Hive Omni ERP. If not, see <http://www.apache.org/licenses/>.

// __author__    = João Magalhães <joamag@hive.pt>
// __version__   = 1.0.0
// __revision__  = $LastChangedRevision$
// __date__      = $LastChangedDate$
// __copyright__ = Copyright (c) 2008-2017 Hive Solutions Lda.
// __license__   = Apache License, Version 2.0

#import "AppDelegate.h"


#import "TimelineViewController.h"


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // initializes the default values in the preferences structure
    // in case they don't already exist (and are defined)
    [self setDefaults];

    // creates a new window object and sets it in the current application
    // (this should be the main window of the application)
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    // creates a new timeline view controller and sets it as the
    // root view controller, then sets the window as visible and
    // as the key window (the main one)
    TimelineViewController *timelineViewController = [[TimelineViewController alloc] initWithNibName:@"TimelineViewControllerA" bundle:nil];
    self.window.rootViewController = timelineViewController;
    [self.window makeKeyAndVisible];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

- (void)setDefaults {
    // retrieves the current preferences structure and tries to
    // retrieve the values that are considered basic, in order
    // to check if theya are already defined
    NSUserDefaults *preferences = [NSUserDefaults standardUserDefaults];
    NSString *baseUrl = [preferences valueForKey:@"baseUrl"];

    // checks various value for the presence of the value and in
    // case it's not defined sets the default value, then flushes
    // the preferences to the secondary storage
    if(baseUrl == nil) { [preferences setValue:@"http://tsilva.hive:8080/dynamic/rest/mvc/omni/"
                                        forKey:@"baseUrl"]; }
    [preferences synchronize];
}

@end

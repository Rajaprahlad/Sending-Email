//
//  ViewController.h
//  Sending Email
//
//  Created by Prahlad on 1/14/17.
//  Copyright © 2017 Prahlad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
@interface ViewController : UIViewController <MFMailComposeViewControllerDelegate, MFMessageComposeViewControllerDelegate>
- (IBAction)ButtonPressed:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *Label;





@end


//
//  ViewController.m
//  Sending Email
//
//  Created by Prahlad on 1/14/17.
//  Copyright © 2017 Prahlad. All rights reserved.
//

#import "ViewController.h"
#import <MessageUI/MessageUI.h>
@interface ViewController ()

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


- (IBAction)ButtonPressed:(id)sender {
    
    
    MFMailComposeViewController *mailComposer = [[MFMailComposeViewController alloc] init];
    [mailComposer setMailComposeDelegate:self];
    
    if
        ([MFMailComposeViewController canSendMail]){
            
        
    [mailComposer setToRecipients:[NSArray arrayWithObjects:@"123@abc.com", nil]];
     
    [mailComposer setSubject:@"This is the Subject"];
    [mailComposer setMessageBody:[NSString stringWithFormat:@"%@",self.Label.text] isHTML:NO];
    [mailComposer setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    [self presentViewController:mailComposer animated:YES completion:NULL];
        }else{
            
        }
}

-(void)mailComposeController:(nonnull MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    [self dismissViewControllerAnimated:YES completion:NULL];
    
    if (error) {
        NSLog(@"%@",[error description]);
    }
}

@end

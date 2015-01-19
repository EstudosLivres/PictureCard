//
//  ViewController.m
//  PictureCard
//
//  Created by Ilton  Garcia on 19/01/15.
//  Copyright (c) 2015 EstudosLivres. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    if(![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Device has no camera" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        [alert show];
    }
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)takePhoto:(id)sender {
    // Instantiate the picker which calls the camera
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    
    // SetUp the picker
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    picker.delegate = self;
    
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
        [picker setSourceType:UIImagePickerControllerSourceTypeCamera];
    
    // Call the imagePickerController
    [self presentModalViewController:picker animated:YES];
}

// CAMERA METHODS IMPLAMENTATION
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    NSLog(@"Image selected!");
    
    NSString *x = @"teste";
    
    
    NSLog([x retornarPadrao]);
    
    
    UIImage *chosenImage = [info objectForKey:UIImagePickerControllerOriginalImage];

    self.img.image = chosenImage;
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    NSLog(@"TakePhoto action CANCELED!");
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

@end

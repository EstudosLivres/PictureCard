//
//  ViewController.h
//  PictureCard
//
//  Created by Ilton  Garcia on 19/01/15.
//  Copyright (c) 2015 EstudosLivres. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface ViewController : UIViewController
<UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *img;

@end


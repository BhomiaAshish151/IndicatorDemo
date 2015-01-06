//
//  TSActivityIndicatorView.m
//  TSActivityIndicatorView-Demo
//
//  Created by Tomasz Szulc on 14.08.2013.
//  Copyright (c) 2013 Tomasz Szulc. All rights reserved.
//

#import "TSActivityIndicatorView.h"

@implementation TSActivityIndicatorView
{
    UIImageView *_internal;
    NSArray *_images;
}


#pragma mark - Initialization
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self configureView];
       
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self configureView];
        
        
        
    }
    return self;
}

- (void)awakeFromNib
{
    if (_framesAsString.length != 0)
    {
        _framesAsString = nil;
        
         _framesAsString = [NSString stringWithFormat:@"activity-indicator-1,activity-indicator-2,activity-indicator-3,activity-indicator-4,activity-indicator-5,activity-indicator-6,activity-indicator-7,activity-indicator-8,activity-indicator-9,activity-indicator-10,activity-indicator-11,activity-indicator-12"];
        
        /// Get frames from string
        _frames = [_framesAsString componentsSeparatedByString:@","];
        [self fillImagesWithFrames];
    }
}


#pragma mark - Configuration
- (void)configureView
{
    self.backgroundColor = [UIColor clearColor];
    _internal = [[UIImageView alloc] initWithFrame:self.bounds];
    _internal.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
    [self addSubview:_internal];
    
    _hidesWhenStopped = YES;
    _duration = 0.5f;
    _repeatCount = -1;
    
    [self setHidden:_hidesWhenStopped];
}

- (void)fillImagesWithFrames
{
    NSMutableArray *imagesArray = [NSMutableArray new];
    for (NSString *imageName in _frames) {
        [imagesArray addObject:[UIImage imageNamed:imageName]];
    }

    _images = (NSArray *)imagesArray;
    NSLog(@"Image array : %d",[_images count]);
}

- (void)configureInternalView
{
    NSMutableArray *imagesArray = [NSMutableArray new];
    for (NSString *imageName in _frames) {
        [imagesArray addObject:[UIImage imageNamed:imageName]];
    }

    if (_images.count)
    {
    _internal.image = _images[0];
    _internal.animationImages = _images;
    _internal.animationDuration = _duration;
    _internal.animationRepeatCount = _repeatCount;
    }
}


#pragma mark - Externals
- (void)startAnimating
{
    /// Re-configure - somebody may assign new frames
    [self fillImagesWithFrames];
    [self configureInternalView];
    
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        if (!_internal.isAnimating)
            [_internal startAnimating];
        
        [self setHidden:NO];
    }];
}

- (void)stopAnimating
{
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        
        [_internal stopAnimating];
        if (_hidesWhenStopped)
            [self setHidden:YES];
    }];
}

#pragma mark - Accessors

- (BOOL)isAnimating
{
    return _internal.isAnimating;
}

@end

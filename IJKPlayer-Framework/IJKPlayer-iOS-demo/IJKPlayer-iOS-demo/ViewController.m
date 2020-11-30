//
//  ViewController.m
//  IJKPlayer-iOS-demo
//
//  Created by deng on 2020/11/30.
//

#import "ViewController.h"
#import <IJKMediaFramework/IJKMediaFramework.h>


@interface ViewController ()
@property(nonatomic, retain)id<IJKMediaPlayback>play;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *starUrl = [NSURL URLWithString:@"http://liveme.oclive.linkv.fun/yolo/16067184252882743492.flv"];

    _play = [[IJKFFMoviePlayerController alloc] initWithContentURL:starUrl withOptions:nil];
    [self setupMadieView];
    //准备播放
     [_play prepareToPlay];
    
         //开始播放
    [_play play];
    // Do any additional setup after loading the view.
}
- (void)setupMadieView {

     //通过代理对象view返回一个MadieView
     UIView *MadieView = [_play view];

     //横竖屏适配
     MadieView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

     MadieView.frame = self.view.frame;

     [self.view addSubview:MadieView];
 }


@end

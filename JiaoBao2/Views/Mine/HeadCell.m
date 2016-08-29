//
//  HeadCell.m
//  DouYU
//
//  Created by songyanming on 16/8/26.
//  Copyright © 2016年 Alesary. All rights reserved.
//

#import "HeadCell.h"

@implementation HeadCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.liveBtn.layer.cornerRadius = 10;
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

//
//  BYBBaseTableViewCell.m
//  BYBStore
//
//  Created by 晓梦影 on 2017/9/23.
//  Copyright © 2017年 BYBStore. All rights reserved.
//

#import "BYBBaseTableViewCell.h"

@implementation BYBBaseTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self setup];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setup];
    
}

- (void)setup{
    
    if ([self respondsToSelector:@selector(separatorInset)]) {
        
        self.separatorInset = UIEdgeInsetsZero;
    }
    if ([self respondsToSelector:@selector(layoutMargins)]) {
        
        self.layoutMargins = UIEdgeInsetsZero;
    }
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}


+ (instancetype)cellForTableView:(UITableView *)tableView{
    Class cellClass = NSClassFromString(NSStringFromClass(self));
    id cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(self)];
    if (cell == nil) {
        cell = [[cellClass alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:NSStringFromClass(self)];
    }
    return cell;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
}

@end

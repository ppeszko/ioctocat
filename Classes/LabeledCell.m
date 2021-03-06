#import "LabeledCell.h"


@implementation LabeledCell

@synthesize hasContent;

- (void)dealloc {
	[label release];
	[content release];
    [super dealloc];
}

- (void)setLabelText:(NSString *)text {
	label.text = text;
}

- (void)setContentText:(NSString *)text {
	hasContent = (text != nil && ![text isEqualToString:@""]);
	content.text = hasContent ? text : @"n/a";
	content.textColor = hasContent ? [UIColor blackColor] : [UIColor grayColor];
	content.highlightedTextColor = [UIColor whiteColor];
}

@end

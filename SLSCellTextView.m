//
//  SLSCellTextView.m
//  Molecules
//
//  The source code for Molecules is available under a BSD license.  See License.txt for details.
//
//  Created by Brad Larson on 6/30/2008.
//
//	This class is based on Apple's example from the Recipes sample application, with only minor modifications

#import "SLSCellTextView.h"


// cell identifier for this custom cell
NSString* kSLSCellTextView_ID = @"SLSCellTextViewID";

@implementation SLSCellTextView

@synthesize view;

- (id)initWithFrame:(CGRect)aRect reuseIdentifier:(NSString *)identifier
{
	self = [super initWithFrame:aRect reuseIdentifier:identifier];
	if (self)
	{
		// turn off selection use
		self.selectionStyle = UITableViewCellSelectionStyleNone;
	}
	return self;
}

- (void)setView:(UITextView *)inView
{
	view = inView;
	[self.view retain];
	[self.contentView addSubview:inView];
	[self layoutSubviews];
}

- (void)layoutSubviews
{
	[super layoutSubviews];
	
	CGRect contentRect = [self.contentView bounds];
	
	// inset the text view within the cell
	self.view.frame  = CGRectMake(	contentRect.origin.x + 8.0,
									contentRect.origin.y + 8.0,
									contentRect.size.width - 16.0,
									contentRect.size.height - 16.0);
}

- (void)dealloc
{
    [view release];
    [super dealloc];
}

@end
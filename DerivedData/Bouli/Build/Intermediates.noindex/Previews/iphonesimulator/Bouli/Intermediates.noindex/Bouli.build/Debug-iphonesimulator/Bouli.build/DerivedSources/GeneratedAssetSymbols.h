#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The "home1" asset catalog image resource.
static NSString * const ACImageNameHome1 AC_SWIFT_PRIVATE = @"home1";

/// The "home2" asset catalog image resource.
static NSString * const ACImageNameHome2 AC_SWIFT_PRIVATE = @"home2";

/// The "home3" asset catalog image resource.
static NSString * const ACImageNameHome3 AC_SWIFT_PRIVATE = @"home3";

#undef AC_SWIFT_PRIVATE

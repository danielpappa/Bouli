#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The "CFConfezione" asset catalog image resource.
static NSString * const ACImageNameCFConfezione AC_SWIFT_PRIVATE = @"CFConfezione";

/// The "CFConsegna" asset catalog image resource.
static NSString * const ACImageNameCFConsegna AC_SWIFT_PRIVATE = @"CFConsegna";

/// The "CFContattaci" asset catalog image resource.
static NSString * const ACImageNameCFContattaci AC_SWIFT_PRIVATE = @"CFContattaci";

/// The "CFScegliere" asset catalog image resource.
static NSString * const ACImageNameCFScegliere AC_SWIFT_PRIVATE = @"CFScegliere";

/// The "home1" asset catalog image resource.
static NSString * const ACImageNameHome1 AC_SWIFT_PRIVATE = @"home1";

/// The "home2" asset catalog image resource.
static NSString * const ACImageNameHome2 AC_SWIFT_PRIVATE = @"home2";

/// The "home3" asset catalog image resource.
static NSString * const ACImageNameHome3 AC_SWIFT_PRIVATE = @"home3";

/// The "pickup" asset catalog image resource.
static NSString * const ACImageNamePickup AC_SWIFT_PRIVATE = @"pickup";

#undef AC_SWIFT_PRIVATE

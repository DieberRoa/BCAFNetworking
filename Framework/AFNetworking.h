// AFNetworking.h
// Copyright (c) 2011–2016 Alamofire Software Foundation ( http://alamofire.org/ )
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import <Foundation/Foundation.h>

//! Project version number for AFNetworking.
FOUNDATION_EXPORT double AFNetworkingVersionNumber;

//! Project version string for AFNetworking.
FOUNDATION_EXPORT const unsigned char AFNetworkingVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <AFNetworking/PublicHeader.h>

#import <Availability.h>
#import <TargetConditionals.h>

#ifndef _AFNETWORKING_
#define _AFNETWORKING_

#import <BCAFNetworking/AFURLRequestSerialization.h>
#import <BCAFNetworking/AFURLResponseSerialization.h>
#import <BCAFNetworking/AFSecurityPolicy.h>
#import <BCAFNetworking/AFCompatibilityMacros.h>

#if !TARGET_OS_WATCH
#import <BCAFNetworking/AFNetworkReachabilityManager.h>
#endif

#import <BCAFNetworking/AFURLSessionManager.h>
#import <BCAFNetworking/AFHTTPSessionManager.h>

#if TARGET_OS_IOS || TARGET_OS_TV
#import <BCAFNetworking/AFAutoPurgingImageCache.h>
#import <BCAFNetworking/AFImageDownloader.h>
#import <BCAFNetworking/UIActivityIndicatorView+BCAFNetworking.h>
#import <BCAFNetworking/UIButton+BCAFNetworking.h>
#import <BCAFNetworking/UIImage+BCAFNetworking.h>
#import <BCAFNetworking/UIImageView+BCAFNetworking.h>
#import <BCAFNetworking/UIProgressView+BCAFNetworking.h>
#endif

#if TARGET_OS_IOS
#import <BCAFNetworking/AFNetworkActivityIndicatorManager.h>
#import <BCAFNetworking/UIRefreshControl+BCAFNetworking.h>
#import <BCAFNetworking/UIWebView+BCAFNetworking.h>
#endif


#endif /* _AFNETWORKING_ */

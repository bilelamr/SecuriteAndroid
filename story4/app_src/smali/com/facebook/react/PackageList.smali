.class public Lcom/facebook/react/PackageList;
.super Ljava/lang/Object;
.source "PackageList.java"


# direct methods
.method public constructor <init>(Lcom/facebook/react/ReactNativeHost;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackages()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x15

    new-array v1, v1, [Lcom/facebook/react/ReactPackage;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage;

    invoke-direct {v2}, Lcom/facebook/react/shell/MainReactPackage;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/reactnativecommunity/netinfo/NetInfoPackage;

    invoke-direct {v2}, Lcom/reactnativecommunity/netinfo/NetInfoPackage;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lio/invertase/firebase/analytics/ReactNativeFirebaseAnalyticsPackage;

    invoke-direct {v2}, Lio/invertase/firebase/analytics/ReactNativeFirebaseAnalyticsPackage;-><init>()V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lio/invertase/firebase/app/ReactNativeFirebaseAppPackage;

    invoke-direct {v2}, Lio/invertase/firebase/app/ReactNativeFirebaseAppPackage;-><init>()V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lio/invertase/firebase/crashlytics/ReactNativeFirebaseCrashlyticsPackage;

    invoke-direct {v2}, Lio/invertase/firebase/crashlytics/ReactNativeFirebaseCrashlyticsPackage;-><init>()V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lcom/airbnb/android/react/lottie/LottiePackage;

    invoke-direct {v2}, Lcom/airbnb/android/react/lottie/LottiePackage;-><init>()V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lcom/pushwoosh/reactnativeplugin/PushwooshPackage;

    invoke-direct {v2}, Lcom/pushwoosh/reactnativeplugin/PushwooshPackage;-><init>()V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lcom/krazylabs/OpenAppSettingsPackage;

    invoke-direct {v2}, Lcom/krazylabs/OpenAppSettingsPackage;-><init>()V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lcom/lugg/ReactNativeConfig/ReactNativeConfigPackage;

    invoke-direct {v2}, Lcom/lugg/ReactNativeConfig/ReactNativeConfigPackage;-><init>()V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lcom/rt2zz/reactnativecontacts/ReactNativeContacts;

    invoke-direct {v2}, Lcom/rt2zz/reactnativecontacts/ReactNativeContacts;-><init>()V

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Lcom/learnium/RNDeviceInfo/RNDeviceInfo;

    invoke-direct {v2}, Lcom/learnium/RNDeviceInfo/RNDeviceInfo;-><init>()V

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerPackage;

    invoke-direct {v2}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerPackage;-><init>()V

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Lcom/swmansion/gesturehandler/react/RNGestureHandlerPackage;

    invoke-direct {v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerPackage;-><init>()V

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-instance v2, Lcom/oblador/keychain/KeychainPackage;

    invoke-direct {v2}, Lcom/oblador/keychain/KeychainPackage;-><init>()V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-instance v2, Lcom/reactcommunity/rnlanguages/RNLanguagesPackage;

    invoke-direct {v2}, Lcom/reactcommunity/rnlanguages/RNLanguagesPackage;-><init>()V

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-instance v2, Lcom/swmansion/rnscreens/RNScreensPackage;

    invoke-direct {v2}, Lcom/swmansion/rnscreens/RNScreensPackage;-><init>()V

    const/16 v3, 0xf

    aput-object v2, v1, v3

    new-instance v2, Lcl/json/RNSharePackage;

    invoke-direct {v2}, Lcl/json/RNSharePackage;-><init>()V

    const/16 v3, 0x10

    aput-object v2, v1, v3

    new-instance v2, Lorg/devio/rn/splashscreen/SplashScreenReactPackage;

    invoke-direct {v2}, Lorg/devio/rn/splashscreen/SplashScreenReactPackage;-><init>()V

    const/16 v3, 0x11

    aput-object v2, v1, v3

    new-instance v2, Lcom/horcrux/svg/SvgPackage;

    invoke-direct {v2}, Lcom/horcrux/svg/SvgPackage;-><init>()V

    const/16 v3, 0x12

    aput-object v2, v1, v3

    new-instance v2, Lcom/oblador/vectoricons/VectorIconsPackage;

    invoke-direct {v2}, Lcom/oblador/vectoricons/VectorIconsPackage;-><init>()V

    const/16 v3, 0x13

    aput-object v2, v1, v3

    new-instance v2, Lcom/RNFetchBlob/RNFetchBlobPackage;

    invoke-direct {v2}, Lcom/RNFetchBlob/RNFetchBlobPackage;-><init>()V

    const/16 v3, 0x14

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

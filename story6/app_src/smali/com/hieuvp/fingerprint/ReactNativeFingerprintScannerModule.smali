.class public Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "ReactNativeFingerprintScannerModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "ReactNativeFingerprintScanner"
.end annotation


# static fields
.field public static final MAX_AVAILABLE_TIMES:I = 0x7fffffff

.field public static final TYPE_FINGERPRINT:Ljava/lang/String; = "Fingerprint"


# instance fields
.field private mFingerprintIdentify:Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

.field private final mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 25
    iput-object p1, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method static synthetic access$000(Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object p0
.end method

.method private getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->getFingerprintIdentify()Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->isHardwareEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FingerprintScannerNotSupported"

    return-object v0

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->getFingerprintIdentify()Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->isRegisteredFingerprint()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FingerprintScannerNotEnrolled"

    return-object v0

    .line 71
    :cond_1
    invoke-direct {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->getFingerprintIdentify()Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->isFingerprintEnable()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "FingerprintScannerNotAvailable"

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFingerprintIdentify()Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mFingerprintIdentify:Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    if-eqz v0, :cond_0

    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 51
    new-instance v0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mFingerprintIdentify:Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    .line 52
    iget-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mFingerprintIdentify:Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->setSupportAndroidL(Z)V

    .line 53
    iget-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mFingerprintIdentify:Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    new-instance v1, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$1;

    invoke-direct {v1, p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$1;-><init>(Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;)V

    invoke-virtual {v0, v1}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->setExceptionListener(Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;)V

    .line 62
    iget-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mFingerprintIdentify:Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->init()V

    .line 63
    iget-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mFingerprintIdentify:Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    return-object v0
.end method


# virtual methods
.method public authenticate(Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Fingerprint"

    .line 81
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->release()V

    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->getFingerprintIdentify()Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->resumeIdentify()V

    .line 87
    invoke-direct {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->getFingerprintIdentify()Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    move-result-object v0

    const v1, 0x7fffffff

    new-instance v2, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$2;

    invoke-direct {v2, p0, p1}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$2;-><init>(Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v1, v2}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->startIdentify(ILcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ReactNativeFingerprintScanner"

    return-object v0
.end method

.method public isSensorAvailable(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 127
    invoke-direct {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fingerprint"

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->release()V

    return-void
.end method

.method public onHostPause()V
    .locals 0

    return-void
.end method

.method public onHostResume()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 120
    invoke-direct {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->getFingerprintIdentify()Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->cancelIdentify()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mFingerprintIdentify:Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    .line 122
    iget-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method

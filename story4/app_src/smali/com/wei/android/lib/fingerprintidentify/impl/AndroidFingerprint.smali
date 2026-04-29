.class public Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;
.super Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;
.source "AndroidFingerprint.java"


# instance fields
.field private mCancellationSignal:Landroidx/core/os/CancellationSignal;

.field private mFingerprintManagerCompat:Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;-><init>(Landroid/content/Context;Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;)V

    if-nez p3, :cond_0

    .line 44
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-ge p1, p2, :cond_0

    return-void

    .line 50
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat;->from(Landroid/content/Context;)Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;->mFingerprintManagerCompat:Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat;

    .line 51
    iget-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;->mFingerprintManagerCompat:Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat;

    invoke-virtual {p1}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->setHardwareEnable(Z)V

    .line 52
    iget-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;->mFingerprintManagerCompat:Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat;

    invoke-virtual {p1}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->setRegisteredFingerprint(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onCatchException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onSucceed()V

    return-void
.end method

.method static synthetic access$100(Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onNotMatch()V

    return-void
.end method

.method static synthetic access$200(Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;Z)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onFailed(Z)V

    return-void
.end method


# virtual methods
.method protected doCancelIdentify()V
    .locals 1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    invoke-virtual {v0}, Landroidx/core/os/CancellationSignal;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 101
    invoke-virtual {p0, v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onCatchException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected doIdentify()V
    .locals 7

    .line 61
    :try_start_0
    new-instance v0, Landroidx/core/os/CancellationSignal;

    invoke-direct {v0}, Landroidx/core/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    .line 62
    iget-object v1, p0, Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;->mFingerprintManagerCompat:Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    new-instance v5, Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint$1;

    invoke-direct {v5, p0}, Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint$1;-><init>(Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;)V

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat;->authenticate(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$CryptoObject;ILandroidx/core/os/CancellationSignal;Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 89
    invoke-virtual {p0, v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onCatchException(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onFailed(Z)V

    :goto_0
    return-void
.end method

.method protected needToCallDoIdentifyAgainAfterNotMatch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

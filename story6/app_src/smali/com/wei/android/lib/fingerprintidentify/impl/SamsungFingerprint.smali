.class public Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;
.super Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;
.source "SamsungFingerprint.java"


# instance fields
.field private mResultCode:I

.field private mSpassFingerprint:Lcom/samsung/android/sdk/pass/SpassFingerprint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;-><init>(Landroid/content/Context;Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;)V

    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;->mResultCode:I

    .line 42
    :try_start_0
    new-instance p1, Lcom/samsung/android/sdk/pass/Spass;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pass/Spass;-><init>()V

    .line 43
    iget-object p2, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pass/Spass;->initialize(Landroid/content/Context;)V

    .line 44
    new-instance p2, Lcom/samsung/android/sdk/pass/SpassFingerprint;

    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;->mSpassFingerprint:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    const/4 p2, 0x0

    .line 45
    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pass/Spass;->isFeatureEnabled(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->setHardwareEnable(Z)V

    .line 46
    iget-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;->mSpassFingerprint:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->hasRegisteredFinger()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->setRegisteredFingerprint(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 48
    invoke-virtual {p0, p1}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onCatchException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;->mResultCode:I

    return p0
.end method

.method static synthetic access$002(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;->mResultCode:I

    return p1
.end method

.method static synthetic access$100(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;)V
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onSucceed()V

    return-void
.end method

.method static synthetic access$1000(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;Ljava/lang/Throwable;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onCatchException(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;)V
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onNotMatch()V

    return-void
.end method

.method static synthetic access$300(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;Z)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onFailed(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;)Lcom/samsung/android/sdk/pass/SpassFingerprint;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;->mSpassFingerprint:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    return-object p0
.end method

.method static synthetic access$500(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;Z)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onFailed(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;Ljava/lang/Throwable;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onCatchException(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;Z)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onFailed(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;Ljava/lang/Throwable;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onCatchException(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;Z)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onFailed(Z)V

    return-void
.end method


# virtual methods
.method protected doCancelIdentify()V
    .locals 1

    .line 122
    new-instance v0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$2;

    invoke-direct {v0, p0}, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$2;-><init>(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;)V

    invoke-virtual {p0, v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected doIdentify()V
    .locals 1

    .line 54
    new-instance v0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;

    invoke-direct {v0, p0}, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;-><init>(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;)V

    invoke-virtual {p0, v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

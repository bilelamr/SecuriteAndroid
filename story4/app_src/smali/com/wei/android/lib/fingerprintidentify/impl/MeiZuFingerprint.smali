.class public Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;
.super Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;
.source "MeiZuFingerprint.java"


# instance fields
.field private mMeiZuFingerprintManager:Lcom/fingerprints/service/FingerprintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;-><init>(Landroid/content/Context;Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;)V

    .line 41
    :try_start_0
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->open()Lcom/fingerprints/service/FingerprintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;->mMeiZuFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    .line 42
    iget-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;->mMeiZuFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-eqz p1, :cond_1

    .line 43
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;->isMeiZuDevice(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->setHardwareEnable(Z)V

    .line 44
    iget-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;->mMeiZuFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {p1}, Lcom/fingerprints/service/FingerprintManager;->getIds()[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 45
    array-length p1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->setRegisteredFingerprint(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 48
    invoke-virtual {p0, p1}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onCatchException(Ljava/lang/Throwable;)V

    .line 51
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;->releaseMBack()V

    return-void
.end method

.method static synthetic access$000(Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;)V
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onSucceed()V

    return-void
.end method

.method static synthetic access$100(Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;)V
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onNotMatch()V

    return-void
.end method

.method private isMeiZuDevice(Ljava/lang/String;)Z
    .locals 1

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MEIZU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private releaseMBack()V
    .locals 1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;->mMeiZuFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;->mMeiZuFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/fingerprints/service/FingerprintManager;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onCatchException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected doCancelIdentify()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;->releaseMBack()V

    return-void
.end method

.method protected doIdentify()V
    .locals 3

    .line 57
    :try_start_0
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->open()Lcom/fingerprints/service/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;->mMeiZuFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    .line 58
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;->mMeiZuFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    new-instance v1, Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint$1;

    invoke-direct {v1, p0}, Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint$1;-><init>(Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;)V

    iget-object v2, p0, Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;->mMeiZuFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    .line 68
    invoke-virtual {v2}, Lcom/fingerprints/service/FingerprintManager;->getIds()[I

    move-result-object v2

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/fingerprints/service/FingerprintManager;->startIdentify(Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 70
    invoke-virtual {p0, v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onCatchException(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onFailed(Z)V

    :goto_0
    return-void
.end method

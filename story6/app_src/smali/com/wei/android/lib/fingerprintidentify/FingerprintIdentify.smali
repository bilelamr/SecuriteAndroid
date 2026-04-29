.class public Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;
.super Ljava/lang/Object;
.source "FingerprintIdentify.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mExceptionListener:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;

.field protected mFingerprint:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;

.field protected mIsSupportAndroidL:Z

.field protected mSubFingerprint:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->mIsSupportAndroidL:Z

    .line 44
    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public cancelIdentify()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->mFingerprint:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->cancelIdentify()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 4

    .line 56
    new-instance v0, Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;

    iget-object v1, p0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->mExceptionListener:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;

    iget-boolean v3, p0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->mIsSupportAndroidL:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;-><init>(Landroid/content/Context;Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;Z)V

    .line 57
    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->isHardwareEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iput-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->mSubFingerprint:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;

    .line 59
    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->isRegisteredFingerprint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iput-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->mFingerprint:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;

    return-void

    .line 65
    :cond_0
    new-instance v0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;

    iget-object v1, p0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->mExceptionListener:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;

    invoke-direct {v0, v1, v2}, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;-><init>(Landroid/content/Context;Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;)V

    .line 66
    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->isHardwareEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    iput-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->mSubFingerprint:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;

    .line 68
    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->isRegisteredFingerprint()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    iput-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->mFingerprint:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;

    return-void

    .line 74
    :cond_1
    new-instance v0, Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;

    iget-object v1, p0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->mExceptionListener:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;

    invoke-direct {v0, v1, v2}, Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;-><init>(Landroid/content/Context;Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;)V

    .line 75
    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->isHardwareEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    iput-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->mSubFingerprint:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;

    .line 77
    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->isRegisteredFingerprint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    iput-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->mFingerprint:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;

    :cond_2
    return-void
.end method

.method public isFingerprintEnable()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->mFingerprint:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHardwareEnable()Z
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->isFingerprintEnable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->mSubFingerprint:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->isHardwareEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isRegisteredFingerprint()Z
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->isFingerprintEnable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->mSubFingerprint:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->isRegisteredFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public resumeIdentify()V
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->isFingerprintEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->mFingerprint:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;

    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->resumeIdentify()V

    return-void
.end method

.method public setExceptionListener(Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->mExceptionListener:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;

    return-void
.end method

.method public setSupportAndroidL(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->mIsSupportAndroidL:Z

    return-void
.end method

.method public startIdentify(ILcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;)V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->isFingerprintEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->mFingerprint:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;

    invoke-virtual {v0, p1, p2}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->startIdentify(ILcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;)V

    return-void
.end method

.class public abstract Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;
.super Ljava/lang/Object;
.source "BaseFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;,
        Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mExceptionListener:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;

.field private mHandler:Landroid/os/Handler;

.field private mIdentifyListener:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;

.field private mIsCalledStartIdentify:Z

.field private mIsCanceledIdentify:Z

.field private mIsHardwareEnable:Z

.field private mIsRegisteredFingerprint:Z

.field private mMaxAvailableTimes:I

.field private mNumberOfFailures:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mNumberOfFailures:I

    const/4 v1, 0x3

    .line 39
    iput v1, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mMaxAvailableTimes:I

    .line 41
    iput-boolean v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIsHardwareEnable:Z

    .line 42
    iput-boolean v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIsRegisteredFingerprint:Z

    .line 44
    iput-boolean v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIsCalledStartIdentify:Z

    .line 45
    iput-boolean v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIsCanceledIdentify:Z

    .line 48
    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mExceptionListener:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;

    .line 50
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;)Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIdentifyListener:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;

    return-object p0
.end method


# virtual methods
.method public cancelIdentify()V
    .locals 1

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIsCanceledIdentify:Z

    .line 73
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->doCancelIdentify()V

    return-void
.end method

.method protected abstract doCancelIdentify()V
.end method

.method protected abstract doIdentify()V
.end method

.method public isEnable()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIsHardwareEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIsRegisteredFingerprint:Z

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

    .line 164
    iget-boolean v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIsHardwareEnable:Z

    return v0
.end method

.method public isRegisteredFingerprint()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIsRegisteredFingerprint:Z

    return v0
.end method

.method protected needToCallDoIdentifyAgainAfterNotMatch()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCatchException(Ljava/lang/Throwable;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mExceptionListener:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 154
    invoke-interface {v0, p1}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;->onCatchException(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected onFailed(Z)V
    .locals 2

    .line 128
    iget-boolean v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIsCanceledIdentify:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 132
    iget v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mNumberOfFailures:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 134
    :goto_0
    iget v1, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mMaxAvailableTimes:I

    iput v1, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mNumberOfFailures:I

    .line 136
    iget-object v1, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIdentifyListener:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;

    if-eqz v1, :cond_2

    .line 137
    new-instance v1, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$3;-><init>(Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;ZZ)V

    invoke-virtual {p0, v1}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 149
    :cond_2
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->cancelIdentify()V

    return-void
.end method

.method protected onNotMatch()V
    .locals 2

    .line 102
    iget-boolean v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIsCanceledIdentify:Z

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mNumberOfFailures:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mNumberOfFailures:I

    iget v1, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mMaxAvailableTimes:I

    if-ge v0, v1, :cond_3

    .line 107
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIdentifyListener:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;

    if-eqz v0, :cond_1

    .line 108
    iget v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mNumberOfFailures:I

    sub-int/2addr v1, v0

    .line 109
    new-instance v0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$2;

    invoke-direct {v0, p0, v1}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$2;-><init>(Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;I)V

    invoke-virtual {p0, v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->needToCallDoIdentifyAgainAfterNotMatch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->doIdentify()V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onFailed(Z)V

    return-void
.end method

.method protected onSucceed()V
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIsCanceledIdentify:Z

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    iget v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mMaxAvailableTimes:I

    iput v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mNumberOfFailures:I

    .line 89
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIdentifyListener:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$1;

    invoke-direct {v0, p0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$1;-><init>(Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;)V

    invoke-virtual {p0, v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->cancelIdentify()V

    return-void
.end method

.method public resumeIdentify()V
    .locals 2

    .line 65
    iget-boolean v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIsCalledStartIdentify:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIdentifyListener:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mNumberOfFailures:I

    iget v1, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mMaxAvailableTimes:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIsCanceledIdentify:Z

    .line 67
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->doIdentify()V

    :cond_0
    return-void
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected setHardwareEnable(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIsHardwareEnable:Z

    return-void
.end method

.method protected setRegisteredFingerprint(Z)V
    .locals 0

    .line 176
    iput-boolean p1, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIsRegisteredFingerprint:Z

    return-void
.end method

.method public startIdentify(ILcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mMaxAvailableTimes:I

    .line 56
    iput-object p2, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIdentifyListener:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIsCalledStartIdentify:Z

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mIsCanceledIdentify:Z

    .line 59
    iput p1, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->mNumberOfFailures:I

    .line 61
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->doIdentify()V

    return-void
.end method

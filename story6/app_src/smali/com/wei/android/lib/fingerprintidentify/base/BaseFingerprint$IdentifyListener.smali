.class public interface abstract Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;
.super Ljava/lang/Object;
.source "BaseFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IdentifyListener"
.end annotation


# virtual methods
.method public abstract onFailed(Z)V
.end method

.method public abstract onNotMatch(I)V
.end method

.method public abstract onStartFailedByDeviceLocked()V
.end method

.method public abstract onSucceed()V
.end method

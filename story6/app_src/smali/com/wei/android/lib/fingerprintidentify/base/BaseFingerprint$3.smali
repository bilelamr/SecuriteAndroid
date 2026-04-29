.class Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$3;
.super Ljava/lang/Object;
.source "BaseFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onFailed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;

.field final synthetic val$isDeviceLocked:Z

.field final synthetic val$isStartFailedByDeviceLocked:Z


# direct methods
.method constructor <init>(Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;ZZ)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$3;->this$0:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;

    iput-boolean p2, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$3;->val$isStartFailedByDeviceLocked:Z

    iput-boolean p3, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$3;->val$isDeviceLocked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 140
    iget-boolean v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$3;->val$isStartFailedByDeviceLocked:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$3;->this$0:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;

    invoke-static {v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->access$000(Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;)Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;->onStartFailedByDeviceLocked()V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$3;->this$0:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;

    invoke-static {v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->access$000(Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;)Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$3;->val$isDeviceLocked:Z

    invoke-interface {v0, v1}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;->onFailed(Z)V

    :goto_0
    return-void
.end method

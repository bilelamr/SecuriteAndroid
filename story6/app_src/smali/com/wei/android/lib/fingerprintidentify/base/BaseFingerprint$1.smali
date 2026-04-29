.class Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$1;
.super Ljava/lang/Object;
.source "BaseFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onSucceed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;


# direct methods
.method constructor <init>(Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$1;->this$0:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$1;->this$0:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;

    invoke-static {v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->access$000(Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;)Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;->onSucceed()V

    return-void
.end method

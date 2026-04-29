.class Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$2;
.super Ljava/lang/Object;
.source "BaseFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->onNotMatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;

.field final synthetic val$chancesLeft:I


# direct methods
.method constructor <init>(Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;I)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$2;->this$0:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;

    iput p2, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$2;->val$chancesLeft:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$2;->this$0:Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;

    invoke-static {v0}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;->access$000(Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint;)Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;

    move-result-object v0

    iget v1, p0, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$2;->val$chancesLeft:I

    invoke-interface {v0, v1}, Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;->onNotMatch(I)V

    return-void
.end method

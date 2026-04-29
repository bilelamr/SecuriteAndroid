.class Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1$1;
.super Ljava/lang/Object;
.source "SamsungFingerprint.java"

# interfaces
.implements Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;


# direct methods
.method constructor <init>(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1$1;->this$1:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1$1;->this$1:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;

    iget-object v0, v0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;->this$0:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;

    invoke-static {v0}, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;->access$000(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x33

    if-eq v0, v1, :cond_0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1$1;->this$1:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;

    iget-object v0, v0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;->this$0:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;->access$300(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;Z)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1$1;->this$1:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;

    iget-object v0, v0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;->this$0:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;

    invoke-static {v0}, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;->access$200(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1$1;->this$1:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;

    iget-object v0, v0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;->this$0:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;

    invoke-static {v0}, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;->access$100(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFinished(I)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1$1;->this$1:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;

    iget-object v0, v0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;->this$0:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;

    invoke-static {v0, p1}, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;->access$002(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;I)I

    return-void
.end method

.method public onReady()V
    .locals 0

    return-void
.end method

.method public onStarted()V
    .locals 0

    return-void
.end method

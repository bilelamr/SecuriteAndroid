.class Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$2;
.super Ljava/lang/Object;
.source "SamsungFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;->doCancelIdentify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;


# direct methods
.method constructor <init>(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$2;->this$0:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$2;->this$0:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;

    invoke-static {v0}, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;->access$400(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$2;->this$0:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;

    invoke-static {v0}, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;->access$400(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->cancelIdentify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 130
    iget-object v1, p0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$2;->this$0:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;

    invoke-static {v1, v0}, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;->access$1000(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

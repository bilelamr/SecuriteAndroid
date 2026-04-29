.class Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;
.super Ljava/lang/Object;
.source "SamsungFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;->doIdentify()V
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

    .line 54
    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;->this$0:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;->this$0:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;

    invoke-static {v0}, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;->access$400(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    new-instance v1, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1$1;

    invoke-direct {v1, p0}, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1$1;-><init>(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->startIdentify(Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 103
    instance-of v1, v0, Lcom/samsung/android/sdk/pass/SpassInvalidStateException;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 104
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sdk/pass/SpassInvalidStateException;

    .line 105
    invoke-virtual {v1}, Lcom/samsung/android/sdk/pass/SpassInvalidStateException;->getType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 106
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;->this$0:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;

    invoke-static {v0, v3}, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;->access$500(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;Z)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;->this$0:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;

    invoke-static {v1, v0}, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;->access$600(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;Ljava/lang/Throwable;)V

    .line 109
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;->this$0:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;

    invoke-static {v0, v2}, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;->access$700(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;Z)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;->this$0:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;

    invoke-static {v1, v0}, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;->access$800(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;Ljava/lang/Throwable;)V

    .line 113
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint$1;->this$0:Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;

    invoke-static {v0, v2}, Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;->access$900(Lcom/wei/android/lib/fingerprintidentify/impl/SamsungFingerprint;Z)V

    :goto_0
    return-void
.end method

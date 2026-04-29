.class public Lcom/pushwoosh/internal/crash/LogSender;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/internal/crash/LogSender$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static submitCustomError(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/internal/crash/LogSender$1;

    invoke-direct {v1}, Lcom/pushwoosh/internal/crash/LogSender$1;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/pushwoosh/internal/crash/g;->a(Ljava/lang/Throwable;Ljava/lang/Thread;Lcom/pushwoosh/internal/crash/f;)V

    return-void
.end method

.method public static submitCustomLog(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/pushwoosh/internal/crash/LogSender$a;

    invoke-direct {v0, p0}, Lcom/pushwoosh/internal/crash/LogSender$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pushwoosh/internal/crash/LogSender;->submitCustomError(Ljava/lang/Throwable;)V

    return-void
.end method

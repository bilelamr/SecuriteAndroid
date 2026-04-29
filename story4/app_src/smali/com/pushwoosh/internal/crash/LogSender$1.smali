.class final Lcom/pushwoosh/internal/crash/LogSender$1;
.super Lcom/pushwoosh/internal/crash/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/internal/crash/LogSender;->submitCustomError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/internal/crash/f;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "custom_log"

    return-object v0
.end method

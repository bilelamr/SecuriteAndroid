.class public Lcom/pushwoosh/internal/command/CommandApplayer;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "Command"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyCommand(Lcom/pushwoosh/internal/command/CommandType;Lcom/pushwoosh/internal/command/CommandParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pushwoosh/internal/command/CommandType;",
            "Lcom/pushwoosh/internal/command/CommandParams<",
            "TT;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lcom/pushwoosh/internal/command/CommandType;->getType()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x69db0c8e

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "pushStat"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/pushwoosh/internal/command/b;

    invoke-direct {p1}, Lcom/pushwoosh/internal/command/b;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-interface {p1, p2}, Lcom/pushwoosh/internal/command/a;->a(Lcom/pushwoosh/internal/command/CommandParams;)V

    return-void

    :catch_0
    const-string p1, "Command"

    const-string p2, "Can\'t cast command"

    invoke-static {p1, p2}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

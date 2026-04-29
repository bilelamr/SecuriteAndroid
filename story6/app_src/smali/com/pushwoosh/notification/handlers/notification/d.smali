.class public Lcom/pushwoosh/notification/handlers/notification/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/notification/handlers/notification/PushNotificationOpenHandler;


# instance fields
.field private a:Lcom/pushwoosh/internal/command/CommandApplayer;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/internal/command/CommandApplayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/notification/handlers/notification/d;->a:Lcom/pushwoosh/internal/command/CommandApplayer;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    const-string v0, "pushStat"

    return-object v0
.end method


# virtual methods
.method public postHandleNotification(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->g(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/pushwoosh/notification/b;->e(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->f(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/pushwoosh/notification/handlers/notification/d;->a:Lcom/pushwoosh/internal/command/CommandApplayer;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/pushwoosh/notification/handlers/notification/e;->a()Lcom/pushwoosh/internal/command/CommandType;

    move-result-object v0

    new-instance v2, Lcom/pushwoosh/internal/command/CommandParams;

    invoke-direct {v2, v1}, Lcom/pushwoosh/internal/command/CommandParams;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v2}, Lcom/pushwoosh/internal/command/CommandApplayer;->applyCommand(Lcom/pushwoosh/internal/command/CommandType;Lcom/pushwoosh/internal/command/CommandParams;)V

    :cond_1
    :goto_0
    return-void
.end method

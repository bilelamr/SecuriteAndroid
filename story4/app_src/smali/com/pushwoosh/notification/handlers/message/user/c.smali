.class Lcom/pushwoosh/notification/handlers/message/user/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/notification/handlers/a;
.implements Lcom/pushwoosh/notification/handlers/message/user/MessageHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handlePushMessage(Lcom/pushwoosh/notification/PushMessage;)V
    .locals 1

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->isLocal()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->h()Lcom/pushwoosh/repository/s;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->getPushHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/pushwoosh/repository/s;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

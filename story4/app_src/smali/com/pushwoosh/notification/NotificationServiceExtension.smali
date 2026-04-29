.class public Lcom/pushwoosh/notification/NotificationServiceExtension;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/pushwoosh/notification/a;

.field private b:Lcom/pushwoosh/notification/d;

.field private c:Lcom/pushwoosh/notification/c;

.field private d:Lcom/pushwoosh/notification/e;

.field private e:Lcom/pushwoosh/internal/utils/d;

.field private f:Landroid/content/Context;

.field private g:Lcom/pushwoosh/notification/handlers/notification/d;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->b()Lcom/pushwoosh/notification/c;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/NotificationServiceExtension;->c:Lcom/pushwoosh/notification/c;

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/NotificationServiceExtension;->f:Landroid/content/Context;

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->g()Lcom/pushwoosh/notification/e;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/NotificationServiceExtension;->d:Lcom/pushwoosh/notification/e;

    new-instance v0, Lcom/pushwoosh/notification/a;

    invoke-static {}, Lcom/pushwoosh/notification/handlers/notification/NotificationOpenHandlerChainProvider;->getNotificationOpenHandlerChain()Lcom/pushwoosh/internal/chain/Chain;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pushwoosh/notification/a;-><init>(Lcom/pushwoosh/internal/chain/Chain;)V

    iput-object v0, p0, Lcom/pushwoosh/notification/NotificationServiceExtension;->a:Lcom/pushwoosh/notification/a;

    new-instance v0, Lcom/pushwoosh/notification/d;

    invoke-static {}, Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandleChainProvider;->getMessageSystemChain()Lcom/pushwoosh/internal/chain/Chain;

    move-result-object v1

    invoke-static {}, Lcom/pushwoosh/notification/handlers/message/user/MessageHandleChainProvider;->getHandleProcessor()Lcom/pushwoosh/internal/chain/Chain;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/pushwoosh/notification/d;-><init>(Lcom/pushwoosh/internal/chain/Chain;Lcom/pushwoosh/internal/chain/Chain;)V

    iput-object v0, p0, Lcom/pushwoosh/notification/NotificationServiceExtension;->b:Lcom/pushwoosh/notification/d;

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->f()Lcom/pushwoosh/internal/utils/d;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/NotificationServiceExtension;->e:Lcom/pushwoosh/internal/utils/d;

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->c()Lcom/pushwoosh/notification/handlers/notification/d;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/NotificationServiceExtension;->g:Lcom/pushwoosh/notification/handlers/notification/d;

    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "handle null message"

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->info(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/notification/NotificationServiceExtension;->b:Lcom/pushwoosh/notification/d;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/notification/d;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/pushwoosh/notification/NotificationServiceExtension;->c:Lcom/pushwoosh/notification/c;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/notification/c;->a(Landroid/os/Bundle;)Lcom/pushwoosh/notification/PushMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pushwoosh/notification/NotificationServiceExtension;->onMessageReceived(Lcom/pushwoosh/notification/PushMessage;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/pushwoosh/notification/NotificationServiceExtension;->e:Lcom/pushwoosh/internal/utils/d;

    invoke-interface {v2}, Lcom/pushwoosh/internal/utils/d;->o()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/pushwoosh/notification/NotificationServiceExtension;->g:Lcom/pushwoosh/notification/handlers/notification/d;

    invoke-virtual {v2, p1}, Lcom/pushwoosh/notification/handlers/notification/d;->postHandleNotification(Landroid/os/Bundle;)V

    :cond_3
    iget-object p1, p0, Lcom/pushwoosh/notification/NotificationServiceExtension;->b:Lcom/pushwoosh/notification/d;

    invoke-virtual {p1, v0, v1}, Lcom/pushwoosh/notification/d;->a(Lcom/pushwoosh/notification/PushMessage;Z)V

    return-void
.end method

.method protected final getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/NotificationServiceExtension;->f:Landroid/content/Context;

    return-object v0
.end method

.method public final handleMessage(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/pushwoosh/notification/NotificationServiceExtension;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final handleNotification(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "open null notification"

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->info(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/pushwoosh/notification/PushMessage;

    invoke-direct {v0, p1}, Lcom/pushwoosh/notification/PushMessage;-><init>(Landroid/os/Bundle;)V

    :try_start_0
    iget-object v1, p0, Lcom/pushwoosh/notification/NotificationServiceExtension;->a:Lcom/pushwoosh/notification/a;

    invoke-virtual {v1, p1}, Lcom/pushwoosh/notification/a;->a(Landroid/os/Bundle;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/pushwoosh/notification/NotificationServiceExtension;->a:Lcom/pushwoosh/notification/a;

    invoke-virtual {v1, p1}, Lcom/pushwoosh/notification/a;->b(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/pushwoosh/notification/NotificationServiceExtension;->onMessageOpened(Lcom/pushwoosh/notification/PushMessage;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/pushwoosh/notification/NotificationServiceExtension;->d:Lcom/pushwoosh/notification/e;

    invoke-virtual {v1, v0}, Lcom/pushwoosh/notification/e;->a(Lcom/pushwoosh/notification/PushMessage;)V

    invoke-virtual {p0, v0}, Lcom/pushwoosh/notification/NotificationServiceExtension;->startActivityForPushMessage(Lcom/pushwoosh/notification/PushMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/pushwoosh/notification/NotificationServiceExtension;->a:Lcom/pushwoosh/notification/a;

    invoke-virtual {v1, p1}, Lcom/pushwoosh/notification/a;->b(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/pushwoosh/notification/NotificationServiceExtension;->onMessageOpened(Lcom/pushwoosh/notification/PushMessage;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/pushwoosh/notification/NotificationServiceExtension;->a:Lcom/pushwoosh/notification/a;

    invoke-virtual {v2, p1}, Lcom/pushwoosh/notification/a;->b(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/pushwoosh/notification/NotificationServiceExtension;->onMessageOpened(Lcom/pushwoosh/notification/PushMessage;)V

    throw v1
.end method

.method public final handleNotificationGroup(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pushwoosh/notification/PushMessage;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/pushwoosh/notification/NotificationServiceExtension;->onMessagesGroupOpened(Ljava/util/List;)V

    return-void
.end method

.method protected isAppOnForeground()Z
    .locals 1

    invoke-static {}, Lcom/pushwoosh/internal/platform/utils/a;->p()Z

    move-result v0

    return v0
.end method

.method protected onMessageOpened(Lcom/pushwoosh/notification/PushMessage;)V
    .locals 0

    return-void
.end method

.method protected onMessageReceived(Lcom/pushwoosh/notification/PushMessage;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onMessagesGroupOpened(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pushwoosh/notification/PushMessage;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/notification/PushMessage;

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/pushwoosh/notification/NotificationServiceExtension;->handleNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method protected startActivityForPushMessage(Lcom/pushwoosh/notification/PushMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/NotificationServiceExtension;->a:Lcom/pushwoosh/notification/a;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/notification/a;->a(Lcom/pushwoosh/notification/PushMessage;)V

    return-void
.end method

.class Lcom/pushwoosh/notification/handlers/message/user/b;
.super Lcom/pushwoosh/notification/handlers/message/user/NotificationMessageHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/notification/handlers/message/user/b$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/notification/handlers/message/user/NotificationMessageHandler;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/inapp/b;->c()Lcom/pushwoosh/inapp/e/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/e/c;->b(Ljava/lang/String;)Lcom/pushwoosh/function/Result;

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/q;->h()Lcom/pushwoosh/repository/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/repository/s;->f()V

    return-void
.end method


# virtual methods
.method protected handleNotification(Lcom/pushwoosh/notification/PushMessage;)V
    .locals 2

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->isLockScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/pushwoosh/notification/b;->B(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->getSound()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/pushwoosh/internal/utils/LockScreenUtils;->isScreenLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/pushwoosh/inapp/view/b/a/b$a;

    invoke-direct {v1}, Lcom/pushwoosh/inapp/view/b/a/b$a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/pushwoosh/inapp/view/b/a/b$a;->a(Ljava/lang/String;)Lcom/pushwoosh/inapp/view/b/a/b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/view/b/a/b$a;->c(Ljava/lang/String;)Lcom/pushwoosh/inapp/view/b/a/b$a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/pushwoosh/inapp/view/b/a/b$a;->a(Z)Lcom/pushwoosh/inapp/view/b/a/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/b/a/b$a;->a()Lcom/pushwoosh/inapp/view/b/a/b;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/pushwoosh/notification/handlers/message/user/b$a;

    invoke-direct {v0, p1}, Lcom/pushwoosh/notification/handlers/message/user/b$a;-><init>(Lcom/pushwoosh/inapp/view/b/a/b;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getLockScreenMediaStorage()Lcom/pushwoosh/repository/n;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/pushwoosh/repository/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public handlePushMessage(Lcom/pushwoosh/notification/PushMessage;)V
    .locals 1

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/pushwoosh/notification/b;->B(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/pushwoosh/notification/handlers/message/user/b;->a(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/pushwoosh/notification/handlers/message/user/NotificationMessageHandler;->handlePushMessage(Lcom/pushwoosh/notification/PushMessage;)V

    return-void
.end method

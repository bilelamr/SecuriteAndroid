.class public Lcom/pushwoosh/NotificationOpenReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/NotificationOpenReceiver$a;,
        Lcom/pushwoosh/NotificationOpenReceiver$b;,
        Lcom/pushwoosh/NotificationOpenReceiver$f;,
        Lcom/pushwoosh/NotificationOpenReceiver$c;,
        Lcom/pushwoosh/NotificationOpenReceiver$e;,
        Lcom/pushwoosh/NotificationOpenReceiver$d;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x0

    const-string v1, "is_summary_notification"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance p1, Lcom/pushwoosh/NotificationOpenReceiver$d;

    invoke-direct {p1, v2}, Lcom/pushwoosh/NotificationOpenReceiver$d;-><init>(Lcom/pushwoosh/NotificationOpenReceiver$1;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    const-wide/16 v3, 0x0

    const-string v1, "row_id"

    invoke-virtual {p1, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-lez p1, :cond_1

    new-instance p1, Lcom/pushwoosh/NotificationOpenReceiver$e;

    invoke-direct {p1, v5, v6}, Lcom/pushwoosh/NotificationOpenReceiver$e;-><init>(J)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v1, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance p1, Lcom/pushwoosh/NotificationOpenReceiver$f;

    invoke-direct {p1, v2}, Lcom/pushwoosh/NotificationOpenReceiver$f;-><init>(Lcom/pushwoosh/NotificationOpenReceiver$1;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/NotificationOpenReceiver;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/NotificationOpenReceiver;->d(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/NotificationOpenReceiver;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/NotificationOpenReceiver;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pushwoosh/notification/PushMessage;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->m()Lcom/pushwoosh/notification/NotificationServiceExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/notification/NotificationServiceExtension;->handleNotificationGroup(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    const-string v0, "pushBundle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/q;->m()Lcom/pushwoosh/notification/NotificationServiceExtension;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pushwoosh/notification/NotificationServiceExtension;->handleNotification(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    const-string v1, "group_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const v1, 0x1341729

    if-ne p1, v1, :cond_0

    new-instance p1, Lcom/pushwoosh/NotificationOpenReceiver$f;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/pushwoosh/NotificationOpenReceiver$f;-><init>(Lcom/pushwoosh/NotificationOpenReceiver$1;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Lcom/pushwoosh/NotificationOpenReceiver$c;

    invoke-static {p0}, Lcom/pushwoosh/k;->a(Lcom/pushwoosh/NotificationOpenReceiver;)Lcom/pushwoosh/NotificationOpenReceiver$b;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/pushwoosh/l;->a(Lcom/pushwoosh/NotificationOpenReceiver;Landroid/content/Intent;)Lcom/pushwoosh/NotificationOpenReceiver$a;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/pushwoosh/NotificationOpenReceiver$c;-><init>(Lcom/pushwoosh/NotificationOpenReceiver$b;Lcom/pushwoosh/NotificationOpenReceiver$a;)V

    sget-object p1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private d(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/NotificationOpenReceiver;->b(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const-string v0, "is_delete_intent"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/pushwoosh/NotificationOpenReceiver;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v0, "is_summary_notification"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lcom/pushwoosh/NotificationOpenReceiver;->c(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/pushwoosh/NotificationOpenReceiver;->b(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

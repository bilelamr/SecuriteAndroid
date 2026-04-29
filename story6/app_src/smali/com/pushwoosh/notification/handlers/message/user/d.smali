.class Lcom/pushwoosh/notification/handlers/message/user/d;
.super Lcom/pushwoosh/notification/handlers/message/user/NotificationMessageHandler;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:Lcom/pushwoosh/notification/NotificationFactory;

.field private final c:Lcom/pushwoosh/repository/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/pushwoosh/notification/handlers/message/user/d;->a:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/pushwoosh/notification/handlers/message/user/NotificationMessageHandler;-><init>()V

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getNotificationPreferences()Lcom/pushwoosh/repository/p;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/handlers/message/user/d;->c:Lcom/pushwoosh/repository/p;

    invoke-direct {p0}, Lcom/pushwoosh/notification/handlers/message/user/d;->b()Lcom/pushwoosh/notification/NotificationFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/handlers/message/user/d;->b:Lcom/pushwoosh/notification/NotificationFactory;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/pushwoosh/notification/handlers/message/user/d;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/notification/handlers/message/user/d;->c:Lcom/pushwoosh/repository/p;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->b()Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceIntValue;->get()I

    move-result v0

    iget-object v1, p0, Lcom/pushwoosh/notification/handlers/message/user/d;->c:Lcom/pushwoosh/repository/p;

    invoke-virtual {v1}, Lcom/pushwoosh/repository/p;->a()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/pushwoosh/notification/handlers/message/user/d;->c:Lcom/pushwoosh/repository/p;

    invoke-virtual {v1}, Lcom/pushwoosh/repository/p;->b()Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pushwoosh/internal/preference/PreferenceIntValue;->set(I)V

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private a(J)Landroid/content/Intent;
    .locals 3

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/pushwoosh/NotificationOpenReceiver;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "row_id"

    invoke-virtual {v1, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "is_delete_intent"

    const/4 p2, 0x1

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method

.method private a()V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getNotificationPreferences()Lcom/pushwoosh/repository/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->c()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/pushwoosh/internal/utils/g;->c()V

    :cond_0
    return-void
.end method

.method private a(Landroid/app/Notification;Landroid/content/Intent;Landroid/content/Intent;Lcom/pushwoosh/notification/PushMessage;)V
    .locals 5

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Incorrect state of app. Context is null"

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p4}, Lcom/pushwoosh/notification/PushMessage;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pushwoosh/notification/handlers/message/user/d;->a(Ljava/lang/String;)I

    move-result v2

    const/high16 v3, 0x10000000

    invoke-static {v0, v2, p2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz p3, :cond_1

    invoke-static {v0, v2, p3, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    iput-object p3, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    :cond_1
    invoke-direct {p0, p2, v1, v2}, Lcom/pushwoosh/notification/handlers/message/user/d;->a(Landroid/content/Intent;Ljava/lang/String;I)V

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getManagerProvider()Lcom/pushwoosh/internal/platform/b/b;

    move-result-object p2

    invoke-interface {p2}, Lcom/pushwoosh/internal/platform/b/b;->e()Landroid/app/NotificationManager;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2, v1, v2, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    invoke-direct {p0}, Lcom/pushwoosh/notification/handlers/message/user/d;->a()V

    invoke-direct {p0, p4}, Lcom/pushwoosh/notification/handlers/message/user/d;->b(Lcom/pushwoosh/notification/PushMessage;)V

    new-instance p1, Lcom/pushwoosh/notification/handlers/message/user/NotificationCreatedEvent;

    invoke-direct {p1, v2, v1, p4}, Lcom/pushwoosh/notification/handlers/message/user/NotificationCreatedEvent;-><init>(ILjava/lang/String;Lcom/pushwoosh/notification/PushMessage;)V

    invoke-static {p1}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    return-void
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getLocalNotificationStorage()Lcom/pushwoosh/repository/m;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/pushwoosh/repository/m;->a(ILjava/lang/String;)V

    const-string v1, "local_push_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1, p3, p2}, Lcom/pushwoosh/repository/m;->a(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b()Lcom/pushwoosh/notification/NotificationFactory;
    .locals 1

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getNotificationPreferences()Lcom/pushwoosh/repository/p;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->f()Lcom/pushwoosh/internal/preference/PreferenceClassValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceClassValue;->get()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/notification/NotificationFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Lcom/pushwoosh/notification/PushwooshNotificationFactory;

    invoke-direct {v0}, Lcom/pushwoosh/notification/PushwooshNotificationFactory;-><init>()V

    return-object v0
.end method

.method private b(Lcom/pushwoosh/notification/PushMessage;)V
    .locals 1

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/pushwoosh/notification/handlers/message/user/d;->c:Lcom/pushwoosh/repository/p;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->o()Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->add(Ljava/io/Serializable;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/pushwoosh/notification/PushMessage;)V
    .locals 5

    iget-object v0, p0, Lcom/pushwoosh/notification/handlers/message/user/d;->b:Lcom/pushwoosh/notification/NotificationFactory;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/notification/NotificationFactory;->onGenerateNotification(Lcom/pushwoosh/notification/PushMessage;)Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    const-string v1, "group_undefined"

    invoke-static {v0, v1}, Lcom/pushwoosh/notification/a/e;->a(Landroid/app/Notification;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    invoke-static {}, Lcom/pushwoosh/notification/a/e;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_2

    invoke-static {v2, v1}, Lcom/pushwoosh/notification/a/e;->a(Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v1}, Lcom/pushwoosh/notification/SummaryNotificationUtils;->getSummaryNotification(I)Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {v1}, Lcom/pushwoosh/notification/SummaryNotificationUtils;->fireSummaryNotification(Landroid/app/Notification;)V

    :cond_2
    iget-object v1, p0, Lcom/pushwoosh/notification/handlers/message/user/d;->b:Lcom/pushwoosh/notification/NotificationFactory;

    invoke-virtual {v1, p1}, Lcom/pushwoosh/notification/NotificationFactory;->getNotificationIntent(Lcom/pushwoosh/notification/PushMessage;)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x1341729

    const-string v3, "group_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getPushBundleStorage()Lcom/pushwoosh/repository/q;

    move-result-object v3

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/pushwoosh/repository/q;->b(Landroid/os/Bundle;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/pushwoosh/notification/handlers/message/user/d;->a(J)Landroid/content/Intent;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/pushwoosh/notification/handlers/message/user/d;->a(Landroid/app/Notification;Landroid/content/Intent;Landroid/content/Intent;Lcom/pushwoosh/notification/PushMessage;)V

    return-void
.end method

.method protected handleNotification(Lcom/pushwoosh/notification/PushMessage;)V
    .locals 3

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->isSilent()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/pushwoosh/notification/handlers/message/user/d;->c:Lcom/pushwoosh/repository/p;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->a()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/pushwoosh/notification/handlers/message/user/d;->a(Lcom/pushwoosh/notification/PushMessage;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/notification/handlers/message/user/d;->b:Lcom/pushwoosh/notification/NotificationFactory;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/notification/NotificationFactory;->onGenerateNotification(Lcom/pushwoosh/notification/PushMessage;)Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/pushwoosh/notification/handlers/message/user/d;->b:Lcom/pushwoosh/notification/NotificationFactory;

    invoke-virtual {v1, p1}, Lcom/pushwoosh/notification/NotificationFactory;->getNotificationIntent(Lcom/pushwoosh/notification/PushMessage;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/pushwoosh/notification/handlers/message/user/d;->a(Landroid/app/Notification;Landroid/content/Intent;Landroid/content/Intent;Lcom/pushwoosh/notification/PushMessage;)V

    :cond_2
    return-void
.end method

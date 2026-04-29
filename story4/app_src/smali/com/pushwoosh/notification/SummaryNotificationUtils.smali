.class public Lcom/pushwoosh/notification/SummaryNotificationUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Landroid/content/Intent;
    .locals 4

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/pushwoosh/NotificationOpenReceiver;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    const-string v2, "is_summary_notification"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "is_delete_intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method

.method private static b()Lcom/pushwoosh/notification/SummaryNotificationFactory;
    .locals 1

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getNotificationPreferences()Lcom/pushwoosh/repository/p;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->g()Lcom/pushwoosh/internal/preference/PreferenceClassValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceClassValue;->get()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/notification/SummaryNotificationFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Lcom/pushwoosh/notification/PushwooshSummaryNotificationFactory;

    invoke-direct {v0}, Lcom/pushwoosh/notification/PushwooshSummaryNotificationFactory;-><init>()V

    return-object v0
.end method

.method public static fireSummaryNotification(Landroid/app/Notification;)V
    .locals 2

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Incorrect state of app. Context is null"

    invoke-static {p0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getManagerProvider()Lcom/pushwoosh/internal/platform/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/pushwoosh/internal/platform/b/b;->e()Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const v1, 0x1341729

    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static getSummaryNotification(I)Landroid/app/Notification;
    .locals 5

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "Incorrect state of app. Context is null"

    invoke-static {p0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/pushwoosh/notification/SummaryNotificationUtils;->b()Lcom/pushwoosh/notification/SummaryNotificationFactory;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/pushwoosh/notification/SummaryNotificationFactory;->onGenerateSummaryNotification(I)Landroid/app/Notification;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-static {}, Lcom/pushwoosh/notification/SummaryNotificationFactory;->getNotificationIntent()Landroid/content/Intent;

    move-result-object v1

    const v2, 0x1341729

    const-string v3, "group_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, 0x1

    const-string v4, "is_summary_notification"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-static {}, Lcom/pushwoosh/notification/SummaryNotificationUtils;->a()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

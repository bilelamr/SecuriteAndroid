.class public Lcom/pushwoosh/notification/LocalNotificationReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/notification/LocalNotificationReceiver$a;
    }
.end annotation


# static fields
.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "local_push_id"

.field public static final TAG:Ljava/lang/String;

.field public static final WEEK:I = 0x240c8400


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/pushwoosh/notification/LocalNotificationReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pushwoosh/notification/LocalNotificationReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pushwoosh/notification/LocalNotificationReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "local_push_id"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static a(JLandroid/app/PendingIntent;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getManagerProvider()Lcom/pushwoosh/internal/platform/b/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/pushwoosh/internal/platform/b/b;->k()Landroid/app/AlarmManager;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {v1, v0, p0, p1, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    sget-object p0, Lcom/pushwoosh/notification/LocalNotificationReceiver;->TAG:Ljava/lang/String;

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Too many alarms. Please clear all local alarm to continue use AlarmManager. Local notification will be skipped"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static a(Lcom/pushwoosh/repository/b;J)Z
    .locals 2

    invoke-virtual {p0}, Lcom/pushwoosh/repository/b;->a()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x240c8400

    cmp-long p0, p1, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b(Lcom/pushwoosh/repository/b;J)J
    .locals 4

    invoke-virtual {p0}, Lcom/pushwoosh/repository/b;->a()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public static cancelAll()V
    .locals 2

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getLocalNotificationStorage()Lcom/pushwoosh/repository/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/m;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/pushwoosh/notification/LocalNotificationReceiver;->cancelNotification(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static cancelNotification(I)V
    .locals 3

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/pushwoosh/notification/LocalNotificationReceiver;->TAG:Ljava/lang/String;

    const-string v0, "Incorrect state of app. Context is null"

    invoke-static {p0, v0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getLocalNotificationStorage()Lcom/pushwoosh/repository/m;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/pushwoosh/repository/m;->a(I)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/pushwoosh/notification/LocalNotificationReceiver;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x8000000

    invoke-static {v0, p0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method public static rescheduleNotification(Lcom/pushwoosh/repository/b;J)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/pushwoosh/notification/LocalNotificationReceiver;->TAG:Ljava/lang/String;

    const-string p1, "Incorrect state of app. Context is null"

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/pushwoosh/notification/LocalNotificationReceiver;->a(Lcom/pushwoosh/repository/b;J)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getLocalNotificationStorage()Lcom/pushwoosh/repository/m;

    move-result-object p1

    invoke-virtual {p0}, Lcom/pushwoosh/repository/b;->c()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/pushwoosh/repository/m;->a(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/pushwoosh/repository/b;->c()I

    move-result v1

    invoke-static {p0, p1, p2}, Lcom/pushwoosh/notification/LocalNotificationReceiver;->b(Lcom/pushwoosh/repository/b;J)J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/pushwoosh/repository/b;->b()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/pushwoosh/notification/LocalNotificationReceiver;->a(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    const/high16 v2, 0x8000000

    invoke-static {v0, v1, p0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/pushwoosh/notification/LocalNotificationReceiver;->a(JLandroid/app/PendingIntent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/pushwoosh/notification/LocalNotificationReceiver;->TAG:Ljava/lang/String;

    const-string p2, "Creation of local notification failed."

    invoke-static {p1, p2, p0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static scheduleNotification(Landroid/os/Bundle;I)I
    .locals 7

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/pushwoosh/notification/LocalNotificationReceiver;->TAG:Ljava/lang/String;

    const-string p1, "Incorrect state of app. Context is null"

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getLocalNotificationStorage()Lcom/pushwoosh/repository/m;

    move-result-object v2

    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-virtual {v2}, Lcom/pushwoosh/repository/m;->b()I

    move-result p1

    invoke-static {v1, p1, p0}, Lcom/pushwoosh/notification/LocalNotificationReceiver;->a(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    const/high16 v3, 0x8000000

    invoke-static {v1, p1, p0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v2, p1, p0, v5, v6}, Lcom/pushwoosh/repository/m;->a(ILandroid/os/Bundle;J)V

    invoke-static {v5, v6, v1}, Lcom/pushwoosh/notification/LocalNotificationReceiver;->a(JLandroid/app/PendingIntent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return p1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/pushwoosh/notification/LocalNotificationReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Creation of local notification failed."

    invoke-static {p1, v1, p0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getLocalNotificationStorage()Lcom/pushwoosh/repository/m;

    move-result-object p2

    const-string v0, "local_push_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/pushwoosh/repository/m;->a(I)V

    new-instance p2, Lcom/pushwoosh/notification/LocalNotificationReceiver$a;

    invoke-direct {p2, p1}, Lcom/pushwoosh/notification/LocalNotificationReceiver$a;-><init>(Landroid/os/Bundle;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p2, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.class public Lcom/pushwoosh/notification/RescheduleNotificationsWorker;
.super Landroidx/work/Worker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method private static a()J
    .locals 2

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getInstance()Lcom/pushwoosh/internal/platform/AndroidPlatformModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getTimeProvider()Lcom/pushwoosh/internal/utils/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/utils/j;->b()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(JLcom/pushwoosh/repository/b;)V
    .locals 3

    invoke-virtual {p2}, Lcom/pushwoosh/repository/b;->b()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rescheduling local push: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RescheduleNotificationsWorker"

    invoke-static {v1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p0, p1}, Lcom/pushwoosh/notification/LocalNotificationReceiver;->rescheduleNotification(Lcom/pushwoosh/repository/b;J)V

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 3

    invoke-static {}, Lcom/pushwoosh/notification/RescheduleNotificationsWorker;->a()J

    move-result-wide v0

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getLocalNotificationStorage()Lcom/pushwoosh/repository/m;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/pushwoosh/notification/i;->a(J)Lcom/pushwoosh/repository/c$a;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/pushwoosh/repository/m;->a(Lcom/pushwoosh/repository/c$a;)V

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method

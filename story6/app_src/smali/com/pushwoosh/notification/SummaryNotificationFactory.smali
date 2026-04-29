.class public abstract Lcom/pushwoosh/notification/SummaryNotificationFactory;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/pushwoosh/notification/b/b;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/SummaryNotificationFactory;->a:Landroid/content/Context;

    new-instance v0, Lcom/pushwoosh/notification/b/b;

    iget-object v1, p0, Lcom/pushwoosh/notification/SummaryNotificationFactory;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/pushwoosh/notification/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pushwoosh/notification/SummaryNotificationFactory;->b:Lcom/pushwoosh/notification/b/b;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/notification/SummaryNotificationFactory;->b:Lcom/pushwoosh/notification/b/b;

    const-string v1, "Push notifications group"

    invoke-virtual {v0, v1}, Lcom/pushwoosh/notification/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNotificationIntent()Landroid/content/Intent;
    .locals 4

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/pushwoosh/NotificationOpenReceiver;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "summary-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method


# virtual methods
.method public autoCancelSummaryNotification()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/SummaryNotificationFactory;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final onGenerateSummaryNotification(I)Landroid/app/Notification;
    .locals 3

    invoke-virtual {p0}, Lcom/pushwoosh/notification/SummaryNotificationFactory;->summaryNotificationIconResId()I

    move-result v0

    invoke-virtual {p0}, Lcom/pushwoosh/notification/SummaryNotificationFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "onGenerateSummaryNotification Incorrect state of app. Context is null"

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/pushwoosh/notification/SummaryNotificationFactory;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pushwoosh/notification/SummaryNotificationFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/pushwoosh/notification/a/e;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/pushwoosh/notification/a/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/pushwoosh/notification/a/f;->a(I)Lcom/pushwoosh/notification/a/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/pushwoosh/notification/a/f;->b(I)Lcom/pushwoosh/notification/a/f;

    move-result-object v0

    new-instance v2, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    invoke-virtual {p0, p1}, Lcom/pushwoosh/notification/SummaryNotificationFactory;->summaryNotificationMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-interface {v0, v2}, Lcom/pushwoosh/notification/a/f;->a(Landroidx/core/app/NotificationCompat$InboxStyle;)Lcom/pushwoosh/notification/a/f;

    move-result-object p1

    invoke-virtual {p0}, Lcom/pushwoosh/notification/SummaryNotificationFactory;->autoCancelSummaryNotification()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/pushwoosh/notification/a/f;->a(Z)Lcom/pushwoosh/notification/a/f;

    move-result-object p1

    const-string v0, "group_undefined"

    invoke-interface {p1, v0}, Lcom/pushwoosh/notification/a/f;->a(Ljava/lang/String;)Lcom/pushwoosh/notification/a/f;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/pushwoosh/notification/a/f;->b(Z)Lcom/pushwoosh/notification/a/f;

    invoke-interface {v1}, Lcom/pushwoosh/notification/a/f;->a()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public abstract summaryNotificationIconResId()I
.end method

.method public abstract summaryNotificationMessage(I)Ljava/lang/String;
.end method

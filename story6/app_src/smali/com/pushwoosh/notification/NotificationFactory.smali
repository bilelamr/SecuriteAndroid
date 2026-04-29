.class public abstract Lcom/pushwoosh/notification/NotificationFactory;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/pushwoosh/notification/b/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/NotificationFactory;->a:Landroid/content/Context;

    new-instance v0, Lcom/pushwoosh/notification/b/b;

    iget-object v1, p0, Lcom/pushwoosh/notification/NotificationFactory;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/pushwoosh/notification/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pushwoosh/notification/NotificationFactory;->b:Lcom/pushwoosh/notification/b/b;

    return-void
.end method


# virtual methods
.method protected final addCancel(Landroid/app/Notification;)V
    .locals 1

    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/app/Notification;->flags:I

    return-void
.end method

.method protected addChannel(Lcom/pushwoosh/notification/PushMessage;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/pushwoosh/notification/b/a;->a(Lcom/pushwoosh/notification/PushMessage;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/notification/NotificationFactory;->b:Lcom/pushwoosh/notification/b/b;

    invoke-virtual {p0, v0}, Lcom/pushwoosh/notification/NotificationFactory;->channelName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/pushwoosh/notification/NotificationFactory;->channelDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v0}, Lcom/pushwoosh/notification/b/b;->a(Lcom/pushwoosh/notification/PushMessage;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final addLED(Landroid/app/Notification;Ljava/lang/Integer;II)V
    .locals 2

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getNotificationPreferences()Lcom/pushwoosh/repository/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->d()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result v1

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->e()Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceIntValue;->get()I

    move-result v0

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/pushwoosh/notification/NotificationFactory;->b:Lcom/pushwoosh/notification/b/b;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-virtual {v1, p1, v0, p3, p4}, Lcom/pushwoosh/notification/b/b;->a(Landroid/app/Notification;III)V

    return-void
.end method

.method protected final addSound(Landroid/app/Notification;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lcom/pushwoosh/internal/utils/g;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/pushwoosh/notification/NotificationFactory;->b:Lcom/pushwoosh/notification/b/b;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v1, p1, v0, p2}, Lcom/pushwoosh/notification/b/b;->a(Landroid/app/Notification;Landroid/net/Uri;Z)V

    :cond_1
    return-void
.end method

.method protected final addVibration(Landroid/app/Notification;Z)V
    .locals 2

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getNotificationPreferences()Lcom/pushwoosh/repository/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->m()Lcom/pushwoosh/internal/preference/PreferenceVibrateTypeValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceVibrateTypeValue;->get()Lcom/pushwoosh/notification/VibrateType;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/notification/NotificationFactory;->b:Lcom/pushwoosh/notification/b/b;

    invoke-virtual {v1, p1, v0, p2}, Lcom/pushwoosh/notification/b/b;->a(Landroid/app/Notification;Lcom/pushwoosh/notification/VibrateType;Z)V

    return-void
.end method

.method public channelDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public channelName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method protected final getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/NotificationFactory;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected final getContentFromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getNotificationIntent(Lcom/pushwoosh/notification/PushMessage;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pushwoosh/notification/NotificationFactory;->a:Landroid/content/Context;

    const-class v2, Lcom/pushwoosh/NotificationOpenReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "pushBundle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public abstract onGenerateNotification(Lcom/pushwoosh/notification/PushMessage;)Landroid/app/Notification;
.end method

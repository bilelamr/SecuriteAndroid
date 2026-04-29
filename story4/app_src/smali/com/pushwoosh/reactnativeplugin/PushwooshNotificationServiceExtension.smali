.class public Lcom/pushwoosh/reactnativeplugin/PushwooshNotificationServiceExtension;
.super Lcom/pushwoosh/notification/NotificationServiceExtension;
.source "PushwooshNotificationServiceExtension.java"


# instance fields
.field private showForegroundPush:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 14
    invoke-direct {p0}, Lcom/pushwoosh/notification/NotificationServiceExtension;-><init>()V

    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/pushwoosh/notification/NotificationServiceExtension;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lcom/pushwoosh/notification/NotificationServiceExtension;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 19
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 20
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "PW_BROADCAST_PUSH"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.pushwoosh.foreground_push"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshNotificationServiceExtension;->showForegroundPush:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 23
    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    .line 26
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showForegroundPush = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshNotificationServiceExtension;->showForegroundPush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNativePlugin"

    invoke-static {v1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onMessageReceived(Lcom/pushwoosh/notification/PushMessage;)Z
    .locals 1

    .line 31
    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->messageReceived(Ljava/lang/String;)V

    .line 32
    iget-boolean v0, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshNotificationServiceExtension;->showForegroundPush:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/pushwoosh/notification/NotificationServiceExtension;->isAppOnForeground()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/pushwoosh/notification/NotificationServiceExtension;->onMessageReceived(Lcom/pushwoosh/notification/PushMessage;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected startActivityForPushMessage(Lcom/pushwoosh/notification/PushMessage;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/pushwoosh/notification/NotificationServiceExtension;->startActivityForPushMessage(Lcom/pushwoosh/notification/PushMessage;)V

    .line 38
    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->openPush(Ljava/lang/String;)V

    return-void
.end method

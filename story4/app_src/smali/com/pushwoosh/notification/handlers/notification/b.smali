.class Lcom/pushwoosh/notification/handlers/notification/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/notification/handlers/notification/PushNotificationOpenHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postHandleNotification(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Incorrect state of app. Context is null"

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "launch"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getManagerProvider()Lcom/pushwoosh/internal/platform/b/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/pushwoosh/internal/platform/b/b;->f()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "Application not found"

    invoke-static {v2, p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v1, :cond_2

    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

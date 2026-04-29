.class public Lcom/pushwoosh/PushAmazonIntentService;
.super Lcom/amazon/device/messaging/ADMMessageHandlerBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/pushwoosh/PushAmazonIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/device/messaging/ADMMessageHandlerBase;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/device/messaging/ADMMessageHandlerBase;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onMessage(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "AmazonIntentService"

    const-string v1, "Received message"

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/NotificationRegistrarHelper;->handleMessage(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onRegistered(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device registered: regId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmazonIntentService"

    invoke-static {v1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/NotificationRegistrarHelper;->onRegisteredForRemoteNotifications(Ljava/lang/String;)V

    return-void
.end method

.method protected onRegistrationError(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Messaging registration error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmazonIntentService"

    invoke-static {v1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/NotificationRegistrarHelper;->onFailedToRegisterForRemoteNotifications(Ljava/lang/String;)V

    return-void
.end method

.method protected onUnregistered(Ljava/lang/String;)V
    .locals 2

    const-string v0, "AmazonIntentService"

    const-string v1, "Device unregistered"

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/NotificationRegistrarHelper;->onUnregisteredFromRemoteNotifications(Ljava/lang/String;)V

    return-void
.end method

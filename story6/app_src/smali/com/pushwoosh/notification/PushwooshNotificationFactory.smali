.class public Lcom/pushwoosh/notification/PushwooshNotificationFactory;
.super Lcom/pushwoosh/notification/NotificationFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/notification/NotificationFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBigPicture(Lcom/pushwoosh/notification/PushMessage;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->getBigPictureUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/pushwoosh/internal/utils/g;->b(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected getLargeIcon(Lcom/pushwoosh/notification/PushMessage;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getResourceProvider()Lcom/pushwoosh/internal/platform/d/b;

    move-result-object v0

    const v1, 0x1050006

    invoke-interface {v0, v1}, Lcom/pushwoosh/internal/platform/d/b;->a(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->getLargeIconUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Lcom/pushwoosh/internal/utils/g;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onGenerateNotification(Lcom/pushwoosh/notification/PushMessage;)Landroid/app/Notification;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/pushwoosh/notification/PushwooshNotificationFactory;->getLargeIcon(Lcom/pushwoosh/notification/PushMessage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/pushwoosh/notification/PushwooshNotificationFactory;->getBigPicture(Lcom/pushwoosh/notification/PushMessage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/pushwoosh/notification/NotificationFactory;->addChannel(Lcom/pushwoosh/notification/PushMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pushwoosh/notification/NotificationFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/pushwoosh/notification/NotificationFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/pushwoosh/notification/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/pushwoosh/notification/a/b;

    move-result-object v2

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->getHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/pushwoosh/notification/NotificationFactory;->getContentFromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/pushwoosh/notification/a/b;->a(Ljava/lang/CharSequence;)Lcom/pushwoosh/notification/a/b;

    move-result-object v3

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/pushwoosh/notification/NotificationFactory;->getContentFromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/pushwoosh/notification/a/b;->b(Ljava/lang/CharSequence;)Lcom/pushwoosh/notification/a/b;

    move-result-object v3

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->getSmallIcon()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/pushwoosh/notification/a/b;->a(I)Lcom/pushwoosh/notification/a/b;

    move-result-object v3

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/pushwoosh/notification/NotificationFactory;->getContentFromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/pushwoosh/notification/a/b;->a(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)Lcom/pushwoosh/notification/a/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/pushwoosh/notification/a/b;->a(Landroid/graphics/Bitmap;)Lcom/pushwoosh/notification/a/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->getIconBackgroundColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pushwoosh/notification/a/b;->a(Ljava/lang/Integer;)Lcom/pushwoosh/notification/a/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->getPriority()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/pushwoosh/notification/a/b;->b(I)Lcom/pushwoosh/notification/a/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/pushwoosh/notification/a/b;->c(I)Lcom/pushwoosh/notification/a/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->getTicker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pushwoosh/notification/NotificationFactory;->getContentFromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pushwoosh/notification/a/b;->c(Ljava/lang/CharSequence;)Lcom/pushwoosh/notification/a/b;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/pushwoosh/notification/a/b;->a(J)Lcom/pushwoosh/notification/a/b;

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pushwoosh/notification/Action;

    invoke-virtual {p0}, Lcom/pushwoosh/notification/NotificationFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/pushwoosh/notification/a/e;->a(Landroid/content/Context;Lcom/pushwoosh/notification/a/b;Lcom/pushwoosh/notification/Action;)V

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/pushwoosh/notification/a/b;->a(Landroid/os/Bundle;)Lcom/pushwoosh/notification/a/b;

    :cond_2
    invoke-interface {v2}, Lcom/pushwoosh/notification/a/b;->a()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->getLed()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->getLedOnMS()I

    move-result v2

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->getLedOffMS()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pushwoosh/notification/NotificationFactory;->addLED(Landroid/app/Notification;Ljava/lang/Integer;II)V

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->getSound()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pushwoosh/notification/NotificationFactory;->addSound(Landroid/app/Notification;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->getVibration()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/pushwoosh/notification/NotificationFactory;->addVibration(Landroid/app/Notification;Z)V

    invoke-virtual {p0, v0}, Lcom/pushwoosh/notification/NotificationFactory;->addCancel(Landroid/app/Notification;)V

    return-object v0
.end method

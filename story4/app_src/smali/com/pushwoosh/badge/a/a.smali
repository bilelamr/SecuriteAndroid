.class public Lcom/pushwoosh/badge/a/a;
.super Lcom/pushwoosh/notification/handlers/message/user/NotificationMessageHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/notification/handlers/message/user/NotificationMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleNotification(Lcom/pushwoosh/notification/PushMessage;)V
    .locals 0

    invoke-virtual {p1}, Lcom/pushwoosh/notification/PushMessage;->getBadges()I

    move-result p1

    if-ltz p1, :cond_0

    invoke-static {p1}, Lcom/pushwoosh/badge/PushwooshBadge;->setBadgeNumber(I)V

    :cond_0
    return-void
.end method

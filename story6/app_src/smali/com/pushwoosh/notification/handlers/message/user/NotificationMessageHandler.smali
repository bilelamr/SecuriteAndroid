.class public abstract Lcom/pushwoosh/notification/handlers/message/user/NotificationMessageHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/notification/handlers/message/user/MessageHandler;


# instance fields
.field private final a:Lcom/pushwoosh/repository/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getNotificationPreferences()Lcom/pushwoosh/repository/p;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/handlers/message/user/NotificationMessageHandler;->a:Lcom/pushwoosh/repository/p;

    return-void
.end method


# virtual methods
.method protected abstract handleNotification(Lcom/pushwoosh/notification/PushMessage;)V
.end method

.method public handlePushMessage(Lcom/pushwoosh/notification/PushMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/handlers/message/user/NotificationMessageHandler;->a:Lcom/pushwoosh/repository/p;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->k()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/pushwoosh/notification/handlers/message/user/NotificationMessageHandler;->handleNotification(Lcom/pushwoosh/notification/PushMessage;)V

    return-void
.end method

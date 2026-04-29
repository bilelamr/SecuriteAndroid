.class public Lcom/pushwoosh/inbox/c/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/notification/handlers/notification/PushNotificationOpenHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/function/Result;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public postHandleNotification(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {p1}, Lcom/pushwoosh/inbox/c/a;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/pushwoosh/inbox/internal/b;->a()Lcom/pushwoosh/inbox/d/b;

    move-result-object v0

    sget-object v1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->OPEN:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-static {}, Lcom/pushwoosh/inbox/c/a/c;->a()Lcom/pushwoosh/function/Callback;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/pushwoosh/inbox/d/b;->a(Ljava/lang/String;Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

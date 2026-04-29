.class public Lcom/pushwoosh/notification/handlers/message/user/NotificationCreatedEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/event/Event;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Lcom/pushwoosh/notification/PushMessage;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/pushwoosh/notification/PushMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pushwoosh/notification/handlers/message/user/NotificationCreatedEvent;->a:I

    iput-object p2, p0, Lcom/pushwoosh/notification/handlers/message/user/NotificationCreatedEvent;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/pushwoosh/notification/handlers/message/user/NotificationCreatedEvent;->c:Lcom/pushwoosh/notification/PushMessage;

    return-void
.end method


# virtual methods
.method public getMessage()Lcom/pushwoosh/notification/PushMessage;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/handlers/message/user/NotificationCreatedEvent;->c:Lcom/pushwoosh/notification/PushMessage;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    iget v0, p0, Lcom/pushwoosh/notification/handlers/message/user/NotificationCreatedEvent;->a:I

    return v0
.end method

.method public getMessageTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/handlers/message/user/NotificationCreatedEvent;->b:Ljava/lang/String;

    return-object v0
.end method

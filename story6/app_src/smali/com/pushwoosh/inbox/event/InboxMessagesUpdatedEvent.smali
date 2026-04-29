.class public Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/event/Event;


# instance fields
.field private messagesAdded:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;"
        }
    .end annotation
.end field

.field private messagesDeleted:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private messagesUpdated:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;->messagesAdded:Ljava/util/Collection;

    if-nez p2, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;->messagesUpdated:Ljava/util/Collection;

    if-nez p3, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_2
    iput-object p3, p0, Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;->messagesDeleted:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public getMessagesAdded()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;->messagesAdded:Ljava/util/Collection;

    return-object v0
.end method

.method public getMessagesDeleted()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;->messagesDeleted:Ljava/util/Collection;

    return-object v0
.end method

.method public getMessagesUpdated()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;->messagesUpdated:Ljava/util/Collection;

    return-object v0
.end method

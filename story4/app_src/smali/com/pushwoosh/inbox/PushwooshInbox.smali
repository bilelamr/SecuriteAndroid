.class public Lcom/pushwoosh/inbox/PushwooshInbox;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static changeStatus(Ljava/util/Collection;Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/pushwoosh/inbox/internal/b;->a()Lcom/pushwoosh/inbox/d/b;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/pushwoosh/inbox/d/b;->a(Ljava/util/Map;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public static deleteMessage(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/pushwoosh/inbox/PushwooshInbox;->deleteMessages(Ljava/util/Collection;)V

    return-void
.end method

.method public static deleteMessages(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->DELETED_BY_USER:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-static {p0, v0}, Lcom/pushwoosh/inbox/PushwooshInbox;->changeStatus(Ljava/util/Collection;Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;)V

    return-void
.end method

.method static synthetic lambda$performAction$0(Lcom/pushwoosh/inbox/internal/b/a;Lcom/pushwoosh/function/Result;)V
    .locals 1

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/inbox/data/InboxMessage;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/internal/b/a;->a(Lcom/pushwoosh/inbox/data/InboxMessage;)Lcom/pushwoosh/inbox/internal/data/b;

    move-result-object p0

    invoke-static {p0}, Lcom/pushwoosh/inbox/internal/a/c;->a(Lcom/pushwoosh/inbox/internal/data/b;)V

    :cond_0
    return-void
.end method

.method public static loadCachedMessages(Lcom/pushwoosh/inbox/data/InboxMessage;I)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            "I)",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pushwoosh/inbox/exception/InboxMessagesException;
        }
    .end annotation

    invoke-static {}, Lcom/pushwoosh/inbox/internal/b;->a()Lcom/pushwoosh/inbox/d/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/pushwoosh/inbox/d/b;->a(Lcom/pushwoosh/inbox/data/InboxMessage;I)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static loadCachedMessages(Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/inbox/data/InboxMessage;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pushwoosh/inbox/exception/InboxMessagesException;
        }
    .end annotation

    invoke-static {}, Lcom/pushwoosh/inbox/internal/b;->a()Lcom/pushwoosh/inbox/d/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/pushwoosh/inbox/d/b;->a(Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/inbox/data/InboxMessage;I)V

    return-void
.end method

.method public static loadMessages(Lcom/pushwoosh/function/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/pushwoosh/inbox/PushwooshInbox;->loadMessages(Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/inbox/data/InboxMessage;I)V

    return-void
.end method

.method public static loadMessages(Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/inbox/data/InboxMessage;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            "I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pushwoosh/inbox/internal/b;->a()Lcom/pushwoosh/inbox/d/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/pushwoosh/inbox/d/b;->b(Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/inbox/data/InboxMessage;I)V

    return-void
.end method

.method public static messagesCount(Lcom/pushwoosh/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/Integer;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pushwoosh/inbox/internal/b;->a()Lcom/pushwoosh/inbox/d/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/inbox/d/b;->g(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public static messagesWithNoActionPerformedCount(Lcom/pushwoosh/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/Integer;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pushwoosh/inbox/internal/b;->a()Lcom/pushwoosh/inbox/d/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/inbox/d/b;->d(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public static performAction(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/pushwoosh/inbox/internal/b/a;

    invoke-direct {v0}, Lcom/pushwoosh/inbox/internal/b/a;-><init>()V

    invoke-static {}, Lcom/pushwoosh/inbox/internal/b;->a()Lcom/pushwoosh/inbox/d/b;

    move-result-object v1

    sget-object v2, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->OPEN:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-static {v0}, Lcom/pushwoosh/inbox/a;->a(Lcom/pushwoosh/inbox/internal/b/a;)Lcom/pushwoosh/function/Callback;

    move-result-object v0

    invoke-virtual {v1, p0, v2, v0}, Lcom/pushwoosh/inbox/d/b;->a(Ljava/lang/String;Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public static readMessage(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/pushwoosh/inbox/PushwooshInbox;->readMessages(Ljava/util/Collection;)V

    return-void
.end method

.method public static readMessages(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->READ:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-static {p0, v0}, Lcom/pushwoosh/inbox/PushwooshInbox;->changeStatus(Ljava/util/Collection;Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;)V

    return-void
.end method

.method public static registerMessagesCountObserver(Lcom/pushwoosh/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/Integer;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pushwoosh/inbox/internal/b;->a()Lcom/pushwoosh/inbox/d/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/inbox/d/b;->h(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public static registerMessagesWithNoActionPerformedCountObserver(Lcom/pushwoosh/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/Integer;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pushwoosh/inbox/internal/b;->a()Lcom/pushwoosh/inbox/d/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/inbox/d/b;->e(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public static registerUnreadMessagesCountObserver(Lcom/pushwoosh/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/Integer;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pushwoosh/inbox/internal/b;->a()Lcom/pushwoosh/inbox/d/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/inbox/d/b;->b(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public static unreadMessagesCount(Lcom/pushwoosh/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/Integer;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pushwoosh/inbox/internal/b;->a()Lcom/pushwoosh/inbox/d/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/inbox/d/b;->a(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public static unregisterMessagesCountObserver(Lcom/pushwoosh/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/Integer;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pushwoosh/inbox/internal/b;->a()Lcom/pushwoosh/inbox/d/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/inbox/d/b;->i(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public static unregisterMessagesWithNoActionPerformedCountObserver(Lcom/pushwoosh/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/Integer;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pushwoosh/inbox/internal/b;->a()Lcom/pushwoosh/inbox/d/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/inbox/d/b;->f(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public static unregisterUnreadMessagesCountObserver(Lcom/pushwoosh/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/Integer;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pushwoosh/inbox/internal/b;->a()Lcom/pushwoosh/inbox/d/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/inbox/d/b;->c(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

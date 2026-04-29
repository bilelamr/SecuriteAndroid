.class public Lcom/pushwoosh/inbox/d/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/inbox/d/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/pushwoosh/internal/network/RequestManager;

.field private final b:Lcom/pushwoosh/inbox/e/a;

.field private final c:Lcom/pushwoosh/internal/command/CommandApplayer;

.field private final d:Lcom/pushwoosh/inbox/internal/b/b;

.field private final e:Lcom/pushwoosh/inbox/b/a/a;

.field private f:Lcom/pushwoosh/inbox/d/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/inbox/d/t<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/pushwoosh/inbox/d/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/inbox/d/t<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/pushwoosh/inbox/d/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/inbox/d/t<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/pushwoosh/inbox/d/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/inbox/d/v<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/pushwoosh/inbox/d/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/inbox/d/v<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/pushwoosh/inbox/d/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/inbox/d/v<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/internal/network/RequestManager;Lcom/pushwoosh/inbox/e/a;Lcom/pushwoosh/internal/command/CommandApplayer;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/pushwoosh/inbox/internal/b/b;

    invoke-direct {v0}, Lcom/pushwoosh/inbox/internal/b/b;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/inbox/d/b;->d:Lcom/pushwoosh/inbox/internal/b/b;

    new-instance v0, Lcom/pushwoosh/inbox/b/a/a;

    invoke-static {}, Lcom/pushwoosh/inbox/internal/a;->a()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/pushwoosh/inbox/b/a/a;-><init>(J)V

    iput-object v0, p0, Lcom/pushwoosh/inbox/d/b;->e:Lcom/pushwoosh/inbox/b/a/a;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pushwoosh/inbox/d/b;->l:Landroid/os/Handler;

    iput-object p1, p0, Lcom/pushwoosh/inbox/d/b;->a:Lcom/pushwoosh/internal/network/RequestManager;

    iput-object p2, p0, Lcom/pushwoosh/inbox/d/b;->b:Lcom/pushwoosh/inbox/e/a;

    iput-object p3, p0, Lcom/pushwoosh/inbox/d/b;->c:Lcom/pushwoosh/internal/command/CommandApplayer;

    invoke-direct {p0}, Lcom/pushwoosh/inbox/d/b;->c()V

    invoke-direct {p0}, Lcom/pushwoosh/inbox/d/b;->d()V

    return-void
.end method

.method private a(Lcom/pushwoosh/inbox/data/InboxMessage;)J
    .locals 2

    if-nez p1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/pushwoosh/inbox/internal/data/a;

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/internal/data/a;->a()Lcom/pushwoosh/inbox/internal/data/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/internal/data/b;->b()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method static synthetic a(Lcom/pushwoosh/inbox/d/b;Lcom/pushwoosh/function/Result;)Lcom/pushwoosh/function/Result;
    .locals 2

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/pushwoosh/inbox/exception/InboxMessagesException;

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p1

    const-string v1, "Can\'t update total count of the inboxMessages"

    invoke-direct {v0, v1, p1}, Lcom/pushwoosh/inbox/exception/InboxMessagesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    iget-object p0, p0, Lcom/pushwoosh/inbox/d/b;->b:Lcom/pushwoosh/inbox/e/a;

    invoke-interface {p0}, Lcom/pushwoosh/inbox/e/a;->c()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/pushwoosh/function/Result;->from(Ljava/lang/Object;Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/Collection;Z)Lcom/pushwoosh/inbox/e/a/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/internal/data/b;",
            ">;Z)",
            "Lcom/pushwoosh/inbox/e/a/a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->b:Lcom/pushwoosh/inbox/e/a;

    invoke-interface {v0, p1, p2}, Lcom/pushwoosh/inbox/e/a;->a(Ljava/util/Collection;Z)Lcom/pushwoosh/inbox/e/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/e/a/a;->e()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/pushwoosh/inbox/d/b;->a(Ljava/lang/String;Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;Z)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method static synthetic a(Lcom/pushwoosh/inbox/d/b;)Lcom/pushwoosh/inbox/e/a;
    .locals 0

    iget-object p0, p0, Lcom/pushwoosh/inbox/d/b;->b:Lcom/pushwoosh/inbox/e/a;

    return-object p0
.end method

.method static synthetic a(Lcom/pushwoosh/inbox/d/b;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/inbox/d/b;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->b:Lcom/pushwoosh/inbox/e/a;

    invoke-interface {v0, p1}, Lcom/pushwoosh/inbox/e/a;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pushwoosh/inbox/d/b;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/pushwoosh/function/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Result<",
            "Lcom/pushwoosh/inbox/d/a/a;",
            "Lcom/pushwoosh/internal/network/NetworkException;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->f:Lcom/pushwoosh/inbox/d/t;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/d/t;->a(Lcom/pushwoosh/function/Result;)V

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->g:Lcom/pushwoosh/inbox/d/t;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/d/t;->a(Lcom/pushwoosh/function/Result;)V

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->h:Lcom/pushwoosh/inbox/d/t;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/d/t;->a(Lcom/pushwoosh/function/Result;)V

    return-void
.end method

.method private a(Lcom/pushwoosh/inbox/b/b/c;)V
    .locals 1

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/b/b/c;->a()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->b:Lcom/pushwoosh/inbox/e/a;

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/b/b/c;->a()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/pushwoosh/inbox/e/a;->a(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/pushwoosh/inbox/d/a/a;)V
    .locals 3

    if-eqz p1, :cond_1

    sget-object v0, Lcom/pushwoosh/inbox/d/a/a;->a:Lcom/pushwoosh/inbox/d/a/a;

    if-ne p1, v0, :cond_0

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/d/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/pushwoosh/inbox/d/a/a;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pushwoosh/inbox/d/b;->c(Ljava/util/Collection;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/d/a/a;->c()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/pushwoosh/inbox/event/a;

    invoke-direct {v1}, Lcom/pushwoosh/inbox/event/a;-><init>()V

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/d/a/a;->a()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pushwoosh/inbox/d/b;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/pushwoosh/inbox/event/a;->a(Ljava/util/Collection;)Lcom/pushwoosh/inbox/event/a;

    move-result-object p1

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {p0, v1}, Lcom/pushwoosh/inbox/d/b;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/pushwoosh/inbox/event/a;->b(Ljava/util/Collection;)Lcom/pushwoosh/inbox/event/a;

    move-result-object p1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/pushwoosh/inbox/event/a;->c(Ljava/util/Collection;)Lcom/pushwoosh/inbox/event/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/event/a;->a()Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;

    move-result-object p1

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->l:Landroid/os/Handler;

    invoke-static {p1}, Lcom/pushwoosh/inbox/d/f;->a(Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inbox/d/b;Landroid/util/Pair;)V
    .locals 2

    new-instance v0, Lcom/pushwoosh/inbox/event/a;

    invoke-direct {v0}, Lcom/pushwoosh/inbox/event/a;-><init>()V

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {p0, v1}, Lcom/pushwoosh/inbox/d/b;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/inbox/event/a;->b(Ljava/util/Collection;)Lcom/pushwoosh/inbox/event/a;

    move-result-object p0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/event/a;->c(Ljava/util/Collection;)Lcom/pushwoosh/inbox/event/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/pushwoosh/inbox/event/a;->a()Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inbox/d/b;Lcom/pushwoosh/function/Callback;JILcom/pushwoosh/function/Result;)V
    .locals 9

    new-instance v8, Lcom/pushwoosh/inbox/d/b$a;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/pushwoosh/inbox/d/b$a;-><init>(Lcom/pushwoosh/inbox/d/b;Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/function/Result;JILcom/pushwoosh/inbox/d/b$1;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v8, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inbox/d/b;Ljava/util/Map;Lcom/pushwoosh/function/Callback;)V
    .locals 6

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/pushwoosh/inbox/d/b;->b:Lcom/pushwoosh/inbox/e/a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-interface {v3, v4, v5}, Lcom/pushwoosh/inbox/e/a;->a(Ljava/lang/String;Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/pushwoosh/inbox/d/b;->l:Landroid/os/Handler;

    invoke-static {p0}, Lcom/pushwoosh/inbox/d/h;->a(Lcom/pushwoosh/inbox/d/b;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    :cond_1
    if-nez v3, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->OPEN:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    if-ne v4, v5, :cond_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-direct {p0, v4, v2, v3}, Lcom/pushwoosh/inbox/d/b;->a(Ljava/lang/String;Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;Z)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pushwoosh/inbox/d/b;->c(Ljava/util/Collection;)Landroid/util/Pair;

    move-result-object p1

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pushwoosh/inbox/internal/data/b;

    if-eqz p2, :cond_4

    iget-object v3, p0, Lcom/pushwoosh/inbox/d/b;->d:Lcom/pushwoosh/inbox/internal/b/b;

    invoke-virtual {v3, v2}, Lcom/pushwoosh/inbox/internal/b/b;->a(Lcom/pushwoosh/inbox/internal/data/b;)Lcom/pushwoosh/inbox/data/InboxMessage;

    move-result-object v2

    iget-object v3, p0, Lcom/pushwoosh/inbox/d/b;->l:Landroid/os/Handler;

    invoke-static {v2, p2}, Lcom/pushwoosh/inbox/d/i;->a(Lcom/pushwoosh/inbox/data/InboxMessage;Lcom/pushwoosh/function/Callback;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    iget-object p2, p0, Lcom/pushwoosh/inbox/d/b;->l:Landroid/os/Handler;

    invoke-static {p0, p1}, Lcom/pushwoosh/inbox/d/j;->a(Lcom/pushwoosh/inbox/d/b;Landroid/util/Pair;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inbox/d/b;ZLcom/pushwoosh/function/Callback;)V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->e:Lcom/pushwoosh/inbox/b/a/a;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/b/a/a;->check()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    sget-object p1, Lcom/pushwoosh/inbox/d/a/a;->a:Lcom/pushwoosh/inbox/d/a/a;

    invoke-static {p1}, Lcom/pushwoosh/function/Result;->fromData(Ljava/lang/Object;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pushwoosh/inbox/d/b;->a(Lcom/pushwoosh/function/Result;)V

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/pushwoosh/function/Result;->fromData(Ljava/lang/Object;)Lcom/pushwoosh/function/Result;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/pushwoosh/inbox/d/b;->e:Lcom/pushwoosh/inbox/b/a/a;

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/b/a/a;->b()V

    :try_start_0
    new-instance p1, Lcom/pushwoosh/inbox/b/b/b;

    invoke-direct {p1}, Lcom/pushwoosh/inbox/b/b/b;-><init>()V

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->a:Lcom/pushwoosh/internal/network/RequestManager;

    invoke-interface {v0, p1}, Lcom/pushwoosh/internal/network/RequestManager;->sendRequestSync(Lcom/pushwoosh/internal/network/PushRequest;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/inbox/b/b/c;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/pushwoosh/inbox/d/b;->a(Lcom/pushwoosh/inbox/b/b/c;)V

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/b/b/c;->b()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/pushwoosh/inbox/d/b;->a(Ljava/util/Collection;Z)Lcom/pushwoosh/inbox/e/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/e/a/a;->c()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/b/b/c;->a()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/pushwoosh/inbox/d/a/a;

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/e/a/a;->d()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/e/a/a;->f()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/b/b/c;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v2, p1, v0}, Lcom/pushwoosh/inbox/d/a/a;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-direct {p0, v1}, Lcom/pushwoosh/inbox/d/b;->a(Lcom/pushwoosh/inbox/d/a/a;)V

    invoke-static {v1}, Lcom/pushwoosh/function/Result;->fromData(Ljava/lang/Object;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p1

    invoke-static {p1}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/pushwoosh/inbox/d/a/a;->a:Lcom/pushwoosh/inbox/d/a/a;

    invoke-static {p1}, Lcom/pushwoosh/function/Result;->fromData(Ljava/lang/Object;)Lcom/pushwoosh/function/Result;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->e:Lcom/pushwoosh/inbox/b/a/a;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/b/a/a;->c()V

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->l:Landroid/os/Handler;

    invoke-static {p0}, Lcom/pushwoosh/inbox/d/g;->a(Lcom/pushwoosh/inbox/d/b;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1}, Lcom/pushwoosh/inbox/d/b;->a(Lcom/pushwoosh/function/Result;)V

    if-eqz p2, :cond_4

    invoke-interface {p2, p1}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/pushwoosh/inbox/d/b;->e:Lcom/pushwoosh/inbox/b/a/a;

    invoke-virtual {p0}, Lcom/pushwoosh/inbox/b/a/a;->c()V

    throw p1
.end method

.method static synthetic a(Lcom/pushwoosh/inbox/data/InboxMessage;Lcom/pushwoosh/function/Callback;)V
    .locals 1

    if-nez p0, :cond_0

    new-instance p0, Lcom/pushwoosh/inbox/exception/InboxMessagesException;

    const-string v0, "Unknown inbox"

    invoke-direct {p0, v0}, Lcom/pushwoosh/inbox/exception/InboxMessagesException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/pushwoosh/function/Result;->fromData(Ljava/lang/Object;)Lcom/pushwoosh/function/Result;

    move-result-object p0

    :goto_0
    invoke-interface {p1, p0}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;)V
    .locals 0

    invoke-static {p0}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;Z)V
    .locals 4

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->b:Lcom/pushwoosh/inbox/e/a;

    invoke-interface {v0, p1}, Lcom/pushwoosh/inbox/e/a;->a(Ljava/lang/String;)Lcom/pushwoosh/inbox/internal/data/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/internal/data/b;->m()Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    move-result-object v0

    sget-object v1, Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;->SERVICE:Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/pushwoosh/inbox/b/b/d;

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/internal/data/b;->b()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/internal/data/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/pushwoosh/inbox/b/b/d;-><init>(JLcom/pushwoosh/inbox/internal/data/InboxMessageStatus;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pushwoosh/inbox/d/b;->a:Lcom/pushwoosh/internal/network/RequestManager;

    invoke-interface {v1, v0}, Lcom/pushwoosh/internal/network/RequestManager;->sendRequest(Lcom/pushwoosh/internal/network/PushRequest;)V

    if-eqz p3, :cond_0

    sget-object p3, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->OPEN:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    if-ne p2, p3, :cond_0

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/internal/data/b;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/internal/data/b;->q()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/pushwoosh/inbox/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/pushwoosh/inbox/d/b;->c:Lcom/pushwoosh/internal/command/CommandApplayer;

    invoke-static {}, Lcom/pushwoosh/inbox/d/e;->a()Lcom/pushwoosh/internal/command/CommandType;

    move-result-object p2

    new-instance v1, Lcom/pushwoosh/internal/command/CommandParams;

    invoke-direct {v1, v0}, Lcom/pushwoosh/internal/command/CommandParams;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v1}, Lcom/pushwoosh/internal/command/CommandApplayer;->applyCommand(Lcom/pushwoosh/internal/command/CommandType;Lcom/pushwoosh/internal/command/CommandParams;)V

    return-void
.end method

.method private a(ZLcom/pushwoosh/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/pushwoosh/function/Callback<",
            "Lcom/pushwoosh/inbox/d/a/a;",
            "Lcom/pushwoosh/internal/network/NetworkException;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->e:Lcom/pushwoosh/inbox/b/a/a;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/b/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/pushwoosh/function/Result;->fromData(Ljava/lang/Object;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/pushwoosh/inbox/d/d;->a(Lcom/pushwoosh/inbox/d/b;ZLcom/pushwoosh/function/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/pushwoosh/internal/network/NetworkModule;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/pushwoosh/inbox/d/b;Lcom/pushwoosh/function/Result;)Lcom/pushwoosh/function/Result;
    .locals 2

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/pushwoosh/inbox/exception/InboxMessagesException;

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p1

    const-string v1, "Can\'t update count of the unread inboxMessages"

    invoke-direct {v0, v1, p1}, Lcom/pushwoosh/inbox/exception/InboxMessagesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    iget-object p0, p0, Lcom/pushwoosh/inbox/d/b;->b:Lcom/pushwoosh/inbox/e/a;

    invoke-interface {p0}, Lcom/pushwoosh/inbox/e/a;->a()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/pushwoosh/function/Result;->from(Ljava/lang/Object;Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    const-string v0, "pushStat"

    return-object v0
.end method

.method private b(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/internal/data/b;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pushwoosh/inbox/internal/data/b;

    iget-object v2, p0, Lcom/pushwoosh/inbox/d/b;->d:Lcom/pushwoosh/inbox/internal/b/b;

    invoke-virtual {v2, v1}, Lcom/pushwoosh/inbox/internal/b/b;->a(Lcom/pushwoosh/inbox/internal/data/b;)Lcom/pushwoosh/inbox/data/InboxMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/pushwoosh/inbox/d/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/inbox/d/b;->e()V

    return-void
.end method

.method private c(Ljava/util/Collection;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/internal/data/b;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->b:Lcom/pushwoosh/inbox/e/a;

    invoke-interface {v0, p1}, Lcom/pushwoosh/inbox/e/a;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pushwoosh/inbox/internal/data/b;

    invoke-virtual {v2}, Lcom/pushwoosh/inbox/internal/data/b;->p()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/pushwoosh/inbox/internal/data/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_3
    :goto_1
    new-instance p1, Landroid/util/Pair;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic c(Lcom/pushwoosh/inbox/d/b;Lcom/pushwoosh/function/Result;)Lcom/pushwoosh/function/Result;
    .locals 2

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/pushwoosh/inbox/exception/InboxMessagesException;

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p1

    const-string v1, "Can\'t update count of the inboxMessages with no action performed"

    invoke-direct {v0, v1, p1}, Lcom/pushwoosh/inbox/exception/InboxMessagesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    iget-object p0, p0, Lcom/pushwoosh/inbox/d/b;->b:Lcom/pushwoosh/inbox/e/a;

    invoke-interface {p0}, Lcom/pushwoosh/inbox/e/a;->b()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/pushwoosh/function/Result;->from(Ljava/lang/Object;Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 2

    new-instance v0, Lcom/pushwoosh/inbox/d/t;

    invoke-static {p0}, Lcom/pushwoosh/inbox/d/c;->a(Lcom/pushwoosh/inbox/d/b;)Lcom/pushwoosh/inbox/internal/b/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pushwoosh/inbox/d/t;-><init>(Lcom/pushwoosh/inbox/internal/b/c;)V

    iput-object v0, p0, Lcom/pushwoosh/inbox/d/b;->f:Lcom/pushwoosh/inbox/d/t;

    new-instance v0, Lcom/pushwoosh/inbox/d/t;

    invoke-static {p0}, Lcom/pushwoosh/inbox/d/k;->a(Lcom/pushwoosh/inbox/d/b;)Lcom/pushwoosh/inbox/internal/b/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pushwoosh/inbox/d/t;-><init>(Lcom/pushwoosh/inbox/internal/b/c;)V

    iput-object v0, p0, Lcom/pushwoosh/inbox/d/b;->g:Lcom/pushwoosh/inbox/d/t;

    new-instance v0, Lcom/pushwoosh/inbox/d/t;

    invoke-static {p0}, Lcom/pushwoosh/inbox/d/l;->a(Lcom/pushwoosh/inbox/d/b;)Lcom/pushwoosh/inbox/internal/b/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pushwoosh/inbox/d/t;-><init>(Lcom/pushwoosh/inbox/internal/b/c;)V

    iput-object v0, p0, Lcom/pushwoosh/inbox/d/b;->h:Lcom/pushwoosh/inbox/d/t;

    return-void
.end method

.method static synthetic c(Lcom/pushwoosh/inbox/d/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/inbox/d/b;->e()V

    return-void
.end method

.method private d()V
    .locals 2

    new-instance v0, Lcom/pushwoosh/inbox/d/v;

    iget-object v1, p0, Lcom/pushwoosh/inbox/d/b;->b:Lcom/pushwoosh/inbox/e/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/pushwoosh/inbox/d/m;->a(Lcom/pushwoosh/inbox/e/a;)Lcom/pushwoosh/inbox/d/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pushwoosh/inbox/d/v;-><init>(Lcom/pushwoosh/inbox/d/s;)V

    iput-object v0, p0, Lcom/pushwoosh/inbox/d/b;->i:Lcom/pushwoosh/inbox/d/v;

    new-instance v0, Lcom/pushwoosh/inbox/d/v;

    iget-object v1, p0, Lcom/pushwoosh/inbox/d/b;->b:Lcom/pushwoosh/inbox/e/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/pushwoosh/inbox/d/n;->a(Lcom/pushwoosh/inbox/e/a;)Lcom/pushwoosh/inbox/d/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pushwoosh/inbox/d/v;-><init>(Lcom/pushwoosh/inbox/d/s;)V

    iput-object v0, p0, Lcom/pushwoosh/inbox/d/b;->j:Lcom/pushwoosh/inbox/d/v;

    new-instance v0, Lcom/pushwoosh/inbox/d/v;

    iget-object v1, p0, Lcom/pushwoosh/inbox/d/b;->b:Lcom/pushwoosh/inbox/e/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/pushwoosh/inbox/d/o;->a(Lcom/pushwoosh/inbox/e/a;)Lcom/pushwoosh/inbox/d/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pushwoosh/inbox/d/v;-><init>(Lcom/pushwoosh/inbox/d/s;)V

    iput-object v0, p0, Lcom/pushwoosh/inbox/d/b;->k:Lcom/pushwoosh/inbox/d/v;

    return-void
.end method

.method static synthetic d(Lcom/pushwoosh/inbox/d/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/inbox/d/b;->e()V

    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->k:Lcom/pushwoosh/inbox/d/v;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/d/v;->a()V

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->i:Lcom/pushwoosh/inbox/d/v;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/d/v;->a()V

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->j:Lcom/pushwoosh/inbox/d/v;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/d/v;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pushwoosh/inbox/data/InboxMessage;I)Ljava/util/Collection;
    .locals 2
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

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/pushwoosh/inbox/internal/data/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/pushwoosh/inbox/exception/InboxMessagesException;

    const-string p2, "Provided InboxMessage is not instance of InboxMessageImpl"

    invoke-direct {p1, p2}, Lcom/pushwoosh/inbox/exception/InboxMessagesException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/pushwoosh/inbox/d/b;->a(Lcom/pushwoosh/inbox/data/InboxMessage;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/pushwoosh/inbox/d/b;->b:Lcom/pushwoosh/inbox/e/a;

    invoke-interface {p1, v0, v1, p2}, Lcom/pushwoosh/inbox/e/a;->a(JI)Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pushwoosh/inbox/d/b;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/pushwoosh/inbox/d/b;->a(Ljava/util/Collection;Z)Lcom/pushwoosh/inbox/e/a/a;

    return-void
.end method

.method public a(Lcom/pushwoosh/function/Callback;)V
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

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->g:Lcom/pushwoosh/inbox/d/t;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/d/t;->a(Lcom/pushwoosh/function/Callback;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pushwoosh/inbox/d/b;->a(ZLcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public a(Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/inbox/data/InboxMessage;I)V
    .locals 8
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

    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/pushwoosh/inbox/internal/data/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/pushwoosh/inbox/exception/InboxMessagesException;

    const-string p2, "Provided InboxMessage is not instance of InboxMessageImpl"

    invoke-direct {p1, p2}, Lcom/pushwoosh/inbox/exception/InboxMessagesException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/pushwoosh/inbox/d/b;->a(Lcom/pushwoosh/inbox/data/InboxMessage;)J

    move-result-wide v4

    new-instance p2, Lcom/pushwoosh/inbox/d/b$a;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/pushwoosh/inbox/d/b$a;-><init>(Lcom/pushwoosh/inbox/d/b;Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/function/Result;JILcom/pushwoosh/inbox/d/b$1;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public a(Lcom/pushwoosh/inbox/internal/data/b;)V
    .locals 3

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/internal/data/b;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pushwoosh/inbox/d/b;->a(Ljava/util/Collection;Z)Lcom/pushwoosh/inbox/e/a/a;

    move-result-object p1

    new-instance v0, Lcom/pushwoosh/inbox/d/a/a;

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/e/a/a;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/e/a/a;->f()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/e/a/a;->c()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/pushwoosh/inbox/d/a/a;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/pushwoosh/inbox/d/b;->a(Lcom/pushwoosh/inbox/d/a/a;)V

    iget-object p1, p0, Lcom/pushwoosh/inbox/d/b;->l:Landroid/os/Handler;

    invoke-static {p0}, Lcom/pushwoosh/inbox/d/p;->a(Lcom/pushwoosh/inbox/d/b;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pushwoosh/inbox/d/b;->a(ZLcom/pushwoosh/function/Callback;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;Lcom/pushwoosh/function/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;",
            "Lcom/pushwoosh/function/Callback<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/pushwoosh/inbox/d/b;->a(Ljava/util/Map;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public a(Ljava/util/Map;Lcom/pushwoosh/function/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;",
            ">;",
            "Lcom/pushwoosh/function/Callback<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/pushwoosh/inbox/d/q;->a(Lcom/pushwoosh/inbox/d/b;Ljava/util/Map;Lcom/pushwoosh/function/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/pushwoosh/internal/network/NetworkModule;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/pushwoosh/function/Callback;)V
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

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->j:Lcom/pushwoosh/inbox/d/v;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/d/v;->a(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public b(Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/inbox/data/InboxMessage;I)V
    .locals 2
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

    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/pushwoosh/inbox/internal/data/a;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    new-instance p2, Lcom/pushwoosh/inbox/exception/InboxMessagesException;

    const-string p3, "Provided InboxMessage is not instance of InboxMessageImpl"

    invoke-direct {p2, p3}, Lcom/pushwoosh/inbox/exception/InboxMessagesException;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/pushwoosh/inbox/d/b;->a(Lcom/pushwoosh/inbox/data/InboxMessage;)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1, p3}, Lcom/pushwoosh/inbox/d/r;->a(Lcom/pushwoosh/inbox/d/b;Lcom/pushwoosh/function/Callback;JI)Lcom/pushwoosh/function/Callback;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/pushwoosh/inbox/d/b;->a(ZLcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public c(Lcom/pushwoosh/function/Callback;)V
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

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->j:Lcom/pushwoosh/inbox/d/v;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/d/v;->b(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public d(Lcom/pushwoosh/function/Callback;)V
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

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->f:Lcom/pushwoosh/inbox/d/t;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/d/t;->a(Lcom/pushwoosh/function/Callback;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pushwoosh/inbox/d/b;->a(ZLcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public e(Lcom/pushwoosh/function/Callback;)V
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

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->i:Lcom/pushwoosh/inbox/d/v;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/d/v;->a(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public f(Lcom/pushwoosh/function/Callback;)V
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

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->i:Lcom/pushwoosh/inbox/d/v;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/d/v;->b(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public g(Lcom/pushwoosh/function/Callback;)V
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

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->h:Lcom/pushwoosh/inbox/d/t;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/d/t;->a(Lcom/pushwoosh/function/Callback;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pushwoosh/inbox/d/b;->a(ZLcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public h(Lcom/pushwoosh/function/Callback;)V
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

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->k:Lcom/pushwoosh/inbox/d/v;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/d/v;->a(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public i(Lcom/pushwoosh/function/Callback;)V
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

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b;->k:Lcom/pushwoosh/inbox/d/v;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/d/v;->b(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

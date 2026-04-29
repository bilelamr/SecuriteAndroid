.class Lcom/pushwoosh/inbox/d/t;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/function/Callback<",
            "TT;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/pushwoosh/inbox/internal/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/inbox/internal/b/c<",
            "Lcom/pushwoosh/function/Result<",
            "Lcom/pushwoosh/inbox/d/a/a;",
            "Lcom/pushwoosh/internal/network/NetworkException;",
            ">;",
            "Lcom/pushwoosh/function/Result<",
            "TT;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/pushwoosh/inbox/internal/b/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/inbox/internal/b/c<",
            "Lcom/pushwoosh/function/Result<",
            "Lcom/pushwoosh/inbox/d/a/a;",
            "Lcom/pushwoosh/internal/network/NetworkException;",
            ">;",
            "Lcom/pushwoosh/function/Result<",
            "TT;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/inbox/d/t;->a:Ljava/util/Collection;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pushwoosh/inbox/d/t;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/pushwoosh/inbox/d/t;->c:Lcom/pushwoosh/inbox/internal/b/c;

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inbox/d/t;Lcom/pushwoosh/function/Result;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/t;->c:Lcom/pushwoosh/inbox/internal/b/c;

    invoke-interface {v0, p1}, Lcom/pushwoosh/inbox/internal/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/function/Result;

    invoke-direct {p0, p1}, Lcom/pushwoosh/inbox/d/t;->b(Lcom/pushwoosh/function/Result;)V

    return-void
.end method

.method private b(Lcom/pushwoosh/function/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Result<",
            "TT;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/t;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pushwoosh/function/Callback;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    iget-object v2, p0, Lcom/pushwoosh/inbox/d/t;->a:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error occurred while processing Callback"

    invoke-static {v2, v1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/pushwoosh/inbox/d/t;->a:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return-void
.end method


# virtual methods
.method a(Lcom/pushwoosh/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "TT;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inbox/d/t;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Lcom/pushwoosh/function/Result;)V
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

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/t;->b:Landroid/os/Handler;

    invoke-static {p0, p1}, Lcom/pushwoosh/inbox/d/u;->a(Lcom/pushwoosh/inbox/d/t;Lcom/pushwoosh/function/Result;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

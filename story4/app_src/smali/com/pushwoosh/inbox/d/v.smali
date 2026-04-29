.class Lcom/pushwoosh/inbox/d/v;
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

.field private final b:Lcom/pushwoosh/inbox/d/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/inbox/d/s<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/pushwoosh/inbox/d/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/inbox/d/s<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/inbox/d/v;->a:Ljava/util/Collection;

    iput-object p1, p0, Lcom/pushwoosh/inbox/d/v;->b:Lcom/pushwoosh/inbox/d/s;

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inbox/d/v;Lcom/pushwoosh/function/Result;)V
    .locals 2

    iget-object p0, p0, Lcom/pushwoosh/inbox/d/v;->a:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/function/Callback;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error occurred while processing Callback"

    invoke-static {v1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    new-instance v0, Lcom/pushwoosh/inbox/d/a;

    iget-object v1, p0, Lcom/pushwoosh/inbox/d/v;->b:Lcom/pushwoosh/inbox/d/s;

    invoke-static {p0}, Lcom/pushwoosh/inbox/d/w;->a(Lcom/pushwoosh/inbox/d/v;)Lcom/pushwoosh/function/Callback;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/pushwoosh/inbox/d/a;-><init>(Lcom/pushwoosh/inbox/d/s;Lcom/pushwoosh/function/Callback;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

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
    iget-object v0, p0, Lcom/pushwoosh/inbox/d/v;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Lcom/pushwoosh/function/Callback;)V
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
    iget-object v0, p0, Lcom/pushwoosh/inbox/d/v;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

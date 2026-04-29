.class Lcom/pushwoosh/inbox/d/b$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/inbox/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Collection<",
        "Lcom/pushwoosh/inbox/data/InboxMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/pushwoosh/inbox/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/pushwoosh/function/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/pushwoosh/function/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/function/Result<",
            "Lcom/pushwoosh/inbox/d/a/a;",
            "Lcom/pushwoosh/internal/network/NetworkException;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:I


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inbox/d/b;Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/function/Result;JI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/inbox/d/b;",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;",
            "Lcom/pushwoosh/function/Result<",
            "Lcom/pushwoosh/inbox/d/a/a;",
            "Lcom/pushwoosh/internal/network/NetworkException;",
            ">;JI)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pushwoosh/inbox/d/b$a;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/pushwoosh/inbox/d/b$a;->b:Lcom/pushwoosh/function/Callback;

    iput-object p3, p0, Lcom/pushwoosh/inbox/d/b$a;->c:Lcom/pushwoosh/function/Result;

    iput-wide p4, p0, Lcom/pushwoosh/inbox/d/b$a;->d:J

    iput p6, p0, Lcom/pushwoosh/inbox/d/b$a;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/pushwoosh/inbox/d/b;Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/function/Result;JILcom/pushwoosh/inbox/d/b$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/pushwoosh/inbox/d/b$a;-><init>(Lcom/pushwoosh/inbox/d/b;Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/function/Result;JI)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/pushwoosh/inbox/d/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/inbox/d/b;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/pushwoosh/inbox/d/b;->a(Lcom/pushwoosh/inbox/d/b;)Lcom/pushwoosh/inbox/e/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/pushwoosh/inbox/d/b$a;->d:J

    iget v3, p0, Lcom/pushwoosh/inbox/d/b$a;->e:I

    invoke-interface {v0, v1, v2, v3}, Lcom/pushwoosh/inbox/e/a;->a(JI)Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pushwoosh/inbox/d/b;->a(Lcom/pushwoosh/inbox/d/b;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b$a;->c:Lcom/pushwoosh/function/Result;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/pushwoosh/inbox/exception/InboxMessagesException;

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b$a;->c:Lcom/pushwoosh/function/Result;

    invoke-virtual {v0}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object v0

    const-string v2, "Can\'t load inboxList"

    invoke-direct {v1, v2, v0}, Lcom/pushwoosh/inbox/exception/InboxMessagesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/pushwoosh/inbox/d/b$a;->b:Lcom/pushwoosh/function/Callback;

    if-eqz v0, :cond_2

    invoke-static {p1, v1}, Lcom/pushwoosh/function/Result;->from(Ljava/lang/Object;Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    :cond_2
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/d/b$a;->a([Ljava/lang/Void;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/d/b$a;->a(Ljava/util/Collection;)V

    return-void
.end method

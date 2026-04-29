.class Lcom/pushwoosh/inbox/d/a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/pushwoosh/inbox/d/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/inbox/d/s<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/pushwoosh/function/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/function/Callback<",
            "TT;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pushwoosh/inbox/d/s;Lcom/pushwoosh/function/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/inbox/d/s<",
            "TT;>;",
            "Lcom/pushwoosh/function/Callback<",
            "TT;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/d/a;->a:Lcom/pushwoosh/inbox/d/s;

    iput-object p2, p0, Lcom/pushwoosh/inbox/d/a;->b:Lcom/pushwoosh/function/Callback;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    iget-object p1, p0, Lcom/pushwoosh/inbox/d/a;->a:Lcom/pushwoosh/inbox/d/s;

    invoke-interface {p1}, Lcom/pushwoosh/inbox/d/s;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/d/a;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/a;->b:Lcom/pushwoosh/function/Callback;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/pushwoosh/function/Result;->fromData(Ljava/lang/Object;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    :cond_0
    return-void
.end method

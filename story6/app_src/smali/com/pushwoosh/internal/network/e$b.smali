.class Lcom/pushwoosh/internal/network/e$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/internal/network/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Response:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/pushwoosh/function/Result<",
        "TResponse;",
        "Lcom/pushwoosh/internal/network/NetworkException;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/pushwoosh/internal/network/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/pushwoosh/internal/network/PushRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/internal/network/PushRequest<",
            "TResponse;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Lcom/pushwoosh/function/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/function/Callback<",
            "TResponse;",
            "Lcom/pushwoosh/internal/network/NetworkException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/pushwoosh/internal/network/e;Lcom/pushwoosh/internal/network/PushRequest;Ljava/lang/String;Lcom/pushwoosh/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/internal/network/e;",
            "Lcom/pushwoosh/internal/network/PushRequest<",
            "TResponse;>;",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/function/Callback<",
            "TResponse;",
            "Lcom/pushwoosh/internal/network/NetworkException;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pushwoosh/internal/network/e$b;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/pushwoosh/internal/network/e$b;->b:Lcom/pushwoosh/internal/network/PushRequest;

    iput-object p3, p0, Lcom/pushwoosh/internal/network/e$b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/pushwoosh/internal/network/e$b;->d:Lcom/pushwoosh/function/Callback;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/pushwoosh/function/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/pushwoosh/function/Result<",
            "TResponse;",
            "Lcom/pushwoosh/internal/network/NetworkException;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/pushwoosh/internal/network/e$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pushwoosh/internal/network/e$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/internal/network/e;

    iget-object v0, p0, Lcom/pushwoosh/internal/network/e$b;->b:Lcom/pushwoosh/internal/network/PushRequest;

    iget-object v1, p0, Lcom/pushwoosh/internal/network/e$b;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/pushwoosh/internal/network/e;->a(Lcom/pushwoosh/internal/network/e;Lcom/pushwoosh/internal/network/PushRequest;Ljava/lang/String;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Lcom/pushwoosh/function/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Result<",
            "TResponse;",
            "Lcom/pushwoosh/internal/network/NetworkException;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/internal/network/e$b;->d:Lcom/pushwoosh/function/Callback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/internal/network/e$b;->a([Ljava/lang/Void;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/pushwoosh/function/Result;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/internal/network/e$b;->a(Lcom/pushwoosh/function/Result;)V

    return-void
.end method

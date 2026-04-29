.class abstract Lcom/pushwoosh/inapp/c$d;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/inapp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/pushwoosh/inapp/e/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/pushwoosh/inapp/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/pushwoosh/inapp/c$a;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/inapp/c;Lcom/pushwoosh/inapp/c$a;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pushwoosh/inapp/c$d;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/pushwoosh/inapp/c$d;->b:Lcom/pushwoosh/inapp/c$a;

    return-void
.end method


# virtual methods
.method protected a(Lcom/pushwoosh/inapp/e/b/b;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/inapp/c$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/inapp/c$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/inapp/c;

    invoke-static {v0, p1}, Lcom/pushwoosh/inapp/c;->a(Lcom/pushwoosh/inapp/c;Lcom/pushwoosh/inapp/e/b/b;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/pushwoosh/inapp/c$d;->b:Lcom/pushwoosh/inapp/c$a;

    invoke-interface {p1}, Lcom/pushwoosh/inapp/c$a;->a()V

    :goto_0
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/pushwoosh/inapp/e/b/b;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inapp/c$d;->a(Lcom/pushwoosh/inapp/e/b/b;)V

    return-void
.end method

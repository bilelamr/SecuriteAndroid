.class Lcom/pushwoosh/inapp/view/b/a$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/inapp/view/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/pushwoosh/inapp/view/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/pushwoosh/inapp/e/b/b;

.field private final c:Lcom/pushwoosh/inapp/view/b/a$a;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/inapp/view/b/a;Lcom/pushwoosh/inapp/e/b/b;Lcom/pushwoosh/inapp/view/b/a$a;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/b/a$b;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/pushwoosh/inapp/view/b/a$b;->b:Lcom/pushwoosh/inapp/e/b/b;

    iput-object p3, p0, Lcom/pushwoosh/inapp/view/b/a$b;->c:Lcom/pushwoosh/inapp/view/b/a$a;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/b/a$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/b/a$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/inapp/view/b/a;

    invoke-static {p1}, Lcom/pushwoosh/inapp/view/b/a;->a(Lcom/pushwoosh/inapp/view/b/a;)Lcom/pushwoosh/inapp/f/c;

    move-result-object p1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/b/a$b;->b:Lcom/pushwoosh/inapp/e/b/b;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/pushwoosh/inapp/f/c;->d(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/b/a$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/b/a$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/inapp/view/b/a;

    invoke-static {p1}, Lcom/pushwoosh/inapp/view/b/a;->b(Lcom/pushwoosh/inapp/view/b/a;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/b/a$b;->b:Lcom/pushwoosh/inapp/e/b/b;

    invoke-static {p1, v0}, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->a(Landroid/content/Context;Lcom/pushwoosh/inapp/e/b/b;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/pushwoosh/inapp/view/b/a$b;->c:Lcom/pushwoosh/inapp/view/b/a$a;

    invoke-interface {p1}, Lcom/pushwoosh/inapp/view/b/a$a;->a()V

    :goto_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inapp/view/b/a$b;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inapp/view/b/a$b;->a(Ljava/lang/Boolean;)V

    return-void
.end method

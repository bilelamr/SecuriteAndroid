.class public Lcom/pushwoosh/inapp/view/b;
.super Landroid/app/Fragment;

# interfaces
.implements Lcom/pushwoosh/inapp/view/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/inapp/view/b$a;,
        Lcom/pushwoosh/inapp/view/b$b;
    }
.end annotation


# instance fields
.field private a:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/pushwoosh/function/Result<",
            "Lcom/pushwoosh/inapp/d/a;",
            "Lcom/pushwoosh/inapp/b/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/pushwoosh/inapp/view/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/pushwoosh/inapp/view/b$b;

.field private d:Lcom/pushwoosh/inapp/d/a;

.field private e:Lcom/pushwoosh/inapp/b/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/b;->b:Ljava/lang/ref/WeakReference;

    sget-object v0, Lcom/pushwoosh/inapp/view/b$b;->d:Lcom/pushwoosh/inapp/view/b$b;

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/b;->c:Lcom/pushwoosh/inapp/view/b$b;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inapp/e/b/b;)Lcom/pushwoosh/inapp/view/b;
    .locals 3

    new-instance v0, Lcom/pushwoosh/inapp/view/b;

    invoke-direct {v0}, Lcom/pushwoosh/inapp/view/b;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "keyInapp"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private b(Lcom/pushwoosh/function/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Result<",
            "Lcom/pushwoosh/inapp/d/a;",
            "Lcom/pushwoosh/inapp/b/a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pushwoosh/inapp/view/b$b;->b:Lcom/pushwoosh/inapp/view/b$b;

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/b;->c:Lcom/pushwoosh/inapp/view/b$b;

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/inapp/d/a;

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/b;->d:Lcom/pushwoosh/inapp/d/a;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/pushwoosh/inapp/view/b$b;->c:Lcom/pushwoosh/inapp/view/b$b;

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/b;->c:Lcom/pushwoosh/inapp/view/b$b;

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/inapp/b/a;

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/b;->e:Lcom/pushwoosh/inapp/b/a;

    :goto_0
    return-void
.end method

.method private c(Lcom/pushwoosh/function/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Result<",
            "Lcom/pushwoosh/inapp/d/a;",
            "Lcom/pushwoosh/inapp/b/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/inapp/view/b$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/inapp/d/a;

    invoke-interface {v0, p1}, Lcom/pushwoosh/inapp/view/b$a;->a(Lcom/pushwoosh/inapp/d/a;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {v0}, Lcom/pushwoosh/inapp/view/b$a;->b()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/pushwoosh/inapp/view/b$a;->b()V

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/inapp/b/a;

    invoke-interface {v0, p1}, Lcom/pushwoosh/inapp/view/b$a;->a(Lcom/pushwoosh/inapp/b/a;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-object v0, Lcom/pushwoosh/inapp/view/b$b;->a:Lcom/pushwoosh/inapp/view/b$b;

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/b;->c:Lcom/pushwoosh/inapp/view/b$b;

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/inapp/view/b$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pushwoosh/inapp/view/b$a;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/pushwoosh/function/Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Result<",
            "Lcom/pushwoosh/inapp/d/a;",
            "Lcom/pushwoosh/inapp/b/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/pushwoosh/inapp/view/b;->b(Lcom/pushwoosh/function/Result;)V

    invoke-direct {p0, p1}, Lcom/pushwoosh/inapp/view/b;->c(Lcom/pushwoosh/function/Result;)V

    return-void
.end method

.method public b()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/pushwoosh/inapp/view/b$a;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/pushwoosh/inapp/view/b$a;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/b;->b:Ljava/lang/ref/WeakReference;

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inapp/view/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/inapp/view/b$a;

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/pushwoosh/inapp/view/b$1;->a:[I

    iget-object v2, p0, Lcom/pushwoosh/inapp/view/b;->c:Lcom/pushwoosh/inapp/view/b$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "keyInapp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/inapp/e/b/b;

    invoke-virtual {p0, v0}, Lcom/pushwoosh/inapp/view/b;->b(Lcom/pushwoosh/inapp/e/b/b;)V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lcom/pushwoosh/inapp/view/b$a;->a()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/pushwoosh/inapp/view/b;->e:Lcom/pushwoosh/inapp/b/a;

    invoke-interface {v0, v1}, Lcom/pushwoosh/inapp/view/b$a;->a(Lcom/pushwoosh/inapp/b/a;)V

    invoke-interface {v0}, Lcom/pushwoosh/inapp/view/b$a;->b()V

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Lcom/pushwoosh/inapp/view/b$a;->b()V

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/b;->d:Lcom/pushwoosh/inapp/d/a;

    invoke-interface {v0, v1}, Lcom/pushwoosh/inapp/view/b$a;->a(Lcom/pushwoosh/inapp/d/a;)Z

    :goto_0
    return-void
.end method

.method public b(Lcom/pushwoosh/inapp/e/b/b;)V
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/view/a;

    invoke-direct {v0, p1, p0}, Lcom/pushwoosh/inapp/view/a;-><init>(Lcom/pushwoosh/inapp/e/b/b;Lcom/pushwoosh/inapp/view/a$a;)V

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/b;->a:Landroid/os/AsyncTask;

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/b;->a:Landroid/os/AsyncTask;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/pushwoosh/inapp/view/b;->b()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setRetainInstance(Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "keyInapp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/inapp/e/b/b;

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/pushwoosh/inapp/view/b;->b(Lcom/pushwoosh/inapp/e/b/b;)V

    return-void

    :cond_1
    const-string v1, "[InApp]InAppFragment.key_STATE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/pushwoosh/inapp/view/b$b;->values()[Lcom/pushwoosh/inapp/view/b$b;

    move-result-object v2

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/pushwoosh/inapp/view/b;->c:Lcom/pushwoosh/inapp/view/b$b;

    const-string v1, "[InApp]InAppFragment.key_HTML_DATA"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/pushwoosh/inapp/d/a;

    iput-object v1, p0, Lcom/pushwoosh/inapp/view/b;->d:Lcom/pushwoosh/inapp/d/a;

    const-string v1, "[InApp]InAppFragment.key_ERROR"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/inapp/b/a;

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/b;->e:Lcom/pushwoosh/inapp/b/a;

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/b;->c:Lcom/pushwoosh/inapp/view/b$b;

    sget-object v1, Lcom/pushwoosh/inapp/view/b$b;->b:Lcom/pushwoosh/inapp/view/b$b;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/pushwoosh/inapp/view/b$b;->c:Lcom/pushwoosh/inapp/view/b$b;

    if-eq p1, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/pushwoosh/inapp/view/b;->b(Lcom/pushwoosh/inapp/e/b/b;)V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/b;->a:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/b;->a:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/b;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/b;->e:Lcom/pushwoosh/inapp/b/a;

    const-string v1, "[InApp]InAppFragment.key_ERROR"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/b;->d:Lcom/pushwoosh/inapp/d/a;

    const-string v1, "[InApp]InAppFragment.key_HTML_DATA"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/b;->c:Lcom/pushwoosh/inapp/view/b$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "[InApp]InAppFragment.key_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

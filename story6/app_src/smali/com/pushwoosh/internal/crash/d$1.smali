.class final Lcom/pushwoosh/internal/crash/d$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/internal/crash/d;->a(Lcom/pushwoosh/internal/crash/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pushwoosh/internal/crash/f;


# direct methods
.method constructor <init>(Lcom/pushwoosh/internal/crash/f;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/internal/crash/d$1;->a:Lcom/pushwoosh/internal/crash/f;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0

    invoke-static {}, Lcom/pushwoosh/internal/crash/d;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/internal/crash/d$1;->a:Lcom/pushwoosh/internal/crash/f;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/crash/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object p1, p0, Lcom/pushwoosh/internal/crash/d$1;->a:Lcom/pushwoosh/internal/crash/f;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/pushwoosh/internal/crash/f;->e()V

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/pushwoosh/internal/crash/d$1;->a:Lcom/pushwoosh/internal/crash/f;

    invoke-static {p1, v0}, Lcom/pushwoosh/internal/crash/d;->a(Lcom/pushwoosh/internal/crash/f;Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/pushwoosh/internal/crash/d$1;->a:Lcom/pushwoosh/internal/crash/f;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/pushwoosh/internal/crash/f;->f()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/pushwoosh/internal/crash/d$1;->a:Lcom/pushwoosh/internal/crash/f;

    invoke-static {p1, v0}, Lcom/pushwoosh/internal/crash/d;->b(Lcom/pushwoosh/internal/crash/f;Z)V

    :goto_2
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/internal/crash/d$1;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/internal/crash/d$1;->a(Ljava/lang/Integer;)V

    return-void
.end method

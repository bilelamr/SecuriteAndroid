.class Lcom/pushwoosh/internal/utils/LockScreenReceiver$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/internal/utils/LockScreenReceiver;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pushwoosh/internal/utils/LockScreenReceiver$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/internal/utils/LockScreenReceiver$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getLockScreenMediaStorage()Lcom/pushwoosh/repository/n;

    move-result-object p1

    invoke-interface {p1}, Lcom/pushwoosh/repository/n;->a()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/q;->j()Lcom/pushwoosh/richmedia/a;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "LockScreenReceiver"

    const-string v1, "RichMediaController is null"

    invoke-static {p1, v1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pushwoosh/inapp/view/b/a/b;

    invoke-virtual {v1, v2}, Lcom/pushwoosh/richmedia/a;->a(Lcom/pushwoosh/inapp/view/b/a/b;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getLockScreenMediaStorage()Lcom/pushwoosh/repository/n;

    move-result-object p1

    invoke-interface {p1}, Lcom/pushwoosh/repository/n;->b()V

    :cond_3
    :goto_1
    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/internal/utils/LockScreenReceiver$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

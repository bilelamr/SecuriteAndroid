.class Lcom/pushwoosh/notification/handlers/message/user/b$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/notification/handlers/message/user/b;
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


# instance fields
.field private final a:Lcom/pushwoosh/inapp/view/b/a/b;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/inapp/view/b/a/b;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/notification/handlers/message/user/b$a;->a:Lcom/pushwoosh/inapp/view/b/a/b;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/q;->j()Lcom/pushwoosh/richmedia/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/notification/handlers/message/user/b$a;->a:Lcom/pushwoosh/inapp/view/b/a/b;

    invoke-virtual {p1, v0}, Lcom/pushwoosh/richmedia/a;->a(Lcom/pushwoosh/inapp/view/b/a/b;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/notification/handlers/message/user/b$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

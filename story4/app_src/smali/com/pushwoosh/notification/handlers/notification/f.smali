.class Lcom/pushwoosh/notification/handlers/notification/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/notification/handlers/notification/PushNotificationOpenHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postHandleNotification(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->G(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/pushwoosh/inapp/view/b/a/b$a;

    invoke-direct {v0}, Lcom/pushwoosh/inapp/view/b/a/b$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/view/b/a/b$a;->b(Ljava/lang/String;)Lcom/pushwoosh/inapp/view/b/a/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/b/a/b$a;->a()Lcom/pushwoosh/inapp/view/b/a/b;

    move-result-object p1

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->j()Lcom/pushwoosh/richmedia/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/pushwoosh/richmedia/a;->a(Lcom/pushwoosh/inapp/view/b/a/b;)V

    :cond_1
    return-void
.end method

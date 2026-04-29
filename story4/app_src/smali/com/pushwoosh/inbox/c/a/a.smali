.class public Lcom/pushwoosh/inbox/c/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public preHandleMessage(Landroid/os/Bundle;)Z
    .locals 3

    invoke-static {p1}, Lcom/pushwoosh/inbox/c/a;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/pushwoosh/inbox/internal/b;->a()Lcom/pushwoosh/inbox/d/b;

    move-result-object v0

    new-instance v2, Lcom/pushwoosh/inbox/internal/data/b$a;

    invoke-direct {v2}, Lcom/pushwoosh/inbox/internal/data/b$a;-><init>()V

    invoke-virtual {v2, p1}, Lcom/pushwoosh/inbox/internal/data/b$a;->a(Landroid/os/Bundle;)Lcom/pushwoosh/inbox/internal/data/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/internal/data/b$a;->a()Lcom/pushwoosh/inbox/internal/data/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/d/b;->a(Lcom/pushwoosh/inbox/internal/data/b;)V

    return v1
.end method

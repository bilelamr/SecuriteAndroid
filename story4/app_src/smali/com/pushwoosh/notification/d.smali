.class Lcom/pushwoosh/notification/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/pushwoosh/internal/chain/Chain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/internal/chain/Chain<",
            "Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/pushwoosh/internal/chain/Chain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/internal/chain/Chain<",
            "Lcom/pushwoosh/notification/handlers/message/user/MessageHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/pushwoosh/internal/chain/Chain;Lcom/pushwoosh/internal/chain/Chain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/internal/chain/Chain<",
            "Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandler;",
            ">;",
            "Lcom/pushwoosh/internal/chain/Chain<",
            "Lcom/pushwoosh/notification/handlers/message/user/MessageHandler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/notification/d;->a:Lcom/pushwoosh/internal/chain/Chain;

    iput-object p2, p0, Lcom/pushwoosh/notification/d;->b:Lcom/pushwoosh/internal/chain/Chain;

    return-void
.end method


# virtual methods
.method a(Lcom/pushwoosh/notification/PushMessage;Z)V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/notification/d;->b:Lcom/pushwoosh/internal/chain/Chain;

    invoke-interface {v0}, Lcom/pushwoosh/internal/chain/Chain;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pushwoosh/notification/handlers/message/user/MessageHandler;

    if-eqz p2, :cond_1

    instance-of v2, v1, Lcom/pushwoosh/notification/handlers/a;

    if-eqz v2, :cond_0

    :cond_1
    invoke-interface {v1, p1}, Lcom/pushwoosh/notification/handlers/message/user/MessageHandler;->handlePushMessage(Lcom/pushwoosh/notification/PushMessage;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method a(Landroid/os/Bundle;)Z
    .locals 4

    iget-object v0, p0, Lcom/pushwoosh/notification/d;->a:Lcom/pushwoosh/internal/chain/Chain;

    invoke-interface {v0}, Lcom/pushwoosh/internal/chain/Chain;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandler;

    invoke-interface {v3, p1}, Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandler;->preHandleMessage(Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

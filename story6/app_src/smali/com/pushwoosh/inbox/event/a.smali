.class public Lcom/pushwoosh/inbox/event/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;
    .locals 4

    new-instance v0, Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;

    iget-object v1, p0, Lcom/pushwoosh/inbox/event/a;->a:Ljava/util/Collection;

    iget-object v2, p0, Lcom/pushwoosh/inbox/event/a;->b:Ljava/util/Collection;

    iget-object v3, p0, Lcom/pushwoosh/inbox/event/a;->c:Ljava/util/Collection;

    invoke-direct {v0, v1, v2, v3}, Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method

.method public a(Ljava/util/Collection;)Lcom/pushwoosh/inbox/event/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;)",
            "Lcom/pushwoosh/inbox/event/a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/pushwoosh/inbox/event/a;->a:Ljava/util/Collection;

    return-object p0
.end method

.method public b(Ljava/util/Collection;)Lcom/pushwoosh/inbox/event/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;)",
            "Lcom/pushwoosh/inbox/event/a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/pushwoosh/inbox/event/a;->b:Ljava/util/Collection;

    return-object p0
.end method

.method public c(Ljava/util/Collection;)Lcom/pushwoosh/inbox/event/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/pushwoosh/inbox/event/a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/pushwoosh/inbox/event/a;->c:Ljava/util/Collection;

    return-object p0
.end method

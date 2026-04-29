.class public Lcom/pushwoosh/inbox/internal/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inbox/internal/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pushwoosh/inbox/internal/b/c<",
        "Lcom/pushwoosh/inbox/data/InboxMessage;",
        "Lcom/pushwoosh/inbox/internal/data/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pushwoosh/inbox/data/InboxMessage;)Lcom/pushwoosh/inbox/internal/data/b;
    .locals 1

    instance-of v0, p1, Lcom/pushwoosh/inbox/internal/data/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/pushwoosh/inbox/internal/data/a;

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/internal/data/a;->a()Lcom/pushwoosh/inbox/internal/data/b;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/pushwoosh/inbox/internal/data/b$a;

    invoke-direct {v0}, Lcom/pushwoosh/inbox/internal/data/b$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/internal/data/b$a;->a(Lcom/pushwoosh/inbox/data/InboxMessage;)Lcom/pushwoosh/inbox/internal/data/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/internal/data/b$a;->a()Lcom/pushwoosh/inbox/internal/data/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/pushwoosh/inbox/data/InboxMessage;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/internal/b/a;->a(Lcom/pushwoosh/inbox/data/InboxMessage;)Lcom/pushwoosh/inbox/internal/data/b;

    move-result-object p1

    return-object p1
.end method

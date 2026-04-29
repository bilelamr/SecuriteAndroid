.class public Lcom/pushwoosh/inbox/internal/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inbox/internal/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pushwoosh/inbox/internal/b/c<",
        "Lcom/pushwoosh/inbox/internal/data/b;",
        "Lcom/pushwoosh/inbox/data/InboxMessage;",
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
.method public a(Lcom/pushwoosh/inbox/internal/data/b;)Lcom/pushwoosh/inbox/data/InboxMessage;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inbox/internal/data/a;

    invoke-direct {v0, p1}, Lcom/pushwoosh/inbox/internal/data/a;-><init>(Lcom/pushwoosh/inbox/internal/data/b;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/pushwoosh/inbox/internal/data/b;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/internal/b/b;->a(Lcom/pushwoosh/inbox/internal/data/b;)Lcom/pushwoosh/inbox/data/InboxMessage;

    move-result-object p1

    return-object p1
.end method

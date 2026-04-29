.class public Lcom/pushwoosh/inbox/e/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inbox/e/a;


# instance fields
.field private final a:Lcom/pushwoosh/inbox/e/b/b;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/inbox/e/b/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/e/b/a;->a:Lcom/pushwoosh/inbox/e/b/b;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inbox/e/b/a;->a:Lcom/pushwoosh/inbox/e/b/b;

    sget-object v1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->READ:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-virtual {v1}, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->getLowerStatus()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/e/b/b;->b(Ljava/util/Collection;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public a(Ljava/util/Collection;Z)Lcom/pushwoosh/inbox/e/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/internal/data/b;",
            ">;Z)",
            "Lcom/pushwoosh/inbox/e/a/a;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-static {}, Lcom/pushwoosh/inbox/e/a/a;->b()Lcom/pushwoosh/inbox/e/a/a;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inbox/e/b/a;->a:Lcom/pushwoosh/inbox/e/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/pushwoosh/inbox/e/b/b;->a(Ljava/util/Collection;Z)Lcom/pushwoosh/inbox/e/a/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/pushwoosh/inbox/internal/data/b;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/e/b/a;->a:Lcom/pushwoosh/inbox/e/b/b;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/e/b/b;->a(Ljava/lang/String;)Lcom/pushwoosh/inbox/internal/data/b;

    move-result-object p1

    return-object p1
.end method

.method public a(JI)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/internal/data/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inbox/e/b/a;->a:Lcom/pushwoosh/inbox/e/b/b;

    invoke-static {}, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->getActualCodes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/pushwoosh/inbox/e/b/b;->a(Ljava/util/Collection;JI)Ljava/util/Collection;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inbox/e/b/a;->a:Lcom/pushwoosh/inbox/e/b/b;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/pushwoosh/inbox/e/b/b;->a(Ljava/util/Collection;Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inbox/e/b/a;->a:Lcom/pushwoosh/inbox/e/b/b;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/e/b/b;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inbox/e/b/a;->a:Lcom/pushwoosh/inbox/e/b/b;

    sget-object v1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->OPEN:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-virtual {v1}, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->getLowerStatus()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/e/b/b;->b(Ljava/util/Collection;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public b(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/internal/data/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inbox/e/b/a;->a:Lcom/pushwoosh/inbox/e/b/b;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/e/b/b;->c(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inbox/e/b/a;->a:Lcom/pushwoosh/inbox/e/b/b;

    sget-object v1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->DELETED_BY_USER:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-virtual {v1}, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->getLowerStatus()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/e/b/b;->b(Ljava/util/Collection;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

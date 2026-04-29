.class public Lcom/pushwoosh/inbox/internal/data/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inbox/data/InboxMessage;


# instance fields
.field private final a:Lcom/pushwoosh/inbox/internal/data/b;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/inbox/internal/data/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/internal/data/a;->a:Lcom/pushwoosh/inbox/internal/data/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/pushwoosh/inbox/data/InboxMessage;)I
    .locals 1

    instance-of v0, p1, Lcom/pushwoosh/inbox/internal/data/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/a;->a:Lcom/pushwoosh/inbox/internal/data/b;

    check-cast p1, Lcom/pushwoosh/inbox/internal/data/a;

    iget-object p1, p1, Lcom/pushwoosh/inbox/internal/data/a;->a:Lcom/pushwoosh/inbox/internal/data/b;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/internal/data/b;->a(Lcom/pushwoosh/inbox/internal/data/b;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public a()Lcom/pushwoosh/inbox/internal/data/b;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/a;->a:Lcom/pushwoosh/inbox/internal/data/b;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/pushwoosh/inbox/data/InboxMessage;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/internal/data/a;->a(Lcom/pushwoosh/inbox/data/InboxMessage;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Lcom/pushwoosh/inbox/internal/data/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/pushwoosh/inbox/internal/data/a;

    iget-object v2, p0, Lcom/pushwoosh/inbox/internal/data/a;->a:Lcom/pushwoosh/inbox/internal/data/b;

    iget-object p1, p1, Lcom/pushwoosh/inbox/internal/data/a;->a:Lcom/pushwoosh/inbox/internal/data/b;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lcom/pushwoosh/inbox/internal/data/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getBannerUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/a;->a:Lcom/pushwoosh/inbox/internal/data/b;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/internal/data/b;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/a;->a:Lcom/pushwoosh/inbox/internal/data/b;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/internal/data/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/a;->a:Lcom/pushwoosh/inbox/internal/data/b;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/internal/data/b;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/a;->a:Lcom/pushwoosh/inbox/internal/data/b;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/internal/data/b;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSendDate()Ljava/util/Date;
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/a;->a:Lcom/pushwoosh/inbox/internal/data/b;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/internal/data/b;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/pushwoosh/inbox/internal/c/a;->a(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/a;->a:Lcom/pushwoosh/inbox/internal/data/b;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/internal/data/b;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/pushwoosh/inbox/data/InboxMessageType;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/a;->a:Lcom/pushwoosh/inbox/internal/data/b;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/internal/data/b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pushwoosh/inbox/c/a;->a(Ljava/lang/String;)Lcom/pushwoosh/inbox/data/InboxMessageType;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/a;->a:Lcom/pushwoosh/inbox/internal/data/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/internal/data/b;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActionPerformed()Z
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/a;->a:Lcom/pushwoosh/inbox/internal/data/b;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/internal/data/b;->o()Z

    move-result v0

    return v0
.end method

.method public isRead()Z
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/a;->a:Lcom/pushwoosh/inbox/internal/data/b;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/internal/data/b;->n()Z

    move-result v0

    return v0
.end method

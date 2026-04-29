.class public final Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;


# instance fields
.field private final a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/a;

.field private final b:Ljava/util/concurrent/locks/Lock;

.field private final c:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/a;

.field private final d:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/b;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;->a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/a;

    invoke-interface {p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/a;->c()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;->b:Ljava/util/concurrent/locks/Lock;

    iput-object p4, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;->d:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/b;

    iput-object p3, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;->c:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/a;

    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;->c:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/a;

    invoke-interface {v0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;->a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/a;

    invoke-interface {v1, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;->d:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/b;

    invoke-interface {v1, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/b;->b([B)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;->a(Ljava/lang/String;[B)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;

    invoke-virtual {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;->c:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/a;

    invoke-interface {v3, v2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;->c()[B

    move-result-object v0

    iget-object v3, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;->d:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/b;

    invoke-interface {v3, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/b;->a([B)[B

    move-result-object v0

    iget-object v3, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;->a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/a;

    invoke-interface {v3, v2, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/a;->a(Ljava/lang/String;[B)V

    :cond_1
    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;->a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/a;

    invoke-interface {v0, v2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private e()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;->a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/a;

    invoke-interface {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/a;->a()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;->b(Ljava/lang/String;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private f()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;->a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/a;

    invoke-interface {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/a;->a()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;->c:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/a;

    invoke-interface {v5, v4}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;->b(Ljava/lang/String;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;->b(Ljava/util/List;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/b;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

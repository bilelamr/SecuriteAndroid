.class final Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;

.field private final d:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/b;

.field private final e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;

.field private final f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;

.field private final g:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;

.field private final h:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;

.field private final i:Ljava/util/concurrent/locks/Lock;

.field private j:Z


# direct methods
.method constructor <init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/b;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;Ljava/util/concurrent/locks/Lock;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->b:Ljava/util/Set;

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->c:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;

    iput-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->d:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/b;

    iput-object p3, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;

    iput-object p4, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;

    iput-object p5, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->g:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;

    iput-object p6, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->h:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;

    iput-object p7, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->f()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
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

    invoke-virtual {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;->c()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;->a()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->d:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/b;

    invoke-interface {v3, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/b;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;->a()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->d:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/b;

    invoke-interface {v0, v1, v2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/b;->a(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b()Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;
    .locals 2

    invoke-direct {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->c()V

    invoke-direct {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->d()V

    invoke-direct {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->e()V

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;

    new-instance v1, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c$1;

    invoke-direct {v1, p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c$1;-><init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;)V

    invoke-interface {v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;->a(Ljava/lang/Runnable;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->h:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;

    invoke-interface {v2, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->g:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;

    invoke-interface {v2, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a;

    invoke-interface {v2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a;->b()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->h:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;

    invoke-interface {v3, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->g:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;

    invoke-interface {v3, v1, v2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    iget-boolean v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->j:Z

    return-void

    :cond_0
    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d/e;

    const-string v1, "Transaction should be applied or committed only once!"

    invoke-direct {v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d/e;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f()V
    .locals 2

    invoke-direct {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->g()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->c:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;

    invoke-interface {v1, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;->a(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->a(Ljava/util/List;)V

    return-void
.end method

.method private g()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private h()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;->a(Ljava/lang/String;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private i()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a;

    invoke-interface {v3}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a;->a()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;->b(Ljava/lang/String;[B)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public a()Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->h:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;

    invoke-interface {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;->a()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Ljava/lang/String;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public a(Ljava/lang/String;F)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/b;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;

    invoke-direct {v0, p2, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/b;-><init>(FLcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;)V

    iget-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public a(Ljava/lang/String;I)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/c;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;

    invoke-direct {v0, p2, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/c;-><init>(ILcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;)V

    iget-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public a(Ljava/lang/String;J)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/d;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;

    invoke-direct {v0, p2, p3, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/d;-><init>(JLcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;)V

    iget-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->a(Ljava/lang/String;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/e;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;

    invoke-direct {v0, p2, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/e;-><init>(Ljava/lang/String;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;)V

    iget-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/util/Set;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->a(Ljava/lang/String;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/f;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;

    invoke-direct {v0, p2, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/f;-><init>(Ljava/util/Set;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;)V

    iget-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public a(Ljava/lang/String;Z)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/a;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;

    invoke-direct {v0, p2, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/a;-><init>(ZLcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;)V

    iget-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public apply()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->b()Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public synthetic clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    invoke-virtual {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->a()Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;

    move-result-object v0

    return-object v0
.end method

.method public commit()Z
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->b()Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;->c()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public synthetic putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->a(Ljava/lang/String;Z)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->a(Ljava/lang/String;F)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->a(Ljava/lang/String;I)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->a(Ljava/lang/String;J)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->a(Ljava/lang/String;Ljava/util/Set;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c;->a(Ljava/lang/String;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;

    move-result-object p1

    return-object p1
.end method

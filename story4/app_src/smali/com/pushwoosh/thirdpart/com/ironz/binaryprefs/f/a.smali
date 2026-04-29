.class public final Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/b;


# instance fields
.field private final a:Ljava/util/concurrent/locks/Lock;

.field private final b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;

.field private final c:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;

.field private final d:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;

.field private final e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;

.field private final f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/a;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->a:Ljava/util/concurrent/locks/Lock;

    iput-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;

    iput-object p3, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->c:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;

    iput-object p4, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->d:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;

    iput-object p5, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;

    iput-object p6, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;

    invoke-direct {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->b()V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->c()V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;

    invoke-interface {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;->a()V

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;

    new-instance v1, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a$1;

    invoke-direct {v1, p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a$1;-><init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;)V

    invoke-interface {v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;->a(Ljava/lang/Runnable;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;

    invoke-interface {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;->b()V

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;

    invoke-interface {v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;->b()V

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private c()V
    .locals 4

    invoke-direct {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;

    invoke-interface {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;

    invoke-virtual {v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;->c()[B

    move-result-object v1

    iget-object v3, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;

    invoke-virtual {v3, v2, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;->a(Ljava/lang/String;[B)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->d:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;

    invoke-interface {v3, v2, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->c:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;

    invoke-interface {v1, v2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d()Z
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->c:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;

    invoke-interface {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;->a()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->d:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;

    invoke-interface {v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->d:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;

    invoke-interface {v0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p2

    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;

    invoke-virtual {p2, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public a()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->d:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;

    invoke-interface {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;->b()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;

    invoke-virtual {v5, v4}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->d:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;

    invoke-interface {v0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;->a(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

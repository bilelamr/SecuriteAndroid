.class public final Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;
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

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->a:Ljava/util/concurrent/locks/Lock;

    iput-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;

    iput-object p3, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->c:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;

    iput-object p4, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->d:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;

    iput-object p5, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;

    iput-object p6, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;

    invoke-direct {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->b()V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->d:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;

    invoke-interface {v0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;

    invoke-interface {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;

    new-instance v1, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c$1;

    invoke-direct {v1, p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c$1;-><init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;->a(Ljava/util/concurrent/Callable;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;->b()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;

    invoke-interface {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;->b()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;

    invoke-interface {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;->b()V

    throw p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->d:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;

    invoke-interface {v0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->c:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;

    invoke-interface {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;

    invoke-interface {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;

    new-instance v1, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c$2;

    invoke-direct {v1, p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c$2;-><init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;->a(Ljava/util/concurrent/Callable;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;

    invoke-interface {p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;->b()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;

    invoke-interface {p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;->b()V

    throw p1
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;

    invoke-interface {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;->d()Ljava/util/Set;

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

    iget-object v2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->c:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;

    invoke-interface {v2, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->e:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;

    invoke-interface {v0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/a;->a(Ljava/lang/String;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;->c()[B

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;

    invoke-virtual {v1, p1, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;->a(Ljava/lang/String;[B)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->d:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;

    invoke-interface {v1, p1, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;

    invoke-virtual {p2, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public a()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->c:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;

    invoke-interface {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;->a()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->f:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;

    invoke-virtual {v4, v3}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->c:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;

    invoke-interface {v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/a/a;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->d:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;

    invoke-interface {v0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/a/b/a;->a(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

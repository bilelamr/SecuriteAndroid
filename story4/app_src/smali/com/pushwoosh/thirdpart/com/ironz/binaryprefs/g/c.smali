.class public final Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/a;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final c:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/b;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/Lock;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/b;->c()Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/c;->a:Ljava/io/File;

    invoke-direct {p0, p1, p3}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p2

    iput-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/c;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-direct {p0, p1, p4}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/c;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/c;->c:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;)",
            "Ljava/util/concurrent/locks/ReadWriteLock;"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/locks/ReadWriteLock;

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/locks/Lock;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/Lock;",
            ">;)",
            "Ljava/util/concurrent/locks/Lock;"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/locks/Lock;

    return-object p1

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/c;->a:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/b;

    invoke-direct {v1, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/b;-><init>(Ljava/io/File;)V

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method


# virtual methods
.method public a()Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/c;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/c;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/g/c;->c:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.class public final Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/c;


# instance fields
.field private final a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;

.field private final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b;->a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;

    invoke-direct {p0, p1, p3}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b;Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    const-string p2, "binaryprefs-pool-%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/ExecutorService;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)",
            "Ljava/util/concurrent/ExecutorService;"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b;->a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b$1;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b$1;-><init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b;->a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;

    invoke-direct {v0, p1, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;-><init>(Ljava/util/concurrent/Future;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;)V

    return-object v0
.end method

.method public a(Ljava/util/concurrent/Callable;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)",
            "Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b;->a:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;

    invoke-direct {v0, p1, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;-><init>(Ljava/util/concurrent/Future;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;)V

    return-object v0
.end method

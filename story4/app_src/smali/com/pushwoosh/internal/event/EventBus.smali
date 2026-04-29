.class public final Lcom/pushwoosh/internal/event/EventBus;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/pushwoosh/internal/event/Event;",
            ">;",
            "Ljava/util/List<",
            "Lcom/pushwoosh/internal/event/EventListener<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/pushwoosh/internal/event/EventBus;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/internal/event/Event;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/event/EventBus;->b(Lcom/pushwoosh/internal/event/Event;Ljava/util/List;)V

    return-void
.end method

.method private static a(Lcom/pushwoosh/internal/event/Event;Landroid/os/Handler;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/pushwoosh/internal/event/Event;",
            ">(TT;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/pushwoosh/internal/event/EventBus;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Lcom/pushwoosh/internal/event/EventBus;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-static {p0, v0}, Lcom/pushwoosh/internal/event/c;->a(Lcom/pushwoosh/internal/event/Event;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method private static b(Lcom/pushwoosh/internal/event/Event;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/pushwoosh/internal/event/Event;",
            ">(TT;",
            "Ljava/util/List<",
            "Lcom/pushwoosh/internal/event/EventListener<",
            "*>;>;)V"
        }
    .end annotation

    monitor-enter p1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/internal/event/EventListener;

    invoke-interface {v0, p0}, Lcom/pushwoosh/internal/event/EventListener;->onReceive(Lcom/pushwoosh/internal/event/Event;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static sendEvent(Lcom/pushwoosh/internal/event/Event;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/pushwoosh/internal/event/Event;",
            ">(TT;)Z"
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p0, v0}, Lcom/pushwoosh/internal/event/EventBus;->a(Lcom/pushwoosh/internal/event/Event;Landroid/os/Handler;)Z

    move-result p0

    return p0
.end method

.method public static subscribe(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)Lcom/pushwoosh/internal/event/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/pushwoosh/internal/event/Event;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/pushwoosh/internal/event/EventListener<",
            "TT;>;)",
            "Lcom/pushwoosh/internal/event/Subscription<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/pushwoosh/internal/crash/LogSender;->submitCustomError(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/pushwoosh/internal/event/EventBus;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sget-object v1, Lcom/pushwoosh/internal/event/EventBus;->a:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/pushwoosh/internal/event/Subscription;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/internal/event/Subscription;-><init>(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static unsubscribe(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/pushwoosh/internal/event/Event;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/pushwoosh/internal/event/EventListener<",
            "TT;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/pushwoosh/internal/event/EventBus;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/pushwoosh/internal/event/EventBus;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_1

    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

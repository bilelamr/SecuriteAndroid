.class Landroidx/work/impl/background/systemalarm/WorkTimer;
.super Ljava/lang/Object;
.source "WorkTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/background/systemalarm/WorkTimer$TimeLimitExceededListener;,
        Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBackgroundThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/work/impl/background/systemalarm/WorkTimer$TimeLimitExceededListener;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field final mTimerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkTimer"

    .line 43
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/WorkTimer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroidx/work/impl/background/systemalarm/WorkTimer$1;

    invoke-direct {v0, p0}, Landroidx/work/impl/background/systemalarm/WorkTimer$1;-><init>(Landroidx/work/impl/background/systemalarm/WorkTimer;)V

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mBackgroundThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mTimerMap:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mListeners:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mLock:Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mBackgroundThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method startTimer(Ljava/lang/String;JLandroidx/work/impl/background/systemalarm/WorkTimer$TimeLimitExceededListener;)V
    .locals 6

    .line 76
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/background/systemalarm/WorkTimer;->TAG:Ljava/lang/String;

    const-string v3, "Starting timer for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 79
    invoke-virtual {p0, p1}, Landroidx/work/impl/background/systemalarm/WorkTimer;->stopTimer(Ljava/lang/String;)V

    .line 80
    new-instance v1, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;

    invoke-direct {v1, p0, p1}, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;-><init>(Landroidx/work/impl/background/systemalarm/WorkTimer;Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mTimerMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mListeners:Ljava/util/Map;

    invoke-interface {v2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object p1, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 84
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method stopTimer(Ljava/lang/String;)V
    .locals 6

    .line 88
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mTimerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;

    if-eqz v1, :cond_0

    .line 91
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/background/systemalarm/WorkTimer;->TAG:Ljava/lang/String;

    const-string v3, "Stopping timer for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 92
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

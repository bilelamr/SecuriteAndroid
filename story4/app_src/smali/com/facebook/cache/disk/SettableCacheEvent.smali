.class public Lcom/facebook/cache/disk/SettableCacheEvent;
.super Ljava/lang/Object;
.source "SettableCacheEvent.java"

# interfaces
.implements Lcom/facebook/cache/common/CacheEvent;


# static fields
.field private static final RECYCLER_LOCK:Ljava/lang/Object;

.field private static sFirstRecycledEvent:Lcom/facebook/cache/disk/SettableCacheEvent;

.field private static sRecycledCount:I


# instance fields
.field private mNextRecycledEvent:Lcom/facebook/cache/disk/SettableCacheEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/cache/disk/SettableCacheEvent;->RECYCLER_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Lcom/facebook/cache/disk/SettableCacheEvent;
    .locals 3

    .line 40
    sget-object v0, Lcom/facebook/cache/disk/SettableCacheEvent;->RECYCLER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/facebook/cache/disk/SettableCacheEvent;->sFirstRecycledEvent:Lcom/facebook/cache/disk/SettableCacheEvent;

    if-eqz v1, :cond_0

    .line 42
    sget-object v1, Lcom/facebook/cache/disk/SettableCacheEvent;->sFirstRecycledEvent:Lcom/facebook/cache/disk/SettableCacheEvent;

    .line 43
    iget-object v2, v1, Lcom/facebook/cache/disk/SettableCacheEvent;->mNextRecycledEvent:Lcom/facebook/cache/disk/SettableCacheEvent;

    sput-object v2, Lcom/facebook/cache/disk/SettableCacheEvent;->sFirstRecycledEvent:Lcom/facebook/cache/disk/SettableCacheEvent;

    const/4 v2, 0x0

    .line 44
    iput-object v2, v1, Lcom/facebook/cache/disk/SettableCacheEvent;->mNextRecycledEvent:Lcom/facebook/cache/disk/SettableCacheEvent;

    .line 45
    sget v2, Lcom/facebook/cache/disk/SettableCacheEvent;->sRecycledCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/facebook/cache/disk/SettableCacheEvent;->sRecycledCount:I

    .line 46
    monitor-exit v0

    return-object v1

    .line 48
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    new-instance v0, Lcom/facebook/cache/disk/SettableCacheEvent;

    invoke-direct {v0}, Lcom/facebook/cache/disk/SettableCacheEvent;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private reset()V
    .locals 0

    return-void
.end method


# virtual methods
.method public recycle()V
    .locals 3

    .line 131
    sget-object v0, Lcom/facebook/cache/disk/SettableCacheEvent;->RECYCLER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    sget v1, Lcom/facebook/cache/disk/SettableCacheEvent;->sRecycledCount:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/facebook/cache/disk/SettableCacheEvent;->reset()V

    .line 134
    sget v1, Lcom/facebook/cache/disk/SettableCacheEvent;->sRecycledCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/facebook/cache/disk/SettableCacheEvent;->sRecycledCount:I

    .line 136
    sget-object v1, Lcom/facebook/cache/disk/SettableCacheEvent;->sFirstRecycledEvent:Lcom/facebook/cache/disk/SettableCacheEvent;

    if-eqz v1, :cond_0

    .line 137
    sget-object v1, Lcom/facebook/cache/disk/SettableCacheEvent;->sFirstRecycledEvent:Lcom/facebook/cache/disk/SettableCacheEvent;

    iput-object v1, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mNextRecycledEvent:Lcom/facebook/cache/disk/SettableCacheEvent;

    .line 139
    :cond_0
    sput-object p0, Lcom/facebook/cache/disk/SettableCacheEvent;->sFirstRecycledEvent:Lcom/facebook/cache/disk/SettableCacheEvent;

    .line 141
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCacheKey(Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/cache/disk/SettableCacheEvent;
    .locals 0

    return-object p0
.end method

.method public setCacheLimit(J)Lcom/facebook/cache/disk/SettableCacheEvent;
    .locals 0

    return-object p0
.end method

.method public setCacheSize(J)Lcom/facebook/cache/disk/SettableCacheEvent;
    .locals 0

    return-object p0
.end method

.method public setEvictionReason(Lcom/facebook/cache/common/CacheEventListener$EvictionReason;)Lcom/facebook/cache/disk/SettableCacheEvent;
    .locals 0

    return-object p0
.end method

.method public setException(Ljava/io/IOException;)Lcom/facebook/cache/disk/SettableCacheEvent;
    .locals 0

    return-object p0
.end method

.method public setItemSize(J)Lcom/facebook/cache/disk/SettableCacheEvent;
    .locals 0

    return-object p0
.end method

.method public setResourceId(Ljava/lang/String;)Lcom/facebook/cache/disk/SettableCacheEvent;
    .locals 0

    return-object p0
.end method

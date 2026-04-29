.class public abstract Lcom/facebook/imagepipeline/memory/BasePool;
.super Ljava/lang/Object;
.source "BasePool.java"

# interfaces
.implements Lcom/facebook/common/memory/Pool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/BasePool$PoolSizeViolationException;,
        Lcom/facebook/imagepipeline/memory/BasePool$InvalidSizeException;,
        Lcom/facebook/imagepipeline/memory/BasePool$Counter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/common/memory/Pool<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mAllowNewBuckets:Z

.field final mBuckets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/imagepipeline/memory/Bucket<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final mFree:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

.field final mInUseValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end field

.field final mMemoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

.field final mPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

.field private final mPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

.field final mUsed:Lcom/facebook/imagepipeline/memory/BasePool$Counter;


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;Lcom/facebook/imagepipeline/memory/PoolStatsTracker;)V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->TAG:Ljava/lang/Class;

    .line 166
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mMemoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    .line 167
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/facebook/imagepipeline/memory/PoolParams;

    iput-object p2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    .line 168
    invoke-static {p3}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    iput-object p3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    .line 171
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    .line 172
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    iget-boolean p1, p1, Lcom/facebook/imagepipeline/memory/PoolParams;->fixBucketsReinitialization:Z

    if-eqz p1, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->initBuckets()V

    goto :goto_0

    .line 175
    :cond_0
    new-instance p1, Landroid/util/SparseIntArray;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/util/SparseIntArray;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->legacyInitBuckets(Landroid/util/SparseIntArray;)V

    .line 178
    :goto_0
    invoke-static {}, Lcom/facebook/common/internal/Sets;->newIdentityHashSet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mInUseValues:Ljava/util/Set;

    .line 180
    new-instance p1, Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    invoke-direct {p1}, Lcom/facebook/imagepipeline/memory/BasePool$Counter;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mFree:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    .line 181
    new-instance p1, Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    invoke-direct {p1}, Lcom/facebook/imagepipeline/memory/BasePool$Counter;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mUsed:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    return-void
.end method

.method private declared-synchronized ensurePoolSizeInvariant()V
    .locals 1

    monitor-enter p0

    .line 451
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->isMaxSizeSoftCapExceeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mFree:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private fillBuckets(Landroid/util/SparseIntArray;)V
    .locals 8

    .line 509
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 510
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 511
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 512
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 513
    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    new-instance v5, Lcom/facebook/imagepipeline/memory/Bucket;

    .line 516
    invoke-virtual {p0, v2}, Lcom/facebook/imagepipeline/memory/BasePool;->getSizeInBytes(I)I

    move-result v6

    iget-object v7, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    iget-boolean v7, v7, Lcom/facebook/imagepipeline/memory/PoolParams;->fixBucketsReinitialization:Z

    invoke-direct {v5, v6, v3, v0, v7}, Lcom/facebook/imagepipeline/memory/Bucket;-><init>(IIIZ)V

    .line 513
    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized getBucketIfPresent(I)Lcom/facebook/imagepipeline/memory/Bucket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/imagepipeline/memory/Bucket<",
            "TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 678
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/memory/Bucket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized initBuckets()V
    .locals 1

    monitor-enter p0

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    iget-object v0, v0, Lcom/facebook/imagepipeline/memory/PoolParams;->bucketSizes:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    .line 496
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/memory/BasePool;->fillBuckets(Landroid/util/SparseIntArray;)V

    const/4 v0, 0x0

    .line 497
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mAllowNewBuckets:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 499
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mAllowNewBuckets:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized legacyInitBuckets(Landroid/util/SparseIntArray;)V
    .locals 10

    monitor-enter p0

    .line 461
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 467
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    iget-object v0, v0, Lcom/facebook/imagepipeline/memory/PoolParams;->bucketSizes:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 469
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 470
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 471
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 472
    invoke-virtual {p1, v3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 473
    iget-object v6, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    new-instance v7, Lcom/facebook/imagepipeline/memory/Bucket;

    .line 476
    invoke-virtual {p0, v3}, Lcom/facebook/imagepipeline/memory/BasePool;->getSizeInBytes(I)I

    move-result v8

    iget-object v9, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    iget-boolean v9, v9, Lcom/facebook/imagepipeline/memory/PoolParams;->fixBucketsReinitialization:Z

    invoke-direct {v7, v8, v4, v5, v9}, Lcom/facebook/imagepipeline/memory/Bucket;-><init>(IIIZ)V

    .line 473
    invoke-virtual {v6, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mAllowNewBuckets:Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 483
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mAllowNewBuckets:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private logStats()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InvalidAccessToGuardedField"
        }
    .end annotation

    const/4 v0, 0x2

    .line 766
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->TAG:Ljava/lang/Class;

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mUsed:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mCount:I

    .line 770
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mUsed:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    .line 771
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mFree:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mCount:I

    .line 772
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mFree:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    .line 773
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v2, "Used = (%d, %d); Free = (%d, %d)"

    .line 767
    invoke-static/range {v1 .. v6}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract alloc(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method

.method declared-synchronized canAllocate(I)Z
    .locals 5

    monitor-enter p0

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/PoolParams;->maxSizeHardCap:I

    .line 740
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mUsed:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    iget v1, v1, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    sub-int v1, v0, v1

    const/4 v2, 0x0

    if-le p1, v1, :cond_0

    .line 741
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;->onHardCapReached()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    monitor-exit p0

    return v2

    .line 746
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    iget v1, v1, Lcom/facebook/imagepipeline/memory/PoolParams;->maxSizeSoftCap:I

    .line 747
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mUsed:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    iget v3, v3, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mFree:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    iget v4, v4, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    add-int/2addr v3, v4

    sub-int v3, v1, v3

    if-le p1, v3, :cond_1

    sub-int/2addr v1, p1

    .line 748
    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/memory/BasePool;->trimToSize(I)V

    .line 752
    :cond_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mUsed:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    iget v1, v1, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mFree:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    iget v3, v3, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_2

    .line 753
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;->onHardCapReached()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 754
    monitor-exit p0

    return v2

    :cond_2
    const/4 p1, 0x1

    .line 757
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract free(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 211
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->ensurePoolSizeInvariant()V

    .line 213
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->getBucketedSize(I)I

    move-result p1

    .line 216
    monitor-enter p0

    .line 217
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->getBucket(I)Lcom/facebook/imagepipeline/memory/Bucket;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/memory/BasePool;->getValue(Lcom/facebook/imagepipeline/memory/Bucket;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 223
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mInUseValues:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 227
    invoke-virtual {p0, v2}, Lcom/facebook/imagepipeline/memory/BasePool;->getBucketedSizeForValue(Ljava/lang/Object;)I

    move-result p1

    .line 228
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->getSizeInBytes(I)I

    move-result v0

    .line 229
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mUsed:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    invoke-virtual {v3, v0}, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->increment(I)V

    .line 230
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mFree:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    invoke-virtual {v3, v0}, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->decrement(I)V

    .line 231
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    invoke-interface {v3, v0}, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;->onValueReuse(I)V

    .line 232
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->logStats()V

    .line 233
    invoke-static {v1}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->TAG:Ljava/lang/Class;

    const-string v1, "get (reuse) (object, size) = (%x, %s)"

    .line 237
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 238
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 234
    invoke-static {v0, v1, v3, p1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 240
    :cond_0
    monitor-exit p0

    return-object v2

    .line 245
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->getSizeInBytes(I)I

    move-result v2

    .line 246
    invoke-virtual {p0, v2}, Lcom/facebook/imagepipeline/memory/BasePool;->canAllocate(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 255
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mUsed:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    invoke-virtual {v3, v2}, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->increment(I)V

    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/Bucket;->incrementInUseCount()V

    .line 259
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v0, 0x0

    .line 266
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->alloc(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 270
    monitor-enter p0

    .line 271
    :try_start_2
    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mUsed:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    invoke-virtual {v4, v2}, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->decrement(I)V

    .line 272
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->getBucket(I)Lcom/facebook/imagepipeline/memory/Bucket;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 274
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/memory/Bucket;->decrementInUseCount()V

    .line 276
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 277
    invoke-static {v3}, Lcom/facebook/common/internal/Throwables;->propagateIfPossible(Ljava/lang/Throwable;)V

    .line 285
    :goto_0
    monitor-enter p0

    .line 286
    :try_start_3
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mInUseValues:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 288
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->trimToSoftCap()V

    .line 289
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    invoke-interface {v3, v2}, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;->onAlloc(I)V

    .line 290
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->logStats()V

    .line 291
    invoke-static {v1}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 292
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->TAG:Ljava/lang/Class;

    const-string v2, "get (alloc) (object, size) = (%x, %s)"

    .line 295
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 296
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 292
    invoke-static {v1, v2, v3, p1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 298
    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 276
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .line 247
    :cond_5
    :try_start_5
    new-instance p1, Lcom/facebook/imagepipeline/memory/BasePool$PoolSizeViolationException;

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/PoolParams;->maxSizeHardCap:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mUsed:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    iget v1, v1, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mFree:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    iget v3, v3, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    invoke-direct {p1, v0, v1, v3, v2}, Lcom/facebook/imagepipeline/memory/BasePool$PoolSizeViolationException;-><init>(IIII)V

    throw p1

    :catchall_3
    move-exception p1

    .line 259
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1
.end method

.method declared-synchronized getBucket(I)Lcom/facebook/imagepipeline/memory/Bucket;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/imagepipeline/memory/Bucket<",
            "TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/Bucket;

    if-nez v0, :cond_2

    .line 690
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mAllowNewBuckets:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 695
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->TAG:Ljava/lang/Class;

    const-string v1, "creating new bucket %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 698
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->newBucket(I)Lcom/facebook/imagepipeline/memory/Bucket;

    move-result-object v0

    .line 699
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    monitor-exit p0

    return-object v0

    .line 691
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract getBucketedSize(I)I
.end method

.method protected abstract getBucketedSizeForValue(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation
.end method

.method protected abstract getSizeInBytes(I)I
.end method

.method protected declared-synchronized getValue(Lcom/facebook/imagepipeline/memory/Bucket;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/memory/Bucket<",
            "TV;>;)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 195
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/Bucket;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected initialize()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mMemoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    invoke-interface {v0, p0}, Lcom/facebook/common/memory/MemoryTrimmableRegistry;->registerMemoryTrimmable(Lcom/facebook/common/memory/MemoryTrimmable;)V

    .line 189
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    invoke-interface {v0, p0}, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;->setBasePool(Lcom/facebook/imagepipeline/memory/BasePool;)V

    return-void
.end method

.method declared-synchronized isMaxSizeSoftCapExceeded()Z
    .locals 2

    monitor-enter p0

    .line 717
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mUsed:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mFree:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    iget v1, v1, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    iget v1, v1, Lcom/facebook/imagepipeline/memory/PoolParams;->maxSizeSoftCap:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 720
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;->onSoftCapReached()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isReusable(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 442
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method newBucket(I)Lcom/facebook/imagepipeline/memory/Bucket;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/imagepipeline/memory/Bucket<",
            "TV;>;"
        }
    .end annotation

    .line 704
    new-instance v0, Lcom/facebook/imagepipeline/memory/Bucket;

    .line 705
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->getSizeInBytes(I)I

    move-result p1

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    iget-boolean v1, v1, Lcom/facebook/imagepipeline/memory/PoolParams;->fixBucketsReinitialization:Z

    const v2, 0x7fffffff

    const/4 v3, 0x0

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/facebook/imagepipeline/memory/Bucket;-><init>(IIIZ)V

    return-object v0
.end method

.method public release(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 315
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->getBucketedSizeForValue(Ljava/lang/Object;)I

    move-result v0

    .line 318
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/memory/BasePool;->getSizeInBytes(I)I

    move-result v1

    .line 319
    monitor-enter p0

    .line 320
    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/memory/BasePool;->getBucketIfPresent(I)Lcom/facebook/imagepipeline/memory/Bucket;

    move-result-object v2

    .line 321
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mInUseValues:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_0

    .line 324
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->TAG:Ljava/lang/Class;

    const-string v3, "release (free, value unrecognized) (object, size) = (%x, %s)"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 327
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 328
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 324
    invoke-static {v2, v3, v4}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->free(Ljava/lang/Object;)V

    .line 330
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    invoke-interface {p1, v1}, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;->onFree(I)V

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_2

    .line 342
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/Bucket;->isMaxLengthExceeded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 343
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->isMaxSizeSoftCapExceeded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 344
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->isReusable(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {v2, p1}, Lcom/facebook/imagepipeline/memory/Bucket;->release(Ljava/lang/Object;)V

    .line 361
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mFree:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->increment(I)V

    .line 362
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mUsed:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->decrement(I)V

    .line 363
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;->onValueRelease(I)V

    .line 364
    invoke-static {v4}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 365
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->TAG:Ljava/lang/Class;

    const-string v2, "release (reuse) (object, size) = (%x, %s)"

    .line 368
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 369
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 365
    invoke-static {v1, v2, p1, v0}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 346
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/Bucket;->decrementInUseCount()V

    .line 349
    :cond_3
    invoke-static {v4}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 350
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->TAG:Ljava/lang/Class;

    const-string v3, "release (free) (object, size) = (%x, %s)"

    .line 353
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 354
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 350
    invoke-static {v2, v3, v4, v0}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 356
    :cond_4
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->free(Ljava/lang/Object;)V

    .line 357
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mUsed:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    invoke-virtual {p1, v1}, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->decrement(I)V

    .line 358
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    invoke-interface {p1, v1}, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;->onFree(I)V

    .line 373
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->logStats()V

    .line 374
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method declared-synchronized trimToSize(I)V
    .locals 7

    monitor-enter p0

    .line 628
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mUsed:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mFree:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    iget v1, v1, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mFree:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    iget v1, v1, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    .line 630
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 632
    :try_start_1
    invoke-static {v1}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 633
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->TAG:Ljava/lang/Class;

    const-string v3, "trimToSize: TargetSize = %d; Initial Size = %d; Bytes to free = %d"

    .line 636
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mUsed:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    iget v5, v5, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    iget-object v6, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mFree:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    iget v6, v6, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    add-int/2addr v5, v6

    .line 637
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 638
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 633
    invoke-static {v2, v3, v4, v5, v6}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 640
    :cond_1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->logStats()V

    const/4 v2, 0x0

    .line 644
    :goto_0
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    if-gtz v0, :cond_2

    goto :goto_3

    .line 648
    :cond_2
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/imagepipeline/memory/Bucket;

    :goto_1
    if-lez v0, :cond_4

    .line 650
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/Bucket;->pop()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 654
    :cond_3
    invoke-virtual {p0, v4}, Lcom/facebook/imagepipeline/memory/BasePool;->free(Ljava/lang/Object;)V

    .line 655
    iget v4, v3, Lcom/facebook/imagepipeline/memory/Bucket;->mItemSize:I

    sub-int/2addr v0, v4

    .line 656
    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mFree:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    iget v5, v3, Lcom/facebook/imagepipeline/memory/Bucket;->mItemSize:I

    invoke-virtual {v4, v5}, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->decrement(I)V

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 661
    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->logStats()V

    .line 662
    invoke-static {v1}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 663
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->TAG:Ljava/lang/Class;

    const-string v1, "trimToSize: TargetSize = %d; Final Size = %d"

    .line 666
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mUsed:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    iget v2, v2, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mFree:Lcom/facebook/imagepipeline/memory/BasePool$Counter;

    iget v3, v3, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    add-int/2addr v2, v3

    .line 667
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 663
    invoke-static {v0, v1, p1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method declared-synchronized trimToSoftCap()V
    .locals 1

    monitor-enter p0

    .line 607
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->isMaxSizeSoftCapExceeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->mPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/PoolParams;->maxSizeSoftCap:I

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/memory/BasePool;->trimToSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

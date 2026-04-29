.class public Landroidx/work/impl/workers/ConstraintTrackingWorker;
.super Landroidx/work/ListenableWorker;
.source "ConstraintTrackingWorker.java"

# interfaces
.implements Landroidx/work/impl/constraints/WorkConstraintsCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field volatile mAreConstraintsUnmet:Z

.field private mDelegate:Landroidx/work/ListenableWorker;

.field mFuture:Landroidx/work/impl/utils/futures/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/SettableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field private mWorkerParameters:Landroidx/work/WorkerParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ConstraintTrkngWrkr"

    .line 51
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 72
    iput-object p2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mWorkerParameters:Landroidx/work/WorkerParameters;

    .line 73
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mAreConstraintsUnmet:Z

    .line 75
    invoke-static {}, Landroidx/work/impl/utils/futures/SettableFuture;->create()Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    return-void
.end method


# virtual methods
.method public getWorkDatabase()Landroidx/work/impl/WorkDatabase;
    .locals 1

    .line 191
    invoke-static {}, Landroidx/work/impl/WorkManagerImpl;->getInstance()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    return-object v0
.end method

.method public onAllConstraintsMet(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onAllConstraintsNotMet(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 213
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "Constraints changed for %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v3, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 214
    iget-object p1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 215
    :try_start_0
    iput-boolean v2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mAreConstraintsUnmet:Z

    .line 216
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStopped()V
    .locals 1

    .line 177
    invoke-super {p0}, Landroidx/work/ListenableWorker;->onStopped()V

    .line 178
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mDelegate:Landroidx/work/ListenableWorker;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->stop()V

    :cond_0
    return-void
.end method

.method setFutureFailed()V
    .locals 2

    .line 167
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method setFutureRetry()V
    .locals 2

    .line 172
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method setupAndRunConstraintTrackingWork()V
    .locals 7

    .line 92
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const-string v1, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v0, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 94
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v3, "No worker to delegate to."

    invoke-virtual {v0, v1, v3, v2}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 95
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->setFutureFailed()V

    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getWorkerFactory()Landroidx/work/WorkerFactory;

    move-result-object v1

    .line 100
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mWorkerParameters:Landroidx/work/WorkerParameters;

    .line 99
    invoke-virtual {v1, v3, v0, v4}, Landroidx/work/WorkerFactory;->createWorkerWithDefaultFallback(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mDelegate:Landroidx/work/ListenableWorker;

    .line 104
    iget-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mDelegate:Landroidx/work/ListenableWorker;

    if-nez v1, :cond_1

    .line 105
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v3, "No worker to delegate to."

    invoke-virtual {v0, v1, v3, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 106
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->setFutureFailed()V

    return-void

    .line 110
    :cond_1
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v1

    if-nez v1, :cond_2

    .line 115
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->setFutureFailed()V

    return-void

    .line 118
    :cond_2
    new-instance v3, Landroidx/work/impl/constraints/WorkConstraintsTracker;

    .line 119
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Landroidx/work/impl/constraints/WorkConstraintsTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/constraints/WorkConstraintsCallback;)V

    .line 122
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/work/impl/constraints/WorkConstraintsTracker;->replace(Ljava/util/List;)V

    .line 124
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/work/impl/constraints/WorkConstraintsTracker;->areAllConstraintsMet(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 125
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v4, Landroidx/work/impl/workers/ConstraintTrackingWorker;->TAG:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const-string v6, "Constraints met for delegate %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Throwable;

    invoke-virtual {v1, v4, v5, v6}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 131
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mDelegate:Landroidx/work/ListenableWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->startWork()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 132
    new-instance v4, Landroidx/work/impl/workers/ConstraintTrackingWorker$2;

    invoke-direct {v4, p0, v1}, Landroidx/work/impl/workers/ConstraintTrackingWorker$2;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 143
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 132
    invoke-interface {v1, v4, v5}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 145
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/workers/ConstraintTrackingWorker;->TAG:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v2

    const-string v0, "Delegated worker %s threw exception in startWork."

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Throwable;

    aput-object v1, v3, v2

    invoke-virtual {v4, v5, v0, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 148
    iget-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_1
    iget-boolean v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mAreConstraintsUnmet:Z

    if-eqz v0, :cond_3

    .line 150
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v3, Landroidx/work/impl/workers/ConstraintTrackingWorker;->TAG:Ljava/lang/String;

    const-string v4, "Constraints were unmet, Retrying."

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v4, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 151
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->setFutureRetry()V

    goto :goto_0

    .line 153
    :cond_3
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->setFutureFailed()V

    .line 155
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 158
    :cond_4
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v4, Landroidx/work/impl/workers/ConstraintTrackingWorker;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "Constraints not met for delegate %s. Requesting retry."

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v1, v4, v0, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 160
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->setFutureRetry()V

    :goto_1
    return-void
.end method

.method public startWork()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/work/impl/workers/ConstraintTrackingWorker$1;

    invoke-direct {v1, p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker$1;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 87
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    return-object v0
.end method

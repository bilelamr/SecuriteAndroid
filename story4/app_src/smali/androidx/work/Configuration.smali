.class public final Landroidx/work/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Configuration$Builder;
    }
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mLoggingLevel:I

.field private final mMaxJobSchedulerId:I

.field private final mMaxSchedulerLimit:I

.field private final mMinJobSchedulerId:I

.field private final mWorkerFactory:Landroidx/work/WorkerFactory;


# direct methods
.method constructor <init>(Landroidx/work/Configuration$Builder;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 60
    invoke-direct {p0}, Landroidx/work/Configuration;->createDefaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 62
    :cond_0
    iput-object v0, p0, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 65
    :goto_0
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mWorkerFactory:Landroidx/work/WorkerFactory;

    if-nez v0, :cond_1

    .line 66
    invoke-static {}, Landroidx/work/WorkerFactory;->getDefaultWorkerFactory()Landroidx/work/WorkerFactory;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration;->mWorkerFactory:Landroidx/work/WorkerFactory;

    goto :goto_1

    .line 68
    :cond_1
    iput-object v0, p0, Landroidx/work/Configuration;->mWorkerFactory:Landroidx/work/WorkerFactory;

    .line 71
    :goto_1
    iget v0, p1, Landroidx/work/Configuration$Builder;->mLoggingLevel:I

    iput v0, p0, Landroidx/work/Configuration;->mLoggingLevel:I

    .line 72
    iget v0, p1, Landroidx/work/Configuration$Builder;->mMinJobSchedulerId:I

    iput v0, p0, Landroidx/work/Configuration;->mMinJobSchedulerId:I

    .line 73
    iget v0, p1, Landroidx/work/Configuration$Builder;->mMaxJobSchedulerId:I

    iput v0, p0, Landroidx/work/Configuration;->mMaxJobSchedulerId:I

    .line 74
    iget p1, p1, Landroidx/work/Configuration$Builder;->mMaxSchedulerLimit:I

    iput p1, p0, Landroidx/work/Configuration;->mMaxSchedulerLimit:I

    return-void
.end method

.method private createDefaultExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 144
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 142
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 81
    iget-object v0, p0, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getMaxJobSchedulerId()I
    .locals 1

    .line 122
    iget v0, p0, Landroidx/work/Configuration;->mMaxJobSchedulerId:I

    return v0
.end method

.method public getMaxSchedulerLimit()I
    .locals 2

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 135
    iget v0, p0, Landroidx/work/Configuration;->mMaxSchedulerLimit:I

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 137
    :cond_0
    iget v0, p0, Landroidx/work/Configuration;->mMaxSchedulerLimit:I

    return v0
.end method

.method public getMinJobSchedulerId()I
    .locals 1

    .line 110
    iget v0, p0, Landroidx/work/Configuration;->mMinJobSchedulerId:I

    return v0
.end method

.method public getMinimumLoggingLevel()I
    .locals 1

    .line 98
    iget v0, p0, Landroidx/work/Configuration;->mLoggingLevel:I

    return v0
.end method

.method public getWorkerFactory()Landroidx/work/WorkerFactory;
    .locals 1

    .line 89
    iget-object v0, p0, Landroidx/work/Configuration;->mWorkerFactory:Landroidx/work/WorkerFactory;

    return-object v0
.end method

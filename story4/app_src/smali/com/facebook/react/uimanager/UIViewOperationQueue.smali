.class public Lcom/facebook/react/uimanager/UIViewOperationQueue;
.super Ljava/lang/Object;
.source "UIViewOperationQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchUIFrameCallback;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$SendAccessibilityEvent;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$UIBlockOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$LayoutUpdateFinishedOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$MeasureInWindowOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$MeasureOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$ConfigureLayoutAnimationOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$SetLayoutAnimationEnabledOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$DismissPopupMenuOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$ShowPopupMenuOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchCommandOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$ChangeJSResponderOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$UpdateViewExtraData;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$ManageChildrenOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$CreateViewOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$UpdateLayoutOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$UpdatePropertiesOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$RemoveRootViewOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$ViewOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;
    }
.end annotation


# instance fields
.field private final mDispatchRunnablesLock:Ljava/lang/Object;

.field private final mDispatchUIFrameCallback:Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchUIFrameCallback;

.field private mDispatchUIRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDispatchUIFrameCallbackEnqueued:Z

.field private mIsInIllegalUIState:Z

.field private mIsProfilingNextBatch:Z

.field private final mMeasureBuffer:[I

.field private final mNativeViewHierarchyManager:Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

.field private mNonBatchedExecutionTotalTime:J

.field private mNonBatchedOperations:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mNonBatchedOperationsLock:Ljava/lang/Object;

.field private mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mProfiledBatchBatchedExecutionTime:J

.field private mProfiledBatchCommitStartTime:J

.field private mProfiledBatchDispatchViewUpdatesTime:J

.field private mProfiledBatchLayoutTime:J

.field private mProfiledBatchNonBatchedExecutionTime:J

.field private mProfiledBatchRunStartTime:J

.field private final mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private mThreadCpuTime:J

.field private mViewHierarchyUpdateDebugListener:Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;I)V
    .locals 1

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 48
    iput-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mMeasureBuffer:[I

    .line 550
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mDispatchRunnablesLock:Ljava/lang/Object;

    .line 551
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedOperationsLock:Ljava/lang/Object;

    .line 556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mDispatchUIRunnables:Ljava/util/ArrayList;

    .line 561
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedOperations:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    .line 565
    iput-boolean v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsDispatchUIFrameCallbackEnqueued:Z

    .line 566
    iput-boolean v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsInIllegalUIState:Z

    .line 567
    iput-boolean v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsProfilingNextBatch:Z

    .line 581
    iput-object p2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNativeViewHierarchyManager:Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    .line 582
    new-instance p2, Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchUIFrameCallback;

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    const/16 p3, 0x8

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, p3, v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchUIFrameCallback;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/bridge/ReactContext;ILcom/facebook/react/uimanager/UIViewOperationQueue$1;)V

    iput-object p2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mDispatchUIFrameCallback:Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchUIFrameCallback;

    .line 588
    iput-object p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/uimanager/UIViewOperationQueue;)Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNativeViewHierarchyManager:Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/facebook/react/uimanager/UIViewOperationQueue;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsProfilingNextBatch:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/facebook/react/uimanager/UIViewOperationQueue;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchCommitStartTime:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/facebook/react/uimanager/UIViewOperationQueue;J)J
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchCommitStartTime:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/facebook/react/uimanager/UIViewOperationQueue;J)J
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchLayoutTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/facebook/react/uimanager/UIViewOperationQueue;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchDispatchViewUpdatesTime:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/facebook/react/uimanager/UIViewOperationQueue;J)J
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchDispatchViewUpdatesTime:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/facebook/react/uimanager/UIViewOperationQueue;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchRunStartTime:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/facebook/react/uimanager/UIViewOperationQueue;J)J
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchRunStartTime:J

    return-wide p1
.end method

.method static synthetic access$1902(Lcom/facebook/react/uimanager/UIViewOperationQueue;J)J
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mThreadCpuTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/facebook/react/uimanager/UIViewOperationQueue;)[I
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mMeasureBuffer:[I

    return-object p0
.end method

.method static synthetic access$2000(Lcom/facebook/react/uimanager/UIViewOperationQueue;)Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mViewHierarchyUpdateDebugListener:Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/facebook/react/uimanager/UIViewOperationQueue;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsInIllegalUIState:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/facebook/react/uimanager/UIViewOperationQueue;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsInIllegalUIState:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/facebook/react/uimanager/UIViewOperationQueue;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->flushPendingBatches()V

    return-void
.end method

.method static synthetic access$2300(Lcom/facebook/react/uimanager/UIViewOperationQueue;)Ljava/lang/Object;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedOperationsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/facebook/react/uimanager/UIViewOperationQueue;)Ljava/util/ArrayDeque;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedOperations:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/facebook/react/uimanager/UIViewOperationQueue;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedExecutionTotalTime:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/facebook/react/uimanager/UIViewOperationQueue;J)J
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedExecutionTotalTime:J

    return-wide p1
.end method

.method private flushPendingBatches()V
    .locals 12

    .line 933
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsInIllegalUIState:Z

    if-eqz v0, :cond_0

    const-string v0, "ReactNative"

    const-string v1, "Not flushing pending UI operations because of previously thrown Exception"

    .line 934
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mDispatchRunnablesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 942
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mDispatchUIRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 943
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mDispatchUIRunnables:Ljava/util/ArrayList;

    .line 944
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mDispatchUIRunnables:Ljava/util/ArrayList;

    .line 948
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 951
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 952
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 955
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsProfilingNextBatch:Z

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_2

    .line 956
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchBatchedExecutionTime:J

    .line 957
    iget-wide v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedExecutionTotalTime:J

    iput-wide v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchNonBatchedExecutionTime:J

    const/4 v0, 0x0

    .line 958
    iput-boolean v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsProfilingNextBatch:Z

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const-wide/32 v10, 0xf4240

    mul-long v10, v10, v2

    const-string v8, "batchedExecutionTime"

    .line 960
    invoke-static/range {v6 .. v11}, Lcom/facebook/systrace/Systrace;->beginAsyncSection(JLjava/lang/String;IJ)V

    const-string v1, "batchedExecutionTime"

    .line 965
    invoke-static {v4, v5, v1, v0}, Lcom/facebook/systrace/Systrace;->endAsyncSection(JLjava/lang/String;I)V

    .line 967
    :cond_2
    iput-wide v4, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedExecutionTotalTime:J

    return-void

    .line 946
    :cond_3
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 948
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public addRootView(ILandroid/view/View;)V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNativeViewHierarchyManager:Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->addRootView(ILandroid/view/View;)V

    return-void
.end method

.method public dispatchViewUpdates(IJJ)V
    .locals 18

    move-object/from16 v14, p0

    move/from16 v0, p1

    const-wide/16 v12, 0x0

    const-string v1, "UIViewOperationQueue.dispatchViewUpdates"

    .line 791
    invoke-static {v12, v13, v1}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v1

    const-string v2, "batchId"

    .line 794
    invoke-virtual {v1, v2, v0}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    .line 795
    invoke-virtual {v1}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 797
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 798
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v15

    .line 803
    iget-object v1, v14, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 804
    iget-object v1, v14, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    .line 805
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v14, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v2

    .line 811
    :goto_0
    iget-object v1, v14, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedOperationsLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 812
    :try_start_1
    iget-object v3, v14, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedOperations:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 813
    iget-object v2, v14, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedOperations:Ljava/util/ArrayDeque;

    .line 814
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, v14, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedOperations:Ljava/util/ArrayDeque;

    :cond_1
    move-object v4, v2

    .line 818
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 820
    :try_start_2
    iget-object v1, v14, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mViewHierarchyUpdateDebugListener:Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;

    if-eqz v1, :cond_2

    .line 821
    iget-object v1, v14, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mViewHierarchyUpdateDebugListener:Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;

    invoke-interface {v1}, Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;->onViewHierarchyUpdateEnqueued()V

    .line 824
    :cond_2
    new-instance v8, Lcom/facebook/react/uimanager/UIViewOperationQueue$1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object v1, v8

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-wide/from16 v6, p2

    move-object/from16 v17, v8

    move-wide/from16 v8, p4

    move-wide v12, v15

    :try_start_3
    invoke-direct/range {v1 .. v13}, Lcom/facebook/react/uimanager/UIViewOperationQueue$1;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;ILjava/util/ArrayDeque;Ljava/util/ArrayList;JJJJ)V

    const-string v1, "acquiring mDispatchRunnablesLock"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/16 v2, 0x0

    .line 892
    :try_start_4
    invoke-static {v2, v3, v1}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v1

    const-string v4, "batchId"

    .line 895
    invoke-virtual {v1, v4, v0}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    .line 896
    invoke-virtual {v1}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 897
    iget-object v1, v14, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mDispatchRunnablesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 898
    :try_start_5
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 899
    iget-object v0, v14, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mDispatchUIRunnables:Ljava/util/ArrayList;

    move-object/from16 v4, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 905
    :try_start_6
    iget-boolean v0, v14, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsDispatchUIFrameCallbackEnqueued:Z

    if-nez v0, :cond_3

    .line 906
    new-instance v0, Lcom/facebook/react/uimanager/UIViewOperationQueue$2;

    iget-object v1, v14, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v0, v14, v1}, Lcom/facebook/react/uimanager/UIViewOperationQueue$2;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/bridge/ReactContext;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 915
    :cond_3
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    return-void

    :catchall_0
    move-exception v0

    .line 900
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_1
    move-exception v0

    const-wide/16 v2, 0x0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-wide v2, v12

    .line 818
    :goto_1
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    goto :goto_1

    :catchall_5
    move-exception v0

    move-wide v2, v12

    .line 915
    :goto_2
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 916
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public enqueueClearJSResponder()V
    .locals 8

    .line 652
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v7, Lcom/facebook/react/uimanager/UIViewOperationQueue$ChangeJSResponderOperation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/uimanager/UIViewOperationQueue$ChangeJSResponderOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;IIZZ)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enqueueConfigureLayoutAnimation(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 3

    .line 747
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$ConfigureLayoutAnimationOperation;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/facebook/react/uimanager/UIViewOperationQueue$ConfigureLayoutAnimationOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/uimanager/UIViewOperationQueue$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enqueueCreateView(Lcom/facebook/react/uimanager/ThemedReactContext;ILjava/lang/String;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 9

    .line 683
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedOperationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 684
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedOperations:Ljava/util/ArrayDeque;

    new-instance v8, Lcom/facebook/react/uimanager/UIViewOperationQueue$CreateViewOperation;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/facebook/react/uimanager/UIViewOperationQueue$CreateViewOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/ThemedReactContext;ILjava/lang/String;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 690
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public enqueueDismissPopupMenu()V
    .locals 3

    .line 675
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$DismissPopupMenuOperation;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/react/uimanager/UIViewOperationQueue$DismissPopupMenuOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/UIViewOperationQueue$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enqueueDispatchCommand(IILcom/facebook/react/bridge/ReadableArray;)V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchCommandOperation;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchCommandOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;IILcom/facebook/react/bridge/ReadableArray;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enqueueFindTargetForTouch(IFFLcom/facebook/react/bridge/Callback;)V
    .locals 9

    .line 769
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v8, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;IFFLcom/facebook/react/bridge/Callback;Lcom/facebook/react/uimanager/UIViewOperationQueue$1;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enqueueLayoutUpdateFinished(Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;)V
    .locals 3

    .line 778
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$LayoutUpdateFinishedOperation;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/facebook/react/uimanager/UIViewOperationQueue$LayoutUpdateFinishedOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;Lcom/facebook/react/uimanager/UIViewOperationQueue$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enqueueManageChildren(I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I[I)V
    .locals 9

    .line 728
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v8, Lcom/facebook/react/uimanager/UIViewOperationQueue$ManageChildrenOperation;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/facebook/react/uimanager/UIViewOperationQueue$ManageChildrenOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I[I)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enqueueMeasure(ILcom/facebook/react/bridge/Callback;)V
    .locals 3

    .line 753
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$MeasureOperation;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/facebook/react/uimanager/UIViewOperationQueue$MeasureOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;ILcom/facebook/react/bridge/Callback;Lcom/facebook/react/uimanager/UIViewOperationQueue$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enqueueMeasureInWindow(ILcom/facebook/react/bridge/Callback;)V
    .locals 3

    .line 760
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$MeasureInWindowOperation;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/facebook/react/uimanager/UIViewOperationQueue$MeasureInWindowOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;ILcom/facebook/react/bridge/Callback;Lcom/facebook/react/uimanager/UIViewOperationQueue$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enqueueRemoveRootView(I)V
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$RemoveRootViewOperation;

    invoke-direct {v1, p0, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue$RemoveRootViewOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enqueueSendAccessibilityEvent(II)V
    .locals 3

    .line 774
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$SendAccessibilityEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/facebook/react/uimanager/UIViewOperationQueue$SendAccessibilityEvent;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;IILcom/facebook/react/uimanager/UIViewOperationQueue$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enqueueSetJSResponder(IIZ)V
    .locals 8

    .line 642
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v7, Lcom/facebook/react/uimanager/UIViewOperationQueue$ChangeJSResponderOperation;

    const/4 v5, 0x0

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/uimanager/UIViewOperationQueue$ChangeJSResponderOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;IIZZ)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enqueueSetLayoutAnimationEnabled(Z)V
    .locals 3

    .line 741
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$SetLayoutAnimationEnabledOperation;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/facebook/react/uimanager/UIViewOperationQueue$SetLayoutAnimationEnabledOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;ZLcom/facebook/react/uimanager/UIViewOperationQueue$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enqueueShowPopupMenu(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 8

    .line 671
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v7, Lcom/facebook/react/uimanager/UIViewOperationQueue$ShowPopupMenuOperation;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/uimanager/UIViewOperationQueue$ShowPopupMenuOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enqueueUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V
    .locals 2

    .line 782
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$UIBlockOperation;

    invoke-direct {v1, p0, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue$UIBlockOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/UIBlock;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enqueueUpdateExtraData(ILjava/lang/Object;)V
    .locals 2

    .line 663
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$UpdateViewExtraData;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/react/uimanager/UIViewOperationQueue$UpdateViewExtraData;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enqueueUpdateLayout(IIIIII)V
    .locals 11

    move-object v8, p0

    .line 718
    iget-object v9, v8, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v10, Lcom/facebook/react/uimanager/UIViewOperationQueue$UpdateLayoutOperation;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/uimanager/UIViewOperationQueue$UpdateLayoutOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;IIIIII)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enqueueUpdateProperties(ILjava/lang/String;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 2

    .line 698
    iget-object p2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v0, Lcom/facebook/react/uimanager/UIViewOperationQueue$UpdatePropertiesOperation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Lcom/facebook/react/uimanager/UIViewOperationQueue$UpdatePropertiesOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;ILcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/UIViewOperationQueue$1;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getNativeViewHierarchyManager()Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNativeViewHierarchyManager:Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    return-object v0
.end method

.method public getProfiledBatchPerfCounters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 606
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 607
    iget-wide v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchCommitStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "CommitStartTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    iget-wide v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchLayoutTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "LayoutTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    iget-wide v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchDispatchViewUpdatesTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "DispatchViewUpdatesTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    iget-wide v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchRunStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "RunStartTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    iget-wide v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchBatchedExecutionTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "BatchedExecutionTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    iget-wide v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchNonBatchedExecutionTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "NonBatchedExecutionTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    iget-wide v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mThreadCpuTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "NativeModulesThreadCpuTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method pauseFrameCallback()V
    .locals 3

    const/4 v0, 0x0

    .line 926
    iput-boolean v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsDispatchUIFrameCallbackEnqueued:Z

    .line 927
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer;->getInstance()Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->DISPATCH_UI:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mDispatchUIFrameCallback:Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchUIFrameCallback;

    .line 928
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->removeFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    .line 929
    invoke-direct {p0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->flushPendingBatches()V

    return-void
.end method

.method public prependUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V
    .locals 2

    .line 786
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$UIBlockOperation;

    invoke-direct {v1, p0, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue$UIBlockOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/UIBlock;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public profileNextBatch()V
    .locals 2

    const/4 v0, 0x1

    .line 601
    iput-boolean v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsProfilingNextBatch:Z

    const-wide/16 v0, 0x0

    .line 602
    iput-wide v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchCommitStartTime:J

    return-void
.end method

.method resumeFrameCallback()V
    .locals 3

    const/4 v0, 0x1

    .line 920
    iput-boolean v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsDispatchUIFrameCallbackEnqueued:Z

    .line 921
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer;->getInstance()Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->DISPATCH_UI:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mDispatchUIFrameCallback:Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchUIFrameCallback;

    .line 922
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    return-void
.end method

.method public setViewHierarchyUpdateDebugListener(Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mViewHierarchyUpdateDebugListener:Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;

    return-void
.end method

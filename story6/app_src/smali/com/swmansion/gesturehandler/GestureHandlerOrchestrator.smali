.class public Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;
.super Ljava/lang/Object;
.source "GestureHandlerOrchestrator.java"


# static fields
.field private static final sHandlersComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/swmansion/gesturehandler/GestureHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final sInverseMatrix:Landroid/graphics/Matrix;

.field private static final sMatrixTransformCoords:[F

.field private static final sTempCoords:[F

.field private static final sTempPoint:Landroid/graphics/PointF;


# instance fields
.field private mActivationIndex:I

.field private final mAwaitingHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

.field private mAwaitingHandlersCount:I

.field private mFinishedHandlersCleanupScheduled:Z

.field private final mGestureHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

.field private mGestureHandlersCount:I

.field private final mHandlerRegistry:Lcom/swmansion/gesturehandler/GestureHandlerRegistry;

.field private final mHandlersToCancel:[Lcom/swmansion/gesturehandler/GestureHandler;

.field private mHandlingChangeSemaphore:I

.field private mIsHandlingTouch:Z

.field private mMinAlphaForTraversal:F

.field private final mPreparedHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

.field private final mViewConfigHelper:Lcom/swmansion/gesturehandler/ViewConfigurationHelper;

.field private final mWrapperView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->sTempPoint:Landroid/graphics/PointF;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 25
    sput-object v1, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->sMatrixTransformCoords:[F

    .line 26
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    sput-object v1, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->sInverseMatrix:Landroid/graphics/Matrix;

    new-array v0, v0, [F

    .line 27
    sput-object v0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->sTempCoords:[F

    .line 29
    new-instance v0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$1;

    invoke-direct {v0}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$1;-><init>()V

    sput-object v0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->sHandlersComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/swmansion/gesturehandler/GestureHandlerRegistry;Lcom/swmansion/gesturehandler/ViewConfigurationHelper;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v1, v0, [Lcom/swmansion/gesturehandler/GestureHandler;

    .line 54
    iput-object v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mGestureHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    new-array v1, v0, [Lcom/swmansion/gesturehandler/GestureHandler;

    .line 56
    iput-object v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mAwaitingHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    new-array v1, v0, [Lcom/swmansion/gesturehandler/GestureHandler;

    .line 58
    iput-object v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mPreparedHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    new-array v0, v0, [Lcom/swmansion/gesturehandler/GestureHandler;

    .line 60
    iput-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mHandlersToCancel:[Lcom/swmansion/gesturehandler/GestureHandler;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mGestureHandlersCount:I

    .line 63
    iput v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mAwaitingHandlersCount:I

    .line 65
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mIsHandlingTouch:Z

    .line 66
    iput v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mHandlingChangeSemaphore:I

    .line 67
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mFinishedHandlersCleanupScheduled:Z

    .line 68
    iput v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mActivationIndex:I

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mMinAlphaForTraversal:F

    .line 76
    iput-object p1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mWrapperView:Landroid/view/ViewGroup;

    .line 77
    iput-object p2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mHandlerRegistry:Lcom/swmansion/gesturehandler/GestureHandlerRegistry;

    .line 78
    iput-object p3, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mViewConfigHelper:Lcom/swmansion/gesturehandler/ViewConfigurationHelper;

    return-void
.end method

.method private addAwaitingHandler(Lcom/swmansion/gesturehandler/GestureHandler;)V
    .locals 3

    const/4 v0, 0x0

    .line 353
    :goto_0
    iget v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mAwaitingHandlersCount:I

    if-ge v0, v1, :cond_1

    .line 354
    iget-object v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mAwaitingHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mAwaitingHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    array-length v2, v0

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 361
    iput v2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mAwaitingHandlersCount:I

    aput-object p1, v0, v1

    const/4 v0, 0x1

    .line 362
    iput-boolean v0, p1, Lcom/swmansion/gesturehandler/GestureHandler;->mIsAwaiting:Z

    .line 363
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mActivationIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mActivationIndex:I

    iput v0, p1, Lcom/swmansion/gesturehandler/GestureHandler;->mActivationIndex:I

    return-void

    .line 359
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Too many recognizers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private canReceiveEvents(Landroid/view/View;)Z
    .locals 1

    .line 475
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mMinAlphaForTraversal:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static canRunSimultaneously(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    .line 516
    invoke-virtual {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandler;->shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Lcom/swmansion/gesturehandler/GestureHandler;->shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private cancelAll()V
    .locals 4

    .line 264
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mAwaitingHandlersCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 265
    iget-object v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mAwaitingHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/GestureHandler;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 269
    :cond_0
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mGestureHandlersCount:I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 271
    iget-object v2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mPreparedHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    iget-object v3, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mGestureHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_2

    .line 274
    iget-object v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mPreparedHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/GestureHandler;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private cleanupAwaitingHandlers()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 166
    :goto_0
    iget v2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mAwaitingHandlersCount:I

    if-ge v0, v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mAwaitingHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v3, v2, v0

    iget-boolean v3, v3, Lcom/swmansion/gesturehandler/GestureHandler;->mIsAwaiting:Z

    if-eqz v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 168
    aget-object v4, v2, v0

    aput-object v4, v2, v1

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    iput v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mAwaitingHandlersCount:I

    return-void
.end method

.method private cleanupFinishedHandlers()V
    .locals 6

    .line 119
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mGestureHandlersCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 120
    iget-object v4, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mGestureHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v4, v4, v0

    .line 121
    invoke-virtual {v4}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v5

    invoke-static {v5}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->isFinished(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, v4, Lcom/swmansion/gesturehandler/GestureHandler;->mIsAwaiting:Z

    if-nez v5, :cond_0

    .line 122
    iget-object v3, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mGestureHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    const/4 v5, 0x0

    aput-object v5, v3, v0

    .line 124
    invoke-virtual {v4}, Lcom/swmansion/gesturehandler/GestureHandler;->reset()V

    .line 125
    iput-boolean v2, v4, Lcom/swmansion/gesturehandler/GestureHandler;->mIsActive:Z

    .line 126
    iput-boolean v2, v4, Lcom/swmansion/gesturehandler/GestureHandler;->mIsAwaiting:Z

    const v3, 0x7fffffff

    .line 127
    iput v3, v4, Lcom/swmansion/gesturehandler/GestureHandler;->mActivationIndex:I

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 132
    :goto_1
    iget v3, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mGestureHandlersCount:I

    if-ge v0, v3, :cond_3

    .line 133
    iget-object v3, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mGestureHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v4, v3, v0

    if-eqz v4, :cond_2

    add-int/lit8 v4, v1, 0x1

    .line 134
    aget-object v5, v3, v0

    aput-object v5, v3, v1

    move v1, v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    :cond_3
    iput v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mGestureHandlersCount:I

    .line 139
    :cond_4
    iput-boolean v2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mFinishedHandlersCleanupScheduled:Z

    return-void
.end method

.method private deliverEventToGestureHandler(Lcom/swmansion/gesturehandler/GestureHandler;Landroid/view/MotionEvent;)V
    .locals 6

    .line 279
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->isViewAttachedUnderWrapper(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->cancel()V

    return-void

    .line 283
    :cond_0
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->wantEvents()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 286
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 287
    iget-boolean v1, p1, Lcom/swmansion/gesturehandler/GestureHandler;->mIsAwaiting:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    return-void

    .line 290
    :cond_2
    sget-object v1, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->sTempCoords:[F

    .line 291
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2, v1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->extractCoordsForView(Landroid/view/View;Landroid/view/MotionEvent;[F)V

    .line 292
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 293
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x0

    .line 300
    aget v4, v1, v4

    const/4 v5, 0x1

    aget v1, v1, v5

    invoke-virtual {p2, v4, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 301
    invoke-virtual {p1, p2}, Lcom/swmansion/gesturehandler/GestureHandler;->handle(Landroid/view/MotionEvent;)V

    .line 302
    iget-boolean v1, p1, Lcom/swmansion/gesturehandler/GestureHandler;->mIsActive:Z

    if-eqz v1, :cond_3

    .line 303
    invoke-virtual {p1, p2}, Lcom/swmansion/gesturehandler/GestureHandler;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 305
    :cond_3
    invoke-virtual {p2, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    if-eq v0, v5, :cond_4

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 309
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    .line 310
    invoke-virtual {p1, p2}, Lcom/swmansion/gesturehandler/GestureHandler;->stopTrackingPointer(I)V

    :cond_5
    return-void
.end method

.method private extractCoordsForView(Landroid/view/View;Landroid/view/MotionEvent;[F)V
    .locals 5

    .line 336
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mWrapperView:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 337
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    aput p1, p3, v2

    .line 338
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, p3, v1

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 345
    invoke-direct {p0, v0, p2, p3}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->extractCoordsForView(Landroid/view/View;Landroid/view/MotionEvent;[F)V

    .line 346
    sget-object p2, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->sTempPoint:Landroid/graphics/PointF;

    .line 347
    aget v3, p3, v2

    aget v4, p3, v1

    invoke-static {v3, v4, v0, p1, p2}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->transformTouchPointToViewCoords(FFLandroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/PointF;)V

    .line 348
    iget p1, p2, Landroid/graphics/PointF;->x:F

    aput p1, p3, v2

    .line 349
    iget p1, p2, Landroid/graphics/PointF;->y:F

    aput p1, p3, v1

    return-void

    .line 342
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parent is null? View is no longer in the tree"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private extractGestureHandlers(Landroid/view/MotionEvent;)V
    .locals 5

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 400
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 401
    sget-object v2, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->sTempCoords:[F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 402
    sget-object v2, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->sTempCoords:[F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/4 v0, 0x1

    aput p1, v2, v0

    .line 403
    iget-object p1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mWrapperView:Landroid/view/ViewGroup;

    sget-object v0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->sTempCoords:[F

    invoke-direct {p0, p1, v0, v1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->traverseWithPointerEvents(Landroid/view/View;[FI)Z

    .line 404
    iget-object p1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mWrapperView:Landroid/view/ViewGroup;

    sget-object v0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->sTempCoords:[F

    invoke-direct {p0, p1, v0, v1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->extractGestureHandlers(Landroid/view/ViewGroup;[FI)Z

    return-void
.end method

.method private extractGestureHandlers(Landroid/view/ViewGroup;[FI)Z
    .locals 8

    .line 408
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_3

    .line 410
    iget-object v3, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mViewConfigHelper:Lcom/swmansion/gesturehandler/ViewConfigurationHelper;

    invoke-interface {v3, p1, v0}, Lcom/swmansion/gesturehandler/ViewConfigurationHelper;->getChildInDrawingOrderAtIndex(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v3

    .line 411
    invoke-direct {p0, v3}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->canReceiveEvents(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 412
    sget-object v4, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->sTempPoint:Landroid/graphics/PointF;

    .line 413
    aget v5, p2, v2

    aget v6, p2, v1

    invoke-static {v5, v6, p1, v3, v4}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->transformTouchPointToViewCoords(FFLandroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/PointF;)V

    .line 414
    aget v5, p2, v2

    .line 415
    aget v6, p2, v1

    .line 416
    iget v7, v4, Landroid/graphics/PointF;->x:F

    aput v7, p2, v2

    .line 417
    iget v4, v4, Landroid/graphics/PointF;->y:F

    aput v4, p2, v1

    .line 419
    invoke-direct {p0, v3}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->isClipping(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget v4, p2, v2

    aget v7, p2, v1

    invoke-static {v4, v7, v3}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->isTransformedTouchPointInView(FFLandroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    .line 422
    :cond_1
    :goto_1
    invoke-direct {p0, v3, p2, p3}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->traverseWithPointerEvents(Landroid/view/View;[FI)Z

    move-result v3

    .line 424
    :goto_2
    aput v5, p2, v2

    .line 425
    aput v6, p2, v1

    if-eqz v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private hasOtherHandlerToWaitFor(Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 143
    :goto_0
    iget v2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mGestureHandlersCount:I

    if-ge v1, v2, :cond_1

    .line 144
    iget-object v2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mGestureHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v2, v2, v1

    .line 145
    invoke-virtual {v2}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->isFinished(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    invoke-static {p1, v2}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->shouldHandlerWaitForOther(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isClipping(Landroid/view/View;)Z
    .locals 1

    .line 503
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mViewConfigHelper:Lcom/swmansion/gesturehandler/ViewConfigurationHelper;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-interface {v0, p1}, Lcom/swmansion/gesturehandler/ViewConfigurationHelper;->isViewClippingChildren(Landroid/view/ViewGroup;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static isFinished(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static isTransformedTouchPointInView(FFLandroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_0

    .line 507
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_0

    cmpl-float p0, p1, v0

    if-ltz p0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isViewAttachedUnderWrapper(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mWrapperView:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    return v2

    .line 328
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 329
    iget-object v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mWrapperView:Landroid/view/ViewGroup;

    if-eq p1, v1, :cond_2

    .line 330
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    .line 332
    :cond_2
    iget-object v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mWrapperView:Landroid/view/ViewGroup;

    if-ne p1, v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private makeActive(Lcom/swmansion/gesturehandler/GestureHandler;)V
    .locals 8

    .line 207
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v0

    const/4 v1, 0x0

    .line 209
    iput-boolean v1, p1, Lcom/swmansion/gesturehandler/GestureHandler;->mIsAwaiting:Z

    const/4 v2, 0x1

    .line 210
    iput-boolean v2, p1, Lcom/swmansion/gesturehandler/GestureHandler;->mIsActive:Z

    .line 211
    iget v3, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mActivationIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mActivationIndex:I

    iput v3, p1, Lcom/swmansion/gesturehandler/GestureHandler;->mActivationIndex:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 215
    :goto_0
    iget v5, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mGestureHandlersCount:I

    if-ge v3, v5, :cond_1

    .line 216
    iget-object v5, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mGestureHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v5, v5, v3

    .line 217
    invoke-static {v5, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->shouldHandlerBeCancelledBy(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 218
    iget-object v6, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mHandlersToCancel:[Lcom/swmansion/gesturehandler/GestureHandler;

    add-int/lit8 v7, v4, 0x1

    aput-object v5, v6, v4

    move v4, v7

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v4, v2

    :goto_1
    if-ltz v4, :cond_2

    .line 223
    iget-object v3, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mHandlersToCancel:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/swmansion/gesturehandler/GestureHandler;->cancel()V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 227
    :cond_2
    iget v3, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mAwaitingHandlersCount:I

    sub-int/2addr v3, v2

    :goto_2
    if-ltz v3, :cond_4

    .line 228
    iget-object v2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mAwaitingHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v2, v2, v3

    .line 229
    invoke-static {v2, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->shouldHandlerBeCancelledBy(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 230
    invoke-virtual {v2}, Lcom/swmansion/gesturehandler/GestureHandler;->cancel()V

    .line 231
    iput-boolean v1, v2, Lcom/swmansion/gesturehandler/GestureHandler;->mIsAwaiting:Z

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 234
    :cond_4
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->cleanupAwaitingHandlers()V

    const/4 v2, 0x2

    const/4 v3, 0x4

    .line 238
    invoke-virtual {p1, v3, v2}, Lcom/swmansion/gesturehandler/GestureHandler;->dispatchStateChange(II)V

    if-eq v0, v3, :cond_5

    const/4 v2, 0x5

    .line 240
    invoke-virtual {p1, v2, v3}, Lcom/swmansion/gesturehandler/GestureHandler;->dispatchStateChange(II)V

    if-eq v0, v2, :cond_5

    .line 242
    invoke-virtual {p1, v1, v2}, Lcom/swmansion/gesturehandler/GestureHandler;->dispatchStateChange(II)V

    :cond_5
    return-void
.end method

.method private recordHandlerIfNotPresent(Lcom/swmansion/gesturehandler/GestureHandler;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 367
    :goto_0
    iget v2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mGestureHandlersCount:I

    if-ge v1, v2, :cond_1

    .line 368
    iget-object v2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mGestureHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    :cond_1
    iget-object v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mGestureHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    array-length v3, v1

    if-ge v2, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 375
    iput v3, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mGestureHandlersCount:I

    aput-object p1, v1, v2

    .line 376
    iput-boolean v0, p1, Lcom/swmansion/gesturehandler/GestureHandler;->mIsActive:Z

    .line 377
    iput-boolean v0, p1, Lcom/swmansion/gesturehandler/GestureHandler;->mIsAwaiting:Z

    const v0, 0x7fffffff

    .line 378
    iput v0, p1, Lcom/swmansion/gesturehandler/GestureHandler;->mActivationIndex:I

    .line 379
    invoke-virtual {p1, p2, p0}, Lcom/swmansion/gesturehandler/GestureHandler;->prepare(Landroid/view/View;Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;)V

    return-void

    .line 373
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Too many recognizers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private recordViewHandlersForPointer(Landroid/view/View;[FI)Z
    .locals 9

    .line 383
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mHandlerRegistry:Lcom/swmansion/gesturehandler/GestureHandlerRegistry;

    invoke-interface {v0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerRegistry;->getHandlersForView(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 386
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 387
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/swmansion/gesturehandler/GestureHandler;

    .line 388
    invoke-virtual {v5}, Lcom/swmansion/gesturehandler/GestureHandler;->isEnabled()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    aget v6, p2, v1

    aget v8, p2, v7

    invoke-virtual {v5, p1, v6, v8}, Lcom/swmansion/gesturehandler/GestureHandler;->isWithinBounds(Landroid/view/View;FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 389
    invoke-direct {p0, v5, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->recordHandlerIfNotPresent(Lcom/swmansion/gesturehandler/GestureHandler;Landroid/view/View;)V

    .line 390
    invoke-virtual {v5, p3}, Lcom/swmansion/gesturehandler/GestureHandler;->startTrackingPointer(I)V

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    :cond_2
    return v1
.end method

.method private scheduleFinishedHandlersCleanup()V
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mIsHandlingTouch:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mHandlingChangeSemaphore:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->cleanupFinishedHandlers()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mFinishedHandlersCleanupScheduled:Z

    :goto_1
    return-void
.end method

.method private static shouldHandlerBeCancelledBy(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 2

    .line 521
    invoke-virtual {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandler;->hasCommonPointers(Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 525
    :cond_0
    invoke-static {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->canRunSimultaneously(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    if-eq p0, p1, :cond_3

    .line 530
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mIsAwaiting:Z

    if-nez v0, :cond_2

    .line 531
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 534
    :cond_2
    invoke-virtual {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandler;->shouldBeCancelledBy(Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static shouldHandlerWaitForOther(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    .line 511
    invoke-virtual {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandler;->shouldWaitForHandlerFailure(Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    invoke-virtual {p1, p0}, Lcom/swmansion/gesturehandler/GestureHandler;->shouldRequireToWaitForFailure(Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static shouldHandlerlessViewBecomeTouchTarget(Landroid/view/View;[F)Z
    .locals 3

    .line 441
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 442
    aget v0, p1, v1

    aget p1, p1, v2

    invoke-static {v0, p1, p0}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->isTransformedTouchPointInView(FFLandroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static transformTouchPointToViewCoords(FFLandroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/PointF;)V
    .locals 2

    .line 484
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p0, v0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p0, v0

    .line 485
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    .line 486
    invoke-virtual {p3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 487
    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p3

    if-nez p3, :cond_0

    .line 488
    sget-object p3, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->sMatrixTransformCoords:[F

    const/4 v0, 0x0

    .line 489
    aput p0, p3, v0

    const/4 p0, 0x1

    .line 490
    aput p1, p3, p0

    .line 491
    sget-object p1, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->sInverseMatrix:Landroid/graphics/Matrix;

    .line 492
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 493
    invoke-virtual {p1, p3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 494
    aget p1, p3, v0

    .line 495
    aget p0, p3, p0

    move v1, p1

    move p1, p0

    move p0, v1

    .line 497
    :cond_0
    invoke-virtual {p4, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private traverseWithPointerEvents(Landroid/view/View;[FI)Z
    .locals 4

    .line 446
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mViewConfigHelper:Lcom/swmansion/gesturehandler/ViewConfigurationHelper;

    invoke-interface {v0, p1}, Lcom/swmansion/gesturehandler/ViewConfigurationHelper;->getPointerEventsConfigForView(Landroid/view/View;)Lcom/swmansion/gesturehandler/PointerEventsConfig;

    move-result-object v0

    .line 447
    sget-object v1, Lcom/swmansion/gesturehandler/PointerEventsConfig;->NONE:Lcom/swmansion/gesturehandler/PointerEventsConfig;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 450
    :cond_0
    sget-object v1, Lcom/swmansion/gesturehandler/PointerEventsConfig;->BOX_ONLY:Lcom/swmansion/gesturehandler/PointerEventsConfig;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    .line 452
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->recordViewHandlersForPointer(Landroid/view/View;[FI)Z

    move-result p3

    if-nez p3, :cond_1

    .line 453
    invoke-static {p1, p2}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->shouldHandlerlessViewBecomeTouchTarget(Landroid/view/View;[F)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2

    .line 454
    :cond_3
    sget-object v1, Lcom/swmansion/gesturehandler/PointerEventsConfig;->BOX_NONE:Lcom/swmansion/gesturehandler/PointerEventsConfig;

    if-ne v0, v1, :cond_5

    .line 456
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 457
    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->extractGestureHandlers(Landroid/view/ViewGroup;[FI)Z

    move-result p1

    return p1

    :cond_4
    return v2

    .line 460
    :cond_5
    sget-object v1, Lcom/swmansion/gesturehandler/PointerEventsConfig;->AUTO:Lcom/swmansion/gesturehandler/PointerEventsConfig;

    if-ne v0, v1, :cond_9

    .line 463
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 464
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2, p3}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->extractGestureHandlers(Landroid/view/ViewGroup;[FI)Z

    move-result v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 466
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->recordViewHandlersForPointer(Landroid/view/View;[FI)Z

    move-result p3

    if-nez p3, :cond_7

    if-nez v0, :cond_7

    .line 467
    invoke-static {p1, p2}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->shouldHandlerlessViewBecomeTouchTarget(Landroid/view/View;[F)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    const/4 v2, 0x1

    :cond_8
    return v2

    .line 469
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown pointer event type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private tryActivate(Lcom/swmansion/gesturehandler/GestureHandler;)V
    .locals 1

    .line 155
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->hasOtherHandlerToWaitFor(Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->addAwaitingHandler(Lcom/swmansion/gesturehandler/GestureHandler;)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->makeActive(Lcom/swmansion/gesturehandler/GestureHandler;)V

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p1, Lcom/swmansion/gesturehandler/GestureHandler;->mIsAwaiting:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public deliverEventToGestureHandlers(Landroid/view/MotionEvent;)V
    .locals 4

    .line 250
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mGestureHandlersCount:I

    .line 251
    iget-object v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mGestureHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    iget-object v2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mPreparedHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    iget-object v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mPreparedHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    sget-object v2, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->sHandlersComparator:Ljava/util/Comparator;

    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :goto_0
    if-ge v3, v0, :cond_0

    .line 259
    iget-object v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mPreparedHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v1, v1, v3

    invoke-direct {p0, v1, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->deliverEventToGestureHandler(Lcom/swmansion/gesturehandler/GestureHandler;Landroid/view/MotionEvent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method onHandlerStateChange(Lcom/swmansion/gesturehandler/GestureHandler;II)V
    .locals 5

    .line 175
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mHandlingChangeSemaphore:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mHandlingChangeSemaphore:I

    .line 176
    invoke-static {p2}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->isFinished(I)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 178
    :goto_0
    iget v3, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mAwaitingHandlersCount:I

    if-ge v2, v3, :cond_2

    .line 179
    iget-object v3, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mAwaitingHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v3, v3, v2

    .line 180
    invoke-static {v3, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->shouldHandlerWaitForOther(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ne p2, v1, :cond_0

    .line 183
    invoke-virtual {v3}, Lcom/swmansion/gesturehandler/GestureHandler;->cancel()V

    .line 184
    iput-boolean v0, v3, Lcom/swmansion/gesturehandler/GestureHandler;->mIsAwaiting:Z

    goto :goto_1

    .line 187
    :cond_0
    invoke-direct {p0, v3}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->tryActivate(Lcom/swmansion/gesturehandler/GestureHandler;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_2
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->cleanupAwaitingHandlers()V

    :cond_3
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    .line 194
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->tryActivate(Lcom/swmansion/gesturehandler/GestureHandler;)V

    goto :goto_3

    :cond_4
    if-eq p3, v0, :cond_6

    if-ne p3, v1, :cond_5

    goto :goto_2

    .line 200
    :cond_5
    invoke-virtual {p1, p2, p3}, Lcom/swmansion/gesturehandler/GestureHandler;->dispatchStateChange(II)V

    goto :goto_3

    .line 196
    :cond_6
    :goto_2
    iget-boolean v0, p1, Lcom/swmansion/gesturehandler/GestureHandler;->mIsActive:Z

    if-eqz v0, :cond_7

    .line 197
    invoke-virtual {p1, p2, p3}, Lcom/swmansion/gesturehandler/GestureHandler;->dispatchStateChange(II)V

    .line 202
    :cond_7
    :goto_3
    iget p1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mHandlingChangeSemaphore:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mHandlingChangeSemaphore:I

    .line 203
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->scheduleFinishedHandlersCleanup()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mIsHandlingTouch:Z

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 99
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->cancelAll()V

    goto :goto_1

    .line 97
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->extractGestureHandlers(Landroid/view/MotionEvent;)V

    .line 101
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->deliverEventToGestureHandlers(Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mIsHandlingTouch:Z

    .line 103
    iget-boolean p1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mFinishedHandlersCleanupScheduled:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mHandlingChangeSemaphore:I

    if-nez p1, :cond_3

    .line 104
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->cleanupFinishedHandlers()V

    :cond_3
    return v0
.end method

.method public setMinimumAlphaForTraversal(F)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->mMinAlphaForTraversal:F

    return-void
.end method

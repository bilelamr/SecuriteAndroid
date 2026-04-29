.class public Lcom/swmansion/gesturehandler/PinchGestureHandler;
.super Lcom/swmansion/gesturehandler/GestureHandler;
.source "PinchGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/GestureHandler<",
        "Lcom/swmansion/gesturehandler/PinchGestureHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private mGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mLastScaleFactor:D

.field private mLastVelocity:D

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mSpanSlop:F

.field private mStartingSpan:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandler;-><init>()V

    .line 17
    new-instance v0, Lcom/swmansion/gesturehandler/PinchGestureHandler$1;

    invoke-direct {v0, p0}, Lcom/swmansion/gesturehandler/PinchGestureHandler$1;-><init>(Lcom/swmansion/gesturehandler/PinchGestureHandler;)V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->mGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Lcom/swmansion/gesturehandler/GestureHandler;->setShouldCancelWhenOutside(Z)Lcom/swmansion/gesturehandler/GestureHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/swmansion/gesturehandler/PinchGestureHandler;)D
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->mLastScaleFactor:D

    return-wide v0
.end method

.method static synthetic access$002(Lcom/swmansion/gesturehandler/PinchGestureHandler;D)D
    .locals 0

    .line 8
    iput-wide p1, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->mLastScaleFactor:D

    return-wide p1
.end method

.method static synthetic access$102(Lcom/swmansion/gesturehandler/PinchGestureHandler;D)D
    .locals 0

    .line 8
    iput-wide p1, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->mLastVelocity:D

    return-wide p1
.end method

.method static synthetic access$200(Lcom/swmansion/gesturehandler/PinchGestureHandler;)F
    .locals 0

    .line 8
    iget p0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->mStartingSpan:F

    return p0
.end method

.method static synthetic access$202(Lcom/swmansion/gesturehandler/PinchGestureHandler;F)F
    .locals 0

    .line 8
    iput p1, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->mStartingSpan:F

    return p1
.end method

.method static synthetic access$300(Lcom/swmansion/gesturehandler/PinchGestureHandler;)F
    .locals 0

    .line 8
    iget p0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->mSpanSlop:F

    return p0
.end method


# virtual methods
.method public getFocalPointX()F
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-nez v0, :cond_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 100
    :cond_0
    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    return v0
.end method

.method public getFocalPointY()F
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-nez v0, :cond_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 107
    :cond_0
    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    return v0
.end method

.method public getScale()D
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->mLastScaleFactor:D

    return-wide v0
.end method

.method public getVelocity()D
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->mLastVelocity:D

    return-wide v0
.end method

.method protected onHandle(Landroid/view/MotionEvent;)V
    .locals 3

    .line 54
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 56
    iput-wide v1, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->mLastVelocity:D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 57
    iput-wide v1, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->mLastScaleFactor:D

    .line 58
    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->mGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v1, v0, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 59
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->mSpanSlop:F

    .line 62
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->begin()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 69
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    .line 75
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->end()V

    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 77
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->fail()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onReset()V
    .locals 2

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    const-wide/16 v0, 0x0

    .line 84
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->mLastVelocity:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 85
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->mLastScaleFactor:D

    return-void
.end method

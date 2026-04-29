.class public Lcom/swmansion/gesturehandler/RotationGestureHandler;
.super Lcom/swmansion/gesturehandler/GestureHandler;
.source "RotationGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/GestureHandler<",
        "Lcom/swmansion/gesturehandler/RotationGestureHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private mGestureListener:Lcom/swmansion/gesturehandler/RotationGestureDetector$OnRotationGestureListener;

.field private mLastRotation:D

.field private mLastVelocity:D

.field private mRotationGestureDetector:Lcom/swmansion/gesturehandler/RotationGestureDetector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandler;-><init>()V

    .line 13
    new-instance v0, Lcom/swmansion/gesturehandler/RotationGestureHandler$1;

    invoke-direct {v0, p0}, Lcom/swmansion/gesturehandler/RotationGestureHandler$1;-><init>(Lcom/swmansion/gesturehandler/RotationGestureHandler;)V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->mGestureListener:Lcom/swmansion/gesturehandler/RotationGestureDetector$OnRotationGestureListener;

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcom/swmansion/gesturehandler/GestureHandler;->setShouldCancelWhenOutside(Z)Lcom/swmansion/gesturehandler/GestureHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/swmansion/gesturehandler/RotationGestureHandler;)D
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->mLastRotation:D

    return-wide v0
.end method

.method static synthetic access$002(Lcom/swmansion/gesturehandler/RotationGestureHandler;D)D
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->mLastRotation:D

    return-wide p1
.end method

.method static synthetic access$102(Lcom/swmansion/gesturehandler/RotationGestureHandler;D)D
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->mLastVelocity:D

    return-wide p1
.end method


# virtual methods
.method public getAnchorX()F
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->mRotationGestureDetector:Lcom/swmansion/gesturehandler/RotationGestureDetector;

    if-nez v0, :cond_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 87
    :cond_0
    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/RotationGestureDetector;->getAnchorX()F

    move-result v0

    return v0
.end method

.method public getAnchorY()F
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->mRotationGestureDetector:Lcom/swmansion/gesturehandler/RotationGestureDetector;

    if-nez v0, :cond_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 94
    :cond_0
    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/RotationGestureDetector;->getAnchorY()F

    move-result v0

    return v0
.end method

.method public getRotation()D
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->mLastRotation:D

    return-wide v0
.end method

.method public getVelocity()D
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->mLastVelocity:D

    return-wide v0
.end method

.method protected onHandle(Landroid/view/MotionEvent;)V
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    .line 48
    iput-wide v1, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->mLastVelocity:D

    .line 49
    iput-wide v1, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->mLastRotation:D

    .line 50
    new-instance v1, Lcom/swmansion/gesturehandler/RotationGestureDetector;

    iget-object v2, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->mGestureListener:Lcom/swmansion/gesturehandler/RotationGestureDetector$OnRotationGestureListener;

    invoke-direct {v1, v2}, Lcom/swmansion/gesturehandler/RotationGestureDetector;-><init>(Lcom/swmansion/gesturehandler/RotationGestureDetector$OnRotationGestureListener;)V

    iput-object v1, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->mRotationGestureDetector:Lcom/swmansion/gesturehandler/RotationGestureDetector;

    .line 52
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->begin()V

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->mRotationGestureDetector:Lcom/swmansion/gesturehandler/RotationGestureDetector;

    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {v1, p1}, Lcom/swmansion/gesturehandler/RotationGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 59
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const/4 p1, 0x4

    if-ne v0, p1, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->end()V

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->fail()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onReset()V
    .locals 2

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->mRotationGestureDetector:Lcom/swmansion/gesturehandler/RotationGestureDetector;

    const-wide/16 v0, 0x0

    .line 71
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->mLastVelocity:D

    .line 72
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->mLastRotation:D

    return-void
.end method

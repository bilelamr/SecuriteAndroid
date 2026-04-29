.class Lcom/swmansion/gesturehandler/PinchGestureHandler$1;
.super Ljava/lang/Object;
.source "PinchGestureHandler.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/PinchGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/gesturehandler/PinchGestureHandler;


# direct methods
.method constructor <init>(Lcom/swmansion/gesturehandler/PinchGestureHandler;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler$1;->this$0:Lcom/swmansion/gesturehandler/PinchGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7

    .line 22
    iget-object v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler$1;->this$0:Lcom/swmansion/gesturehandler/PinchGestureHandler;

    invoke-static {v0}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->access$000(Lcom/swmansion/gesturehandler/PinchGestureHandler;)D

    move-result-wide v0

    .line 23
    iget-object v2, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler$1;->this$0:Lcom/swmansion/gesturehandler/PinchGestureHandler;

    invoke-static {v2}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->access$000(Lcom/swmansion/gesturehandler/PinchGestureHandler;)D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    invoke-static {v2, v3, v4}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->access$002(Lcom/swmansion/gesturehandler/PinchGestureHandler;D)D

    .line 24
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 26
    iget-object v4, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler$1;->this$0:Lcom/swmansion/gesturehandler/PinchGestureHandler;

    invoke-static {v4}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->access$000(Lcom/swmansion/gesturehandler/PinchGestureHandler;)D

    move-result-wide v5

    sub-double/2addr v5, v0

    long-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v0

    invoke-static {v4, v5, v6}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->access$102(Lcom/swmansion/gesturehandler/PinchGestureHandler;D)D

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler$1;->this$0:Lcom/swmansion/gesturehandler/PinchGestureHandler;

    invoke-static {v0}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->access$200(Lcom/swmansion/gesturehandler/PinchGestureHandler;)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler$1;->this$0:Lcom/swmansion/gesturehandler/PinchGestureHandler;

    invoke-static {v0}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->access$300(Lcom/swmansion/gesturehandler/PinchGestureHandler;)F

    move-result v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler$1;->this$0:Lcom/swmansion/gesturehandler/PinchGestureHandler;

    .line 29
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 30
    iget-object p1, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler$1;->this$0:Lcom/swmansion/gesturehandler/PinchGestureHandler;

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->activate()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler$1;->this$0:Lcom/swmansion/gesturehandler/PinchGestureHandler;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    invoke-static {v0, p1}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->access$202(Lcom/swmansion/gesturehandler/PinchGestureHandler;F)F

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

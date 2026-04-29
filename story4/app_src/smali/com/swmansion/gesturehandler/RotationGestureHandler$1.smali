.class Lcom/swmansion/gesturehandler/RotationGestureHandler$1;
.super Ljava/lang/Object;
.source "RotationGestureHandler.java"

# interfaces
.implements Lcom/swmansion/gesturehandler/RotationGestureDetector$OnRotationGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/RotationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/gesturehandler/RotationGestureHandler;


# direct methods
.method constructor <init>(Lcom/swmansion/gesturehandler/RotationGestureHandler;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler$1;->this$0:Lcom/swmansion/gesturehandler/RotationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotation(Lcom/swmansion/gesturehandler/RotationGestureDetector;)Z
    .locals 7

    .line 17
    iget-object v0, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler$1;->this$0:Lcom/swmansion/gesturehandler/RotationGestureHandler;

    invoke-static {v0}, Lcom/swmansion/gesturehandler/RotationGestureHandler;->access$000(Lcom/swmansion/gesturehandler/RotationGestureHandler;)D

    move-result-wide v0

    .line 18
    iget-object v2, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler$1;->this$0:Lcom/swmansion/gesturehandler/RotationGestureHandler;

    invoke-static {v2}, Lcom/swmansion/gesturehandler/RotationGestureHandler;->access$000(Lcom/swmansion/gesturehandler/RotationGestureHandler;)D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/RotationGestureDetector;->getRotation()D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/swmansion/gesturehandler/RotationGestureHandler;->access$002(Lcom/swmansion/gesturehandler/RotationGestureHandler;D)D

    .line 19
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/RotationGestureDetector;->getTimeDelta()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler$1;->this$0:Lcom/swmansion/gesturehandler/RotationGestureHandler;

    invoke-static {p1}, Lcom/swmansion/gesturehandler/RotationGestureHandler;->access$000(Lcom/swmansion/gesturehandler/RotationGestureHandler;)D

    move-result-wide v4

    sub-double/2addr v4, v0

    long-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v0

    invoke-static {p1, v4, v5}, Lcom/swmansion/gesturehandler/RotationGestureHandler;->access$102(Lcom/swmansion/gesturehandler/RotationGestureHandler;D)D

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler$1;->this$0:Lcom/swmansion/gesturehandler/RotationGestureHandler;

    invoke-static {p1}, Lcom/swmansion/gesturehandler/RotationGestureHandler;->access$000(Lcom/swmansion/gesturehandler/RotationGestureHandler;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3fb657184ae74487L    # 0.08726646259971647

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler$1;->this$0:Lcom/swmansion/gesturehandler/RotationGestureHandler;

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 24
    iget-object p1, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler$1;->this$0:Lcom/swmansion/gesturehandler/RotationGestureHandler;

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->activate()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onRotationBegin(Lcom/swmansion/gesturehandler/RotationGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onRotationEnd(Lcom/swmansion/gesturehandler/RotationGestureDetector;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler$1;->this$0:Lcom/swmansion/gesturehandler/RotationGestureHandler;

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->end()V

    return-void
.end method

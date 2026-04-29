.class Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$1;
.super Ljava/lang/Object;
.source "RNGestureHandlerModule.java"

# interfaces
.implements Lcom/swmansion/gesturehandler/OnTouchEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;


# direct methods
.method constructor <init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$1;->this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(Lcom/swmansion/gesturehandler/GestureHandler;II)V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$1;->this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;

    invoke-static {v0, p1, p2, p3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->access$300(Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;Lcom/swmansion/gesturehandler/GestureHandler;II)V

    return-void
.end method

.method public onTouchEvent(Lcom/swmansion/gesturehandler/GestureHandler;Landroid/view/MotionEvent;)V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$1;->this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;

    invoke-static {v0, p1, p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->access$200(Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;Lcom/swmansion/gesturehandler/GestureHandler;Landroid/view/MotionEvent;)V

    return-void
.end method

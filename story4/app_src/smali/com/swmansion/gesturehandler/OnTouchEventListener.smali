.class public interface abstract Lcom/swmansion/gesturehandler/OnTouchEventListener;
.super Ljava/lang/Object;
.source "OnTouchEventListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/swmansion/gesturehandler/GestureHandler;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onStateChange(Lcom/swmansion/gesturehandler/GestureHandler;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation
.end method

.method public abstract onTouchEvent(Lcom/swmansion/gesturehandler/GestureHandler;Landroid/view/MotionEvent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation
.end method

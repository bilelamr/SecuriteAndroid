.class Lcom/swmansion/gesturehandler/LongPressGestureHandler$1;
.super Ljava/lang/Object;
.source "LongPressGestureHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/gesturehandler/LongPressGestureHandler;->onHandle(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/gesturehandler/LongPressGestureHandler;


# direct methods
.method constructor <init>(Lcom/swmansion/gesturehandler/LongPressGestureHandler;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/swmansion/gesturehandler/LongPressGestureHandler$1;->this$0:Lcom/swmansion/gesturehandler/LongPressGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/swmansion/gesturehandler/LongPressGestureHandler$1;->this$0:Lcom/swmansion/gesturehandler/LongPressGestureHandler;

    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/GestureHandler;->activate()V

    return-void
.end method

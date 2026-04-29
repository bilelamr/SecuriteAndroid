.class Lcom/swmansion/gesturehandler/FlingGestureHandler$1;
.super Ljava/lang/Object;
.source "FlingGestureHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/FlingGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/gesturehandler/FlingGestureHandler;


# direct methods
.method constructor <init>(Lcom/swmansion/gesturehandler/FlingGestureHandler;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler$1;->this$0:Lcom/swmansion/gesturehandler/FlingGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler$1;->this$0:Lcom/swmansion/gesturehandler/FlingGestureHandler;

    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/GestureHandler;->fail()V

    return-void
.end method

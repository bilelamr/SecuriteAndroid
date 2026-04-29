.class Lcom/swmansion/rnscreens/ScreenContainer$1;
.super Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;
.source "ScreenContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/ScreenContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/rnscreens/ScreenContainer;


# direct methods
.method constructor <init>(Lcom/swmansion/rnscreens/ScreenContainer;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenContainer$1;->this$0:Lcom/swmansion/rnscreens/ScreenContainer;

    invoke-direct {p0}, Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    .line 37
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenContainer$1;->this$0:Lcom/swmansion/rnscreens/ScreenContainer;

    invoke-static {p1}, Lcom/swmansion/rnscreens/ScreenContainer;->access$000(Lcom/swmansion/rnscreens/ScreenContainer;)V

    return-void
.end method

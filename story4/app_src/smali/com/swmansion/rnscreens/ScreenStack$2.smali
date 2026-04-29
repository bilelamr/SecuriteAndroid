.class Lcom/swmansion/rnscreens/ScreenStack$2;
.super Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
.source "ScreenStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/ScreenStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/rnscreens/ScreenStack;


# direct methods
.method constructor <init>(Lcom/swmansion/rnscreens/ScreenStack;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack$2;->this$0:Lcom/swmansion/rnscreens/ScreenStack;

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResumed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack$2;->this$0:Lcom/swmansion/rnscreens/ScreenStack;

    invoke-static {p1}, Lcom/swmansion/rnscreens/ScreenStack;->access$000(Lcom/swmansion/rnscreens/ScreenStack;)Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object p1

    if-ne p1, p2, :cond_0

    .line 43
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack$2;->this$0:Lcom/swmansion/rnscreens/ScreenStack;

    invoke-static {p1}, Lcom/swmansion/rnscreens/ScreenStack;->access$000(Lcom/swmansion/rnscreens/ScreenStack;)Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/swmansion/rnscreens/ScreenStack;->access$100(Lcom/swmansion/rnscreens/ScreenStack;Lcom/swmansion/rnscreens/ScreenStackFragment;)V

    :cond_0
    return-void
.end method

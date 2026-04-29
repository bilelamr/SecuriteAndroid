.class Lcom/swmansion/rnscreens/ScreenStack$1;
.super Ljava/lang/Object;
.source "ScreenStack.java"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


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

    .line 27
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack$1;->this$0:Lcom/swmansion/rnscreens/ScreenStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack$1;->this$0:Lcom/swmansion/rnscreens/ScreenStack;

    iget-object v0, v0, Lcom/swmansion/rnscreens/ScreenContainer;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack$1;->this$0:Lcom/swmansion/rnscreens/ScreenStack;

    invoke-static {v0}, Lcom/swmansion/rnscreens/ScreenStack;->access$000(Lcom/swmansion/rnscreens/ScreenStack;)Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/ScreenStack;->dismiss(Lcom/swmansion/rnscreens/ScreenStackFragment;)V

    :cond_0
    return-void
.end method

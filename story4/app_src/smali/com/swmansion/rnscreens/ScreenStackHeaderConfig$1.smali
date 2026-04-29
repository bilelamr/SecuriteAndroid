.class Lcom/swmansion/rnscreens/ScreenStackHeaderConfig$1;
.super Ljava/lang/Object;
.source "ScreenStackHeaderConfig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;


# direct methods
.method constructor <init>(Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig$1;->this$0:Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 48
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig$1;->this$0:Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;

    invoke-static {p1}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->access$000(Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;)Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig$1;->this$0:Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;

    invoke-static {v0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->access$100(Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;)Lcom/swmansion/rnscreens/ScreenStack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStack;->getRootScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 52
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 53
    instance-of v0, p1, Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v0, :cond_1

    .line 54
    check-cast p1, Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->dismiss()V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

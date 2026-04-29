.class Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "ScreenStackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/ScreenStackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyingCoordinatorLayout"
.end annotation


# instance fields
.field private final mFragment:Lcom/swmansion/rnscreens/ScreenFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/swmansion/rnscreens/ScreenFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;->mFragment:Lcom/swmansion/rnscreens/ScreenFragment;

    return-void
.end method


# virtual methods
.method protected onAnimationEnd()V
    .locals 1

    .line 36
    invoke-super {p0}, Landroid/view/ViewGroup;->onAnimationEnd()V

    .line 37
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;->mFragment:Lcom/swmansion/rnscreens/ScreenFragment;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenFragment;->onViewAnimationEnd()V

    return-void
.end method

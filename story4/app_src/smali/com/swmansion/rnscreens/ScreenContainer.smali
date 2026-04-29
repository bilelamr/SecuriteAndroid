.class public Lcom/swmansion/rnscreens/ScreenContainer;
.super Landroid/view/ViewGroup;
.source "ScreenContainer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/swmansion/rnscreens/ScreenFragment;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# instance fields
.field private mCurrentTransaction:Landroidx/fragment/app/FragmentTransaction;

.field protected mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mFrameCallback:Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;

.field private mIsAttached:Z

.field private final mLayoutCallback:Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;

.field private mLayoutEnqueued:Z

.field private mNeedUpdate:Z

.field private mProcessingTransaction:Landroidx/fragment/app/FragmentTransaction;

.field protected final mScreenFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mLayoutEnqueued:Z

    .line 34
    new-instance p1, Lcom/swmansion/rnscreens/ScreenContainer$1;

    invoke-direct {p1, p0}, Lcom/swmansion/rnscreens/ScreenContainer$1;-><init>(Lcom/swmansion/rnscreens/ScreenContainer;)V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mFrameCallback:Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;

    .line 41
    new-instance p1, Lcom/swmansion/rnscreens/ScreenContainer$2;

    invoke-direct {p1, p0}, Lcom/swmansion/rnscreens/ScreenContainer$2;-><init>(Lcom/swmansion/rnscreens/ScreenContainer;)V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mLayoutCallback:Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/swmansion/rnscreens/ScreenContainer;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->updateIfNeeded()V

    return-void
.end method

.method static synthetic access$102(Lcom/swmansion/rnscreens/ScreenContainer;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mLayoutEnqueued:Z

    return p1
.end method

.method static synthetic access$200(Lcom/swmansion/rnscreens/ScreenContainer;)Landroidx/fragment/app/FragmentTransaction;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mProcessingTransaction:Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method static synthetic access$202(Lcom/swmansion/rnscreens/ScreenContainer;Landroidx/fragment/app/FragmentTransaction;)Landroidx/fragment/app/FragmentTransaction;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mProcessingTransaction:Landroidx/fragment/app/FragmentTransaction;

    return-object p1
.end method

.method private attachScreen(Lcom/swmansion/rnscreens/ScreenFragment;)V
    .locals 2

    .line 188
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    return-void
.end method

.method private detachScreen(Lcom/swmansion/rnscreens/ScreenFragment;)V
    .locals 1

    .line 198
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    return-void
.end method

.method private findFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 3

    move-object v0, p0

    .line 129
    :goto_0
    instance-of v1, v0, Lcom/facebook/react/ReactRootView;

    if-nez v1, :cond_0

    instance-of v2, v0, Lcom/swmansion/rnscreens/Screen;

    if-nez v2, :cond_0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 130
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_0
    instance-of v2, v0, Lcom/swmansion/rnscreens/Screen;

    if-eqz v2, :cond_1

    .line 135
    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v1, :cond_4

    .line 148
    check-cast v0, Lcom/facebook/react/ReactRootView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 149
    :goto_1
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-nez v1, :cond_2

    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_2

    .line 150
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 156
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0

    .line 153
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "In order to use RNScreens components your app\'s activity need to extend ReactFragmentActivity or ReactCompatActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScreenContainer is not attached under ReactRootView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private moveToFront(Lcom/swmansion/rnscreens/ScreenFragment;)V
    .locals 2

    .line 192
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 193
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 194
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    return-void
.end method

.method private final onUpdate()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->performUpdate()V

    return-void
.end method

.method private removeMyFragments()V
    .locals 5

    .line 237
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 240
    instance-of v4, v3, Lcom/swmansion/rnscreens/ScreenFragment;

    if-eqz v4, :cond_0

    .line 241
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 246
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    :cond_2
    return-void
.end method

.method private updateIfNeeded()V
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mNeedUpdate:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mIsAttached:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 262
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mNeedUpdate:Z

    .line 263
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->onUpdate()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected adapt(Lcom/swmansion/rnscreens/Screen;)Lcom/swmansion/rnscreens/ScreenFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/rnscreens/Screen;",
            ")TT;"
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/swmansion/rnscreens/ScreenFragment;

    invoke-direct {v0, p1}, Lcom/swmansion/rnscreens/ScreenFragment;-><init>(Lcom/swmansion/rnscreens/Screen;)V

    return-object v0
.end method

.method protected addScreen(Lcom/swmansion/rnscreens/Screen;I)V
    .locals 2

    .line 97
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->adapt(Lcom/swmansion/rnscreens/Screen;)Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object v0

    .line 98
    invoke-virtual {p1, v0}, Lcom/swmansion/rnscreens/Screen;->setFragment(Lcom/swmansion/rnscreens/ScreenFragment;)V

    .line 99
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 100
    invoke-virtual {p1, p0}, Lcom/swmansion/rnscreens/Screen;->setContainer(Lcom/swmansion/rnscreens/ScreenContainer;)V

    .line 101
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->markUpdated()V

    return-void
.end method

.method protected getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mCurrentTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mCurrentTransaction:Landroidx/fragment/app/FragmentTransaction;

    .line 162
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mCurrentTransaction:Landroidx/fragment/app/FragmentTransaction;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mCurrentTransaction:Landroidx/fragment/app/FragmentTransaction;

    return-object v0
.end method

.method protected getScreenAt(I)Lcom/swmansion/rnscreens/Screen;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swmansion/rnscreens/ScreenFragment;

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    return-object p1
.end method

.method protected getScreenCount()I
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected hasScreen(Lcom/swmansion/rnscreens/ScreenFragment;)Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected isScreenActive(Lcom/swmansion/rnscreens/ScreenFragment;)Z
    .locals 0

    .line 202
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->isActive()Z

    move-result p1

    return p1
.end method

.method protected markUpdated()V
    .locals 3

    .line 78
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mNeedUpdate:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mNeedUpdate:Z

    .line 82
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer;->getInstance()Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->NATIVE_ANIMATED_MODULE:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mFrameCallback:Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    :cond_0
    return-void
.end method

.method protected notifyChildUpdate()V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->markUpdated()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 211
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mIsAttached:Z

    .line 213
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mNeedUpdate:Z

    .line 214
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->findFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 215
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->updateIfNeeded()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->removeMyFragments()V

    .line 227
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 229
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 230
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mIsAttached:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 58
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    .line 59
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p4, p2, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 252
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 253
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 254
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected performUpdate()V
    .locals 8

    .line 283
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 284
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 285
    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/swmansion/rnscreens/ScreenFragment;

    .line 286
    invoke-virtual {p0, v4}, Lcom/swmansion/rnscreens/ScreenContainer;->isScreenActive(Lcom/swmansion/rnscreens/ScreenFragment;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 287
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 288
    invoke-direct {p0, v4}, Lcom/swmansion/rnscreens/ScreenContainer;->detachScreen(Lcom/swmansion/rnscreens/ScreenFragment;)V

    .line 290
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 292
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 293
    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 294
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 295
    aget-object v3, v0, v1

    instance-of v3, v3, Lcom/swmansion/rnscreens/ScreenFragment;

    if-eqz v3, :cond_2

    .line 296
    aget-object v3, v0, v1

    check-cast v3, Lcom/swmansion/rnscreens/ScreenFragment;

    invoke-direct {p0, v3}, Lcom/swmansion/rnscreens/ScreenContainer;->detachScreen(Lcom/swmansion/rnscreens/ScreenFragment;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 303
    :cond_3
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v1, v0, :cond_5

    .line 304
    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/swmansion/rnscreens/ScreenFragment;

    invoke-virtual {p0, v4}, Lcom/swmansion/rnscreens/ScreenContainer;->isScreenActive(Lcom/swmansion/rnscreens/ScreenFragment;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    if-le v3, v0, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 312
    :goto_3
    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_4
    if-ge v2, v3, :cond_9

    .line 313
    iget-object v5, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/swmansion/rnscreens/ScreenFragment;

    .line 314
    invoke-virtual {p0, v5}, Lcom/swmansion/rnscreens/ScreenContainer;->isScreenActive(Lcom/swmansion/rnscreens/ScreenFragment;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 315
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v7

    if-nez v7, :cond_7

    .line 317
    invoke-direct {p0, v5}, Lcom/swmansion/rnscreens/ScreenContainer;->attachScreen(Lcom/swmansion/rnscreens/ScreenFragment;)V

    const/4 v4, 0x1

    goto :goto_5

    :cond_7
    if-eqz v6, :cond_8

    if-eqz v4, :cond_8

    .line 319
    invoke-direct {p0, v5}, Lcom/swmansion/rnscreens/ScreenContainer;->moveToFront(Lcom/swmansion/rnscreens/ScreenFragment;)V

    .line 321
    :cond_8
    :goto_5
    invoke-virtual {v5}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/swmansion/rnscreens/Screen;->setTransitioning(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 323
    :cond_9
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->tryCommitTransaction()V

    return-void
.end method

.method protected removeAllScreens()V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 112
    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/rnscreens/ScreenFragment;

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/swmansion/rnscreens/Screen;->setContainer(Lcom/swmansion/rnscreens/ScreenContainer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->markUpdated()V

    return-void
.end method

.method protected removeScreenAt(I)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/rnscreens/ScreenFragment;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/Screen;->setContainer(Lcom/swmansion/rnscreens/ScreenContainer;)V

    .line 106
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 107
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->markUpdated()V

    return-void
.end method

.method public requestLayout()V
    .locals 3

    .line 65
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 67
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mLayoutEnqueued:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mLayoutCallback:Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mLayoutEnqueued:Z

    .line 71
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer;->getInstance()Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->NATIVE_ANIMATED_MODULE:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mLayoutCallback:Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    :cond_0
    return-void
.end method

.method protected tryCommitTransaction()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mCurrentTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 170
    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mProcessingTransaction:Landroidx/fragment/app/FragmentTransaction;

    .line 171
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mProcessingTransaction:Landroidx/fragment/app/FragmentTransaction;

    new-instance v2, Lcom/swmansion/rnscreens/ScreenContainer$3;

    invoke-direct {v2, p0, v0}, Lcom/swmansion/rnscreens/ScreenContainer$3;-><init>(Lcom/swmansion/rnscreens/ScreenContainer;Landroidx/fragment/app/FragmentTransaction;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->runOnCommit(Ljava/lang/Runnable;)Landroidx/fragment/app/FragmentTransaction;

    .line 182
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mCurrentTransaction:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mCurrentTransaction:Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    return-void
.end method

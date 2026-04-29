.class public Lcom/swmansion/rnscreens/ScreenContainerViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "ScreenContainerViewManager.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNSScreenContainer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/swmansion/rnscreens/ScreenContainer;",
        ">;"
    }
.end annotation


# static fields
.field protected static final REACT_CLASS:Ljava/lang/String; = "RNSScreenContainer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addView(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 9
    check-cast p1, Lcom/swmansion/rnscreens/ScreenContainer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/swmansion/rnscreens/ScreenContainerViewManager;->addView(Lcom/swmansion/rnscreens/ScreenContainer;Landroid/view/View;I)V

    return-void
.end method

.method public addView(Lcom/swmansion/rnscreens/ScreenContainer;Landroid/view/View;I)V
    .locals 1

    .line 26
    instance-of v0, p2, Lcom/swmansion/rnscreens/Screen;

    if-eqz v0, :cond_0

    .line 29
    check-cast p2, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p1, p2, p3}, Lcom/swmansion/rnscreens/ScreenContainer;->addScreen(Lcom/swmansion/rnscreens/Screen;I)V

    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Attempt attach child that is not of type RNScreens"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainerViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/swmansion/rnscreens/ScreenContainer;
    .locals 1

    .line 21
    new-instance v0, Lcom/swmansion/rnscreens/ScreenContainer;

    invoke-direct {v0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 0

    .line 9
    check-cast p1, Lcom/swmansion/rnscreens/ScreenContainer;

    invoke-virtual {p0, p1, p2}, Lcom/swmansion/rnscreens/ScreenContainerViewManager;->getChildAt(Lcom/swmansion/rnscreens/ScreenContainer;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildAt(Lcom/swmansion/rnscreens/ScreenContainer;I)Landroid/view/View;
    .locals 0

    .line 49
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/ScreenContainer;->getScreenAt(I)Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChildCount(Landroid/view/ViewGroup;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/swmansion/rnscreens/ScreenContainer;

    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainerViewManager;->getChildCount(Lcom/swmansion/rnscreens/ScreenContainer;)I

    move-result p1

    return p1
.end method

.method public getChildCount(Lcom/swmansion/rnscreens/ScreenContainer;)I
    .locals 0

    .line 44
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenContainer;->getScreenCount()I

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNSScreenContainer"

    return-object v0
.end method

.method public needsCustomLayoutForChildren()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic removeAllViews(Landroid/view/ViewGroup;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/swmansion/rnscreens/ScreenContainer;

    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainerViewManager;->removeAllViews(Lcom/swmansion/rnscreens/ScreenContainer;)V

    return-void
.end method

.method public removeAllViews(Lcom/swmansion/rnscreens/ScreenContainer;)V
    .locals 0

    .line 39
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenContainer;->removeAllScreens()V

    return-void
.end method

.method public bridge synthetic removeViewAt(Landroid/view/ViewGroup;I)V
    .locals 0

    .line 9
    check-cast p1, Lcom/swmansion/rnscreens/ScreenContainer;

    invoke-virtual {p0, p1, p2}, Lcom/swmansion/rnscreens/ScreenContainerViewManager;->removeViewAt(Lcom/swmansion/rnscreens/ScreenContainer;I)V

    return-void
.end method

.method public removeViewAt(Lcom/swmansion/rnscreens/ScreenContainer;I)V
    .locals 0

    .line 34
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/ScreenContainer;->removeScreenAt(I)V

    return-void
.end method

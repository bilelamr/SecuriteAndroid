.class Lcom/horcrux/svg/PathView;
.super Lcom/horcrux/svg/RenderableView;
.source "PathView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/horcrux/svg/RenderableView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 0

    .line 37
    iget-object p1, p0, Lcom/horcrux/svg/PathView;->mPath:Landroid/graphics/Path;

    return-object p1
.end method

.method public setD(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "d"
    .end annotation

    .line 30
    new-instance v0, Lcom/horcrux/svg/PropHelper$PathParser;

    iget v1, p0, Lcom/horcrux/svg/VirtualView;->mScale:F

    invoke-direct {v0, p1, v1}, Lcom/horcrux/svg/PropHelper$PathParser;-><init>(Ljava/lang/String;F)V

    .line 31
    invoke-virtual {v0}, Lcom/horcrux/svg/PropHelper$PathParser;->getPath()Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/PathView;->mPath:Landroid/graphics/Path;

    .line 32
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

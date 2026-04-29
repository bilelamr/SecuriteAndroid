.class public Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;
.super Ljava/lang/Object;
.source "MatrixMathHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/MatrixMathHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatrixDecompositionContext"
.end annotation


# instance fields
.field perspective:[D

.field rotationDegrees:[D

.field scale:[D

.field skew:[D

.field translation:[D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [D

    .line 21
    iput-object v0, p0, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->perspective:[D

    const/4 v0, 0x3

    new-array v1, v0, [D

    .line 22
    iput-object v1, p0, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->scale:[D

    new-array v1, v0, [D

    .line 23
    iput-object v1, p0, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->skew:[D

    new-array v1, v0, [D

    .line 24
    iput-object v1, p0, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->translation:[D

    new-array v0, v0, [D

    .line 25
    iput-object v0, p0, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->rotationDegrees:[D

    return-void
.end method

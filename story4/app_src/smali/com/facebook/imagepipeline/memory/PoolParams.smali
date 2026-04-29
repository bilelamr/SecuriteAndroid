.class public Lcom/facebook/imagepipeline/memory/PoolParams;
.super Ljava/lang/Object;
.source "PoolParams.java"


# instance fields
.field public final bucketSizes:Landroid/util/SparseIntArray;

.field public fixBucketsReinitialization:Z

.field public final maxNumThreads:I

.field public final maxSizeHardCap:I

.field public final maxSizeSoftCap:I


# direct methods
.method public constructor <init>(IILandroid/util/SparseIntArray;)V
    .locals 7

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 82
    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/memory/PoolParams;-><init>(IILandroid/util/SparseIntArray;III)V

    return-void
.end method

.method public constructor <init>(IILandroid/util/SparseIntArray;III)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 101
    :goto_0
    invoke-static {p4}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 102
    iput p1, p0, Lcom/facebook/imagepipeline/memory/PoolParams;->maxSizeSoftCap:I

    .line 103
    iput p2, p0, Lcom/facebook/imagepipeline/memory/PoolParams;->maxSizeHardCap:I

    .line 104
    iput-object p3, p0, Lcom/facebook/imagepipeline/memory/PoolParams;->bucketSizes:Landroid/util/SparseIntArray;

    .line 107
    iput p6, p0, Lcom/facebook/imagepipeline/memory/PoolParams;->maxNumThreads:I

    return-void
.end method

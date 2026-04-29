.class public interface abstract Lcom/facebook/imagepipeline/memory/PoolStatsTracker;
.super Ljava/lang/Object;
.source "PoolStatsTracker.java"


# virtual methods
.method public abstract onAlloc(I)V
.end method

.method public abstract onFree(I)V
.end method

.method public abstract onHardCapReached()V
.end method

.method public abstract onSoftCapReached()V
.end method

.method public abstract onValueRelease(I)V
.end method

.method public abstract onValueReuse(I)V
.end method

.method public abstract setBasePool(Lcom/facebook/imagepipeline/memory/BasePool;)V
.end method

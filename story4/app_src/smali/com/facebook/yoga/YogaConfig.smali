.class public Lcom/facebook/yoga/YogaConfig;
.super Ljava/lang/Object;
.source "YogaConfig.java"


# static fields
.field public static useBatchingForLayoutOutputs:Z = false


# instance fields
.field mNativePointer:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/facebook/yoga/YogaNative;->jni_YGConfigNew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    .line 22
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to allocate native memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 30
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNative;->jni_YGConfigFree(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 33
    throw v0
.end method

.method public setPointScaleFactor(F)V
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNative;->jni_YGConfigSetPointScaleFactor(JF)V

    return-void
.end method

.method public setUseLegacyStretchBehaviour(Z)V
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNative;->jni_YGConfigSetUseLegacyStretchBehaviour(JZ)V

    return-void
.end method

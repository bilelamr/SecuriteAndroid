.class public Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;
.super Ljava/lang/Object;
.source "BitmapMemoryCacheProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/Producer<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field private final mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/Producer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;->mMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 37
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 38
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;)Lcom/facebook/imagepipeline/cache/MemoryCache;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;->mMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    return-object p0
.end method


# virtual methods
.method protected getProducerName()Ljava/lang/String;
    .locals 1

    const-string v0, "BitmapMemoryCacheProducer"

    return-object v0
.end method

.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 46
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BitmapMemoryCacheProducer#produceResults"

    .line 47
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 49
    :cond_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;

    move-result-object v0

    .line 50
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;->getProducerName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    .line 53
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getCallerContext()Ljava/lang/Object;

    move-result-object v3

    .line 54
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    invoke-interface {v4, v2, v3}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getBitmapCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v2

    .line 56
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;->mMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v3, v2}, Lcom/facebook/imagepipeline/cache/MemoryCache;->get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    const-string v5, "cached_value_found"

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    .line 59
    :try_start_1
    invoke-virtual {v3}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/imagepipeline/image/CloseableImage;

    invoke-virtual {v7}, Lcom/facebook/imagepipeline/image/CloseableImage;->getQualityInfo()Lcom/facebook/imagepipeline/image/QualityInfo;

    move-result-object v7

    invoke-interface {v7}, Lcom/facebook/imagepipeline/image/QualityInfo;->isOfFullQuality()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;->getProducerName()Ljava/lang/String;

    move-result-object v8

    .line 64
    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener;->requiresExtraMap(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "true"

    .line 65
    invoke-static {v5, v9}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    goto :goto_0

    :cond_1
    move-object v9, v6

    .line 61
    :goto_0
    invoke-interface {v0, v1, v8, v9}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 67
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;->getProducerName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v1, v8, v4}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onUltimateProducerReached(Ljava/lang/String;Ljava/lang/String;Z)V

    const/high16 v8, 0x3f800000    # 1.0f

    .line 68
    invoke-interface {p1, v8}, Lcom/facebook/imagepipeline/producers/Consumer;->onProgressUpdate(F)V

    .line 70
    :cond_2
    invoke-static {v7}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->simpleStatusForIsLast(Z)I

    invoke-interface {p1, v3, v7}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    .line 71
    invoke-virtual {v3}, Lcom/facebook/common/references/CloseableReference;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_4

    .line 107
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 108
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_3
    return-void

    .line 77
    :cond_4
    :try_start_2
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getLowestPermittedRequestLevel()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v3

    sget-object v7, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->BITMAP_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 78
    invoke-virtual {v7}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v8, "false"

    if-lt v3, v7, :cond_7

    .line 81
    :try_start_3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;->getProducerName()Ljava/lang/String;

    move-result-object p2

    .line 82
    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener;->requiresExtraMap(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 83
    invoke-static {v5, v8}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    goto :goto_1

    :cond_5
    move-object v2, v6

    .line 79
    :goto_1
    invoke-interface {v0, v1, p2, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 85
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;->getProducerName()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onUltimateProducerReached(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 86
    invoke-interface {p1, v6, v4}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 108
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_6
    return-void

    .line 92
    :cond_7
    :try_start_4
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/request/ImageRequest;->isMemoryCacheEnabled()Z

    move-result v3

    .line 91
    invoke-virtual {p0, p1, v2, v3}, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;->wrapConsumer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/cache/common/CacheKey;Z)Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    .line 95
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;->getProducerName()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener;->requiresExtraMap(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 97
    invoke-static {v5, v8}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 93
    :cond_8
    invoke-interface {v0, v1, v2, v6}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 99
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "mInputProducer.produceResult"

    .line 100
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 102
    :cond_9
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 103
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 104
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    :cond_a
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 108
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_b
    return-void

    :catchall_0
    move-exception p1

    .line 107
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 108
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_c
    throw p1
.end method

.method protected wrapConsumer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/cache/common/CacheKey;Z)Lcom/facebook/imagepipeline/producers/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/cache/common/CacheKey;",
            "Z)",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 117
    new-instance v0, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer$1;-><init>(Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/cache/common/CacheKey;Z)V

    return-object v0
.end method

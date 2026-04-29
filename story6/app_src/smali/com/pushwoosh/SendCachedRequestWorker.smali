.class public Lcom/pushwoosh/SendCachedRequestWorker;
.super Landroidx/work/Worker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method private a()Landroidx/work/ListenableWorker$Result;
    .locals 2

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getRunAttemptCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 5

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const-wide/16 v1, -0x1

    const-string v3, "data_cached_request_id"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/work/Data;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/pushwoosh/SendCachedRequestWorker;->a()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRequestStorage()Lcom/pushwoosh/internal/network/f;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/pushwoosh/internal/network/f;->a(J)Lcom/pushwoosh/internal/network/a;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/pushwoosh/SendCachedRequestWorker;->a()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/pushwoosh/internal/network/NetworkModule;->getRequestManager()Lcom/pushwoosh/internal/network/RequestManager;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/pushwoosh/SendCachedRequestWorker;->a()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-interface {v2, v1}, Lcom/pushwoosh/internal/network/RequestManager;->sendRequestSync(Lcom/pushwoosh/internal/network/PushRequest;)Lcom/pushwoosh/function/Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object v2

    instance-of v2, v2, Lcom/pushwoosh/internal/network/b;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/pushwoosh/SendCachedRequestWorker;->a()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {v1}, Lcom/pushwoosh/internal/network/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/network/f;->a(Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method

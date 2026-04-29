.class public Lcom/pushwoosh/HandleMessageWorker;
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

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 5

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const-wide/16 v1, -0x1

    const-string v3, "data_push_bundle_id"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/work/Data;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/pushwoosh/HandleMessageWorker;->a()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getPushBundleStorage()Lcom/pushwoosh/repository/q;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Lcom/pushwoosh/repository/q;->a(J)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/pushwoosh/HandleMessageWorker;->a()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getPushBundleStorage()Lcom/pushwoosh/repository/q;

    move-result-object v1

    invoke-interface {v1, v3, v4}, Lcom/pushwoosh/repository/q;->b(J)V

    :try_start_1
    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/q;->m()Lcom/pushwoosh/notification/NotificationServiceExtension;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pushwoosh/notification/NotificationServiceExtension;->handleMessage(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/pushwoosh/HandleMessageWorker;->a()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    :catch_1
    invoke-direct {p0}, Lcom/pushwoosh/HandleMessageWorker;->a()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method

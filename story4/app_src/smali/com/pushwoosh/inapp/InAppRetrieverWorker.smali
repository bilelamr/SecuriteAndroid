.class public Lcom/pushwoosh/inapp/InAppRetrieverWorker;
.super Landroidx/work/Worker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method private static a()V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/inapp/b;->c()Lcom/pushwoosh/inapp/e/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/pushwoosh/inapp/e/c;->a()Lcom/pushwoosh/function/Result;

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 1

    invoke-static {}, Lcom/pushwoosh/inapp/InAppRetrieverWorker;->a()V

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method

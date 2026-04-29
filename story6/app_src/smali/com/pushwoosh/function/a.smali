.class public Lcom/pushwoosh/function/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/function/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Response:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/pushwoosh/function/Callback<",
        "TResponse;",
        "Lcom/pushwoosh/internal/network/NetworkException;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/pushwoosh/function/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/function/Callback<",
            "TResponse;",
            "Lcom/pushwoosh/internal/network/NetworkException;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/pushwoosh/internal/network/PushRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/internal/network/PushRequest<",
            "TResponse;>;"
        }
    .end annotation
.end field

.field private c:Lcom/pushwoosh/internal/network/f;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/internal/network/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "TResponse;",
            "Lcom/pushwoosh/internal/network/NetworkException;",
            ">;",
            "Lcom/pushwoosh/internal/network/PushRequest<",
            "TResponse;>;",
            "Lcom/pushwoosh/internal/network/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/function/a;->a:Lcom/pushwoosh/function/Callback;

    iput-object p2, p0, Lcom/pushwoosh/function/a;->b:Lcom/pushwoosh/internal/network/PushRequest;

    iput-object p3, p0, Lcom/pushwoosh/function/a;->c:Lcom/pushwoosh/internal/network/f;

    return-void
.end method

.method public constructor <init>(Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/internal/network/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/internal/network/PushRequest<",
            "TResponse;>;",
            "Lcom/pushwoosh/internal/network/f;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/pushwoosh/function/a;-><init>(Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/internal/network/f;)V

    return-void
.end method

.method private a(J)V
    .locals 3

    new-instance v0, Landroidx/work/Data$Builder;

    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    const-string v1, "data_cached_request_id"

    invoke-virtual {v0, v1, p1, p2}, Landroidx/work/Data$Builder;->putLong(Ljava/lang/String;J)Landroidx/work/Data$Builder;

    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object p1

    new-instance p2, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v0, Lcom/pushwoosh/SendCachedRequestWorker;

    invoke-direct {p2, v0}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p2, p1}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    check-cast p2, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-static {}, Lcom/pushwoosh/PushwooshWorkManagerHelper;->getNetworkAvailableConstraints()Landroidx/work/Constraints;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/work/WorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    check-cast p2, Landroidx/work/OneTimeWorkRequest$Builder;

    sget-object p1, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {p2, p1, v1, v2, v0}, Landroidx/work/WorkRequest$Builder;->setBackoffCriteria(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    check-cast p2, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-virtual {p2}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p1

    check-cast p1, Landroidx/work/OneTimeWorkRequest;

    sget-object p2, Landroidx/work/ExistingWorkPolicy;->APPEND:Landroidx/work/ExistingWorkPolicy;

    const-string v0, "SendCachedRequestWorker"

    invoke-static {p1, v0, p2}, Lcom/pushwoosh/PushwooshWorkManagerHelper;->enqueueOneTimeUniqueWork(Landroidx/work/OneTimeWorkRequest;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;)V

    return-void
.end method


# virtual methods
.method public process(Lcom/pushwoosh/function/Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Result<",
            "TResponse;",
            "Lcom/pushwoosh/internal/network/NetworkException;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object v0

    instance-of v0, v0, Lcom/pushwoosh/internal/network/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/function/a;->c:Lcom/pushwoosh/internal/network/f;

    iget-object v1, p0, Lcom/pushwoosh/function/a;->b:Lcom/pushwoosh/internal/network/PushRequest;

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/network/f;->a(Lcom/pushwoosh/internal/network/PushRequest;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/pushwoosh/function/a;->a(J)V

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/function/a;->a:Lcom/pushwoosh/function/Callback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    :cond_1
    return-void
.end method

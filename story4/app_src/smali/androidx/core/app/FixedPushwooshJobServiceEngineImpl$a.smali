.class final Landroidx/core/app/FixedPushwooshJobServiceEngineImpl$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/app/JobIntentService$GenericWorkItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/FixedPushwooshJobServiceEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/app/job/JobWorkItem;

.field final synthetic b:Landroidx/core/app/FixedPushwooshJobServiceEngineImpl;


# direct methods
.method constructor <init>(Landroidx/core/app/FixedPushwooshJobServiceEngineImpl;Landroid/app/job/JobWorkItem;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/app/FixedPushwooshJobServiceEngineImpl$a;->b:Landroidx/core/app/FixedPushwooshJobServiceEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/core/app/FixedPushwooshJobServiceEngineImpl$a;->a:Landroid/app/job/JobWorkItem;

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 3

    iget-object v0, p0, Landroidx/core/app/FixedPushwooshJobServiceEngineImpl$a;->b:Landroidx/core/app/FixedPushwooshJobServiceEngineImpl;

    iget-object v0, v0, Landroidx/core/app/FixedPushwooshJobServiceEngineImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/core/app/FixedPushwooshJobServiceEngineImpl$a;->b:Landroidx/core/app/FixedPushwooshJobServiceEngineImpl;

    iget-object v1, v1, Landroidx/core/app/FixedPushwooshJobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroidx/core/app/FixedPushwooshJobServiceEngineImpl$a;->b:Landroidx/core/app/FixedPushwooshJobServiceEngineImpl;

    iget-object v1, v1, Landroidx/core/app/FixedPushwooshJobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    iget-object v2, p0, Landroidx/core/app/FixedPushwooshJobServiceEngineImpl$a;->a:Landroid/app/job/JobWorkItem;

    invoke-virtual {v1, v2}, Landroid/app/job/JobParameters;->completeWork(Landroid/app/job/JobWorkItem;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/FixedPushwooshJobServiceEngineImpl$a;->a:Landroid/app/job/JobWorkItem;

    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

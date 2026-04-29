.class public final Lcom/pushwoosh/PushwooshWorkManagerHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Landroidx/work/WorkManager;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-class v0, Landroidx/work/WorkManager;

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/WorkManager;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    instance-of v0, v0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_0

    const-string v0, "Incorrect state of app. Context is null"

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroidx/work/WorkManager;->getInstance()Landroidx/work/WorkManager;

    move-result-object v0

    return-object v0
.end method

.method public static enqueueOneTimeUniqueWork(Landroidx/work/OneTimeWorkRequest;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/pushwoosh/PushwooshWorkManagerHelper;->a()Landroidx/work/WorkManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Landroidx/work/WorkManager;->enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Landroidx/work/OneTimeWorkRequest;)Landroidx/work/Operation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to enqueue work."

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getNetworkAvailableConstraints()Landroidx/work/Constraints;
    .locals 2

    new-instance v0, Landroidx/work/Constraints$Builder;

    invoke-direct {v0}, Landroidx/work/Constraints$Builder;-><init>()V

    sget-object v1, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    invoke-virtual {v0, v1}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    invoke-virtual {v0}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v0

    return-object v0
.end method

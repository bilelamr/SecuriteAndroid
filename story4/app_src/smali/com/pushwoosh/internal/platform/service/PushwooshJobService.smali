.class public abstract Lcom/pushwoosh/internal/platform/service/PushwooshJobService;
.super Landroidx/core/app/FixedPushwooshJobIntentService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/app/FixedPushwooshJobIntentService;-><init>()V

    return-void
.end method

.method public static enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V
    .locals 0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "Incorrect state of app. Context is null"

    invoke-static {p0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroidx/core/app/JobIntentService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Can\'t start service"

    invoke-static {p1, p0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

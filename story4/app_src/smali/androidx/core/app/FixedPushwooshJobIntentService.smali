.class public abstract Landroidx/core/app/FixedPushwooshJobIntentService;
.super Landroidx/core/app/JobIntentService;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroidx/core/app/FixedPushwooshJobIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/FixedPushwooshJobIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    return-void
.end method


# virtual methods
.method dequeueWork()Landroidx/core/app/JobIntentService$GenericWorkItem;
    .locals 4

    :try_start_0
    invoke-super {p0}, Landroidx/core/app/JobIntentService;->dequeueWork()Landroidx/core/app/JobIntentService$GenericWorkItem;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Landroidx/core/app/FixedPushwooshJobIntentService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pushwoosh handle SecurityException in Android SDK:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroidx/core/app/JobIntentService;->onCreate()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/app/FixedPushwooshJobServiceEngineImpl;

    invoke-direct {v0, p0}, Landroidx/core/app/FixedPushwooshJobServiceEngineImpl;-><init>(Landroidx/core/app/JobIntentService;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/core/app/JobIntentService;->mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

    return-void
.end method

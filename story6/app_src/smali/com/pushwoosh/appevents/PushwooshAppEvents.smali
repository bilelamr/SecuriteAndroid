.class public Lcom/pushwoosh/appevents/PushwooshAppEvents;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/appevents/PushwooshAppEvents$a;
    }
.end annotation


# static fields
.field private static volatile a:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/pushwoosh/appevents/PushwooshAppEvents;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 3

    sget-object v0, Lcom/pushwoosh/appevents/PushwooshAppEvents;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v0, :cond_2

    sget-object v0, Lcom/pushwoosh/appevents/PushwooshAppEvents;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/pushwoosh/appevents/PushwooshAppEvents;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v1, :cond_1

    new-instance v1, Lcom/pushwoosh/appevents/PushwooshAppEvents$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/pushwoosh/appevents/PushwooshAppEvents$a;-><init>(Lcom/pushwoosh/appevents/PushwooshAppEvents$1;)V

    sput-object v1, Lcom/pushwoosh/appevents/PushwooshAppEvents;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "AndroidPlatformModule.getApplicationContext() returned null in PushwooshAppEvents.registerActivityLifecycleCallbacks() method"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/pushwoosh/internal/crash/LogSender;->submitCustomError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/pushwoosh/appevents/PushwooshAppEvents;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    sget-object v0, Lcom/pushwoosh/appevents/PushwooshAppEvents;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-object v0
.end method

.method public static init()V
    .locals 0

    invoke-static {}, Lcom/pushwoosh/appevents/PushwooshAppEvents;->a()Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.class public Landroidx/work/impl/background/systemalarm/SystemAlarmService;
.super Landroidx/lifecycle/LifecycleService;
.source "SystemAlarmService.java"

# interfaces
.implements Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemAlarmService"

    .line 37
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleService;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllCommandsCompleted()V
    .locals 4

    .line 67
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v3, "All commands completed in dispatcher"

    invoke-virtual {v0, v1, v3, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 69
    invoke-static {}, Landroidx/work/impl/utils/WakeLocks;->checkWakeLocks()V

    .line 72
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 43
    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onCreate()V

    .line 44
    new-instance v0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-direct {v0, p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 45
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-virtual {v0, p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->setCompletedListener(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onDestroy()V

    .line 51
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 56
    invoke-super {p0, p1, p2, p3}, Landroidx/lifecycle/LifecycleService;->onStartCommand(Landroid/content/Intent;II)I

    if-eqz p1, :cond_0

    .line 58
    iget-object p2, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-virtual {p2, p1, p3}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->add(Landroid/content/Intent;I)Z

    :cond_0
    const/4 p1, 0x3

    return p1
.end method

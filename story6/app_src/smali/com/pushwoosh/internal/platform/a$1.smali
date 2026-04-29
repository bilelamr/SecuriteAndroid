.class Lcom/pushwoosh/internal/platform/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/internal/platform/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pushwoosh/internal/platform/a;

.field private b:I


# direct methods
.method constructor <init>(Lcom/pushwoosh/internal/platform/a;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/internal/platform/a$1;->a:Lcom/pushwoosh/internal/platform/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    iget-object p1, p0, Lcom/pushwoosh/internal/platform/a$1;->a:Lcom/pushwoosh/internal/platform/a;

    invoke-static {p1}, Lcom/pushwoosh/internal/platform/a;->a(Lcom/pushwoosh/internal/platform/a;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iget-object v0, p0, Lcom/pushwoosh/internal/platform/a$1;->a:Lcom/pushwoosh/internal/platform/a;

    invoke-static {v0}, Lcom/pushwoosh/internal/platform/a;->a(Lcom/pushwoosh/internal/platform/a;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/32 v0, 0xea60

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    new-instance p1, Lcom/pushwoosh/internal/platform/a$a;

    invoke-direct {p1}, Lcom/pushwoosh/internal/platform/a$a;-><init>()V

    invoke-static {p1}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    :cond_0
    iget-object p1, p0, Lcom/pushwoosh/internal/platform/a$1;->a:Lcom/pushwoosh/internal/platform/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/pushwoosh/internal/platform/a;->a(Lcom/pushwoosh/internal/platform/a;Ljava/util/Date;)Ljava/util/Date;

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/pushwoosh/internal/platform/a$1;->b:I

    if-nez p1, :cond_2

    new-instance p1, Lcom/pushwoosh/internal/platform/a$a;

    invoke-direct {p1}, Lcom/pushwoosh/internal/platform/a$a;-><init>()V

    invoke-static {p1}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    :cond_2
    :goto_0
    iget p1, p0, Lcom/pushwoosh/internal/platform/a$1;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/pushwoosh/internal/platform/a$1;->b:I

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    iget p1, p0, Lcom/pushwoosh/internal/platform/a$1;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/pushwoosh/internal/platform/a$1;->b:I

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

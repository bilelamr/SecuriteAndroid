.class Lcom/pushwoosh/appevents/PushwooshAppEvents$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/appevents/PushwooshAppEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/appevents/PushwooshAppEvents$a;->a:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pushwoosh/appevents/PushwooshAppEvents$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/appevents/PushwooshAppEvents$a;-><init>()V

    return-void
.end method

.method static synthetic a()V
    .locals 2

    invoke-static {}, Lcom/pushwoosh/inapp/PushwooshInApp;->getInstance()Lcom/pushwoosh/inapp/PushwooshInApp;

    move-result-object v0

    const-string v1, "_ScreenOpened"

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inapp/PushwooshInApp;->postEvent(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/pushwoosh/appevents/PushwooshAppEvents$a$2;

    invoke-direct {v0, p0}, Lcom/pushwoosh/appevents/PushwooshAppEvents$a$2;-><init>(Lcom/pushwoosh/appevents/PushwooshAppEvents$a;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    return-void
.end method

.method private a(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/pushwoosh/appevents/PushwooshAppEvents$a$1;

    invoke-direct {v0, p0}, Lcom/pushwoosh/appevents/PushwooshAppEvents$a$1;-><init>(Lcom/pushwoosh/appevents/PushwooshAppEvents$a;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/appevents/PushwooshAppEvents$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/appevents/PushwooshAppEvents$a;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/pushwoosh/appevents/PushwooshAppEvents$a;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pushwoosh/appevents/PushwooshAppEvents$a;->a:Landroid/os/Handler;

    invoke-static {}, Lcom/pushwoosh/appevents/a;->a()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    instance-of p2, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0, p2}, Lcom/pushwoosh/appevents/PushwooshAppEvents$a;->a(Landroidx/fragment/app/FragmentActivity;)V

    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/pushwoosh/appevents/PushwooshAppEvents$a;->a(Landroid/app/Activity;)V

    :cond_1
    invoke-direct {p0}, Lcom/pushwoosh/appevents/PushwooshAppEvents$a;->b()V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

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
    .locals 1

    iget p1, p0, Lcom/pushwoosh/appevents/PushwooshAppEvents$a;->b:I

    if-nez p1, :cond_0

    invoke-static {}, Lcom/pushwoosh/inapp/PushwooshInApp;->getInstance()Lcom/pushwoosh/inapp/PushwooshInApp;

    move-result-object p1

    const-string v0, "_ApplicationOpened"

    invoke-virtual {p1, v0}, Lcom/pushwoosh/inapp/PushwooshInApp;->postEvent(Ljava/lang/String;)V

    :cond_0
    iget p1, p0, Lcom/pushwoosh/appevents/PushwooshAppEvents$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/pushwoosh/appevents/PushwooshAppEvents$a;->b:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget p1, p0, Lcom/pushwoosh/appevents/PushwooshAppEvents$a;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/pushwoosh/appevents/PushwooshAppEvents$a;->b:I

    iget p1, p0, Lcom/pushwoosh/appevents/PushwooshAppEvents$a;->b:I

    if-nez p1, :cond_0

    invoke-static {}, Lcom/pushwoosh/inapp/PushwooshInApp;->getInstance()Lcom/pushwoosh/inapp/PushwooshInApp;

    move-result-object p1

    const-string v0, "_ApplicationClosed"

    invoke-virtual {p1, v0}, Lcom/pushwoosh/inapp/PushwooshInApp;->postEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

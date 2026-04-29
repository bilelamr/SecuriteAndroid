.class public Lcom/pushwoosh/internal/platform/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/internal/platform/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Date;

.field private final b:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/pushwoosh/internal/platform/a;->b:Landroid/app/Application;

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/internal/platform/a;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/pushwoosh/internal/platform/a;->a:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic a(Lcom/pushwoosh/internal/platform/a;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/internal/platform/a;->a:Ljava/util/Date;

    return-object p1
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/pushwoosh/internal/platform/a$a;

    invoke-direct {p1}, Lcom/pushwoosh/internal/platform/a$a;-><init>()V

    invoke-static {p1}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/internal/platform/a;->a:Ljava/util/Date;

    :cond_0
    iget-object p1, p0, Lcom/pushwoosh/internal/platform/a;->b:Landroid/app/Application;

    new-instance v0, Lcom/pushwoosh/internal/platform/a$1;

    invoke-direct {v0, p0}, Lcom/pushwoosh/internal/platform/a$1;-><init>(Lcom/pushwoosh/internal/platform/a;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

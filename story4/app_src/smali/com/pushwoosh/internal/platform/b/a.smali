.class public Lcom/pushwoosh/internal/platform/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/platform/b/b;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pushwoosh/internal/platform/b/a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private l()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/platform/b/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/telephony/TelephonyManager;
    .locals 2

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/b/a;->l()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/b/a;->l()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :goto_0
    return-object v0
.end method

.method public b()Landroid/content/res/AssetManager;
    .locals 1

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/b/a;->l()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/b/a;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public c()Landroid/net/ConnectivityManager;
    .locals 2

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/b/a;->l()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/b/a;->l()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    :goto_0
    return-object v0
.end method

.method public d()Landroid/view/WindowManager;
    .locals 2

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/b/a;->l()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/b/a;->l()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    :goto_0
    return-object v0
.end method

.method public e()Landroid/app/NotificationManager;
    .locals 2

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/b/a;->l()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/b/a;->l()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    :goto_0
    return-object v0
.end method

.method public f()Landroid/content/pm/PackageManager;
    .locals 1

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/b/a;->l()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/b/a;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public g()Landroid/os/PowerManager;
    .locals 2

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/b/a;->l()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/b/a;->l()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    :goto_0
    return-object v0
.end method

.method public h()Landroid/app/KeyguardManager;
    .locals 2

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/b/a;->l()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/b/a;->l()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    :goto_0
    return-object v0
.end method

.method public i()Landroid/app/ActivityManager;
    .locals 2

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/b/a;->l()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/b/a;->l()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    :goto_0
    return-object v0
.end method

.method public j()Landroid/media/AudioManager;
    .locals 2

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/b/a;->l()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/b/a;->l()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    :goto_0
    return-object v0
.end method

.method public k()Landroid/app/AlarmManager;
    .locals 2

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/b/a;->l()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/b/a;->l()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    :goto_0
    return-object v0
.end method

.class public Lcom/pushwoosh/badge/PushwooshBadge;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(I)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p0}, Lcom/pushwoosh/badge/d/a/c;->a(Landroid/content/Context;I)Z

    return-void
.end method

.method public static addBadgeNumber(I)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/badge/PushwooshBadge;->getBadgeNumber()I

    move-result v0

    add-int/2addr v0, p0

    invoke-static {v0}, Lcom/pushwoosh/badge/PushwooshBadge;->setBadgeNumber(I)V

    return-void
.end method

.method public static getBadgeNumber()I
    .locals 1

    invoke-static {}, Lcom/pushwoosh/badge/a;->b()Lcom/pushwoosh/badge/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/badge/b/a;->a()Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceIntValue;->get()I

    move-result v0

    return v0
.end method

.method public static setBadgeNumber(I)V
    .locals 2

    invoke-static {}, Lcom/pushwoosh/badge/a;->c()Lcom/pushwoosh/badge/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/badge/c/a;->a(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p0}, Lcom/pushwoosh/badge/b;->a(I)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

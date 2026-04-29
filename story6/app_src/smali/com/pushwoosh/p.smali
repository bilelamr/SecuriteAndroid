.class public Lcom/pushwoosh/p;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "p"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/pushwoosh/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/pushwoosh/p;->a:Ljava/lang/String;

    const-string v0, "already init"

    :goto_0
    invoke-static {p0, v0}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider$Builder;

    invoke-direct {v0}, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider$Builder;-><init>()V

    invoke-static {}, Lcom/pushwoosh/internal/specific/FcmDeviceSpecificIniter;->create()Lcom/pushwoosh/internal/specific/DeviceSpecific;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider$Builder;->setDeviceSpecific(Lcom/pushwoosh/internal/specific/DeviceSpecific;)Lcom/pushwoosh/internal/specific/DeviceSpecificProvider$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider$Builder;->build(Z)Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;

    move-result-object v0

    invoke-static {p0}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->init(Landroid/content/Context;)V

    new-instance v1, Lcom/pushwoosh/q$a;

    invoke-direct {v1}, Lcom/pushwoosh/q$a;-><init>()V

    new-instance v2, Lcom/pushwoosh/a;

    invoke-direct {v2}, Lcom/pushwoosh/a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/pushwoosh/q$a;->a(Lcom/pushwoosh/internal/utils/d;)Lcom/pushwoosh/q$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;->pushRegistrar()Lcom/pushwoosh/internal/registrar/PushRegistrar;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/pushwoosh/q$a;->a(Lcom/pushwoosh/internal/registrar/PushRegistrar;)Lcom/pushwoosh/q$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q$a;->a()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->o()V

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationOpenDetector()Lcom/pushwoosh/internal/platform/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/pushwoosh/q;->q()Lcom/pushwoosh/internal/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/utils/c;->e()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/pushwoosh/internal/platform/a;->a(Z)V

    new-instance v0, Lcom/pushwoosh/internal/utils/LockScreenReceiver;

    invoke-direct {v0}, Lcom/pushwoosh/internal/utils/LockScreenReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ANSWER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object p0, Lcom/pushwoosh/p;->a:Ljava/lang/String;

    const-string v0, "Pushwoosh init finished"

    goto :goto_0
.end method

.method private static a()Z
    .locals 1

    invoke-static {}, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.class public Lcom/pushwoosh/BootReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/BootReceiver$DeviceBootedEvent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "BootReceiver"

    const-string v0, "onReceive"

    invoke-static {p1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    :try_start_0
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/pushwoosh/BootReceiver$DeviceBootedEvent;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/pushwoosh/BootReceiver$DeviceBootedEvent;-><init>(Lcom/pushwoosh/BootReceiver$1;)V

    invoke-static {p1}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "Received unexpected action"

    invoke-static {p1, p2}, Lcom/pushwoosh/internal/utils/PWLog;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

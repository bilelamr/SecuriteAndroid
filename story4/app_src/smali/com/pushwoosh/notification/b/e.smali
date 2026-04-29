.class Lcom/pushwoosh/notification/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/notification/b/d;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Notification;III)V
    .locals 0

    iput p2, p1, Landroid/app/Notification;->ledARGB:I

    iget p2, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroid/app/Notification;->flags:I

    iput p3, p1, Landroid/app/Notification;->ledOnMS:I

    iput p4, p1, Landroid/app/Notification;->ledOffMS:I

    return-void
.end method

.method public a(Landroid/app/Notification;Landroid/net/Uri;Z)V
    .locals 0

    iput-object p2, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz p3, :cond_0

    iget p2, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroid/app/Notification;->defaults:I

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Notification;Lcom/pushwoosh/notification/VibrateType;Z)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getManagerProvider()Lcom/pushwoosh/internal/platform/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/pushwoosh/internal/platform/b/b;->j()Landroid/media/AudioManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    sget-object p3, Lcom/pushwoosh/notification/VibrateType;->ALWAYS:Lcom/pushwoosh/notification/VibrateType;

    if-eq p2, p3, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    sget-object p3, Lcom/pushwoosh/notification/VibrateType;->DEFAULT_MODE:Lcom/pushwoosh/notification/VibrateType;

    if-ne p2, p3, :cond_2

    :cond_1
    invoke-static {}, Lcom/pushwoosh/internal/utils/g;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/app/Notification;->defaults:I

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pushwoosh/notification/PushMessage;)V
    .locals 0

    return-void
.end method

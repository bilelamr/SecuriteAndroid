.class Lcom/pushwoosh/notification/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/notification/b/d;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/notification/b/f$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/app/NotificationManager;


# direct methods
.method constructor <init>(Landroid/app/NotificationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/notification/b/f;->a:Landroid/app/NotificationManager;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Notification;III)V
    .locals 0

    return-void
.end method

.method public a(Landroid/app/Notification;Landroid/net/Uri;Z)V
    .locals 0

    return-void
.end method

.method public a(Landroid/app/Notification;Lcom/pushwoosh/notification/VibrateType;Z)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/pushwoosh/notification/b/f$a;

    invoke-direct {v0}, Lcom/pushwoosh/notification/b/f$a;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, p1, p1, v1}, Lcom/pushwoosh/notification/b/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    iget-object v0, p0, Lcom/pushwoosh/notification/b/f;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pushwoosh/notification/PushMessage;)V
    .locals 2

    new-instance v0, Lcom/pushwoosh/notification/b/f$a;

    invoke-direct {v0}, Lcom/pushwoosh/notification/b/f$a;-><init>()V

    invoke-virtual {p4}, Lcom/pushwoosh/notification/PushMessage;->getLed()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Lcom/pushwoosh/notification/PushMessage;->getLed()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/notification/b/f$a;->a(I)Lcom/pushwoosh/notification/b/f$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/notification/b/f$a;->b(Z)Lcom/pushwoosh/notification/b/f$a;

    :cond_0
    invoke-virtual {p4}, Lcom/pushwoosh/notification/PushMessage;->getSound()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p4}, Lcom/pushwoosh/notification/PushMessage;->getSound()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pushwoosh/internal/utils/g;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/notification/b/f$a;->a(Landroid/net/Uri;)Lcom/pushwoosh/notification/b/f$a;

    :cond_1
    invoke-static {p4}, Lcom/pushwoosh/notification/b/a;->b(Lcom/pushwoosh/notification/PushMessage;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/notification/b/f$a;->b(I)Lcom/pushwoosh/notification/b/f$a;

    invoke-virtual {p4}, Lcom/pushwoosh/notification/PushMessage;->getVibration()Z

    move-result p4

    invoke-virtual {v0, p4}, Lcom/pushwoosh/notification/b/f$a;->a(Z)Lcom/pushwoosh/notification/b/f$a;

    iget-object p4, p0, Lcom/pushwoosh/notification/b/f;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pushwoosh/notification/b/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

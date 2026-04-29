.class public Lcom/pushwoosh/notification/LocalNotificationRequest;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pushwoosh/notification/LocalNotificationRequest;->a:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    invoke-virtual {p0}, Lcom/pushwoosh/notification/LocalNotificationRequest;->unschedule()V

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getLocalNotificationStorage()Lcom/pushwoosh/repository/m;

    move-result-object v0

    iget v1, p0, Lcom/pushwoosh/notification/LocalNotificationRequest;->a:I

    invoke-virtual {v0, v1}, Lcom/pushwoosh/repository/m;->b(I)Lcom/pushwoosh/repository/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/pushwoosh/repository/b;->d()I

    move-result v1

    invoke-virtual {v0}, Lcom/pushwoosh/repository/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getManagerProvider()Lcom/pushwoosh/internal/platform/b/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/pushwoosh/internal/platform/b/b;->e()Landroid/app/NotificationManager;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public getRequestId()I
    .locals 1

    iget v0, p0, Lcom/pushwoosh/notification/LocalNotificationRequest;->a:I

    return v0
.end method

.method public unschedule()V
    .locals 1

    iget v0, p0, Lcom/pushwoosh/notification/LocalNotificationRequest;->a:I

    invoke-static {v0}, Lcom/pushwoosh/notification/LocalNotificationReceiver;->cancelNotification(I)V

    return-void
.end method

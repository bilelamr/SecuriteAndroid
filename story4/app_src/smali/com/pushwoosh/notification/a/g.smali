.class public Lcom/pushwoosh/notification/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/notification/a/f;


# instance fields
.field private final a:Landroidx/core/app/NotificationCompat$Builder;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pushwoosh/notification/a/g;->a:Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/a/g;->a:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/pushwoosh/notification/a/f;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/a/g;->a:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pushwoosh/notification/a/g;->a:Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pushwoosh/notification/a/a;->a(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    return-object p0
.end method

.method public a(Landroidx/core/app/NotificationCompat$InboxStyle;)Lcom/pushwoosh/notification/a/f;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/a/g;->a:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/pushwoosh/notification/a/f;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/a/g;->a:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public a(Z)Lcom/pushwoosh/notification/a/f;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/a/g;->a:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public b(I)Lcom/pushwoosh/notification/a/f;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/a/g;->a:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public b(Z)Lcom/pushwoosh/notification/a/f;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/a/g;->a:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

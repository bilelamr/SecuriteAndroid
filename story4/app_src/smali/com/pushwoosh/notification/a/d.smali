.class Lcom/pushwoosh/notification/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/notification/a/b;


# instance fields
.field private final a:Landroid/app/Notification$Builder;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pushwoosh/notification/a/d;->a:Landroid/app/Notification$Builder;

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/a/d;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/pushwoosh/notification/a/b;
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/notification/a/d;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/pushwoosh/notification/a/d;->a:Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getAppInfoProvider()Lcom/pushwoosh/internal/platform/a/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/pushwoosh/internal/platform/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pushwoosh/notification/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    :cond_0
    return-object p0
.end method

.method public a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/pushwoosh/notification/a/b;
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/notification/a/d;->a:Landroid/app/Notification$Builder;

    new-instance v1, Landroid/app/Notification$Action;

    invoke-direct {v1, p1, p2, p3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public a(J)Lcom/pushwoosh/notification/a/b;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/a/d;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/pushwoosh/notification/a/d;->a:Landroid/app/Notification$Builder;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Lcom/pushwoosh/notification/a/b;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/notification/a/d;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_0
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)Lcom/pushwoosh/notification/a/b;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {p1, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/pushwoosh/notification/a/d;->a:Landroid/app/Notification$Builder;

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public a(Landroid/os/Bundle;)Lcom/pushwoosh/notification/a/b;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/a/d;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/pushwoosh/notification/a/b;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/a/d;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lcom/pushwoosh/notification/a/b;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/notification/a/d;->a:Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    :cond_0
    return-object p0
.end method

.method public b(I)Lcom/pushwoosh/notification/a/b;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/a/d;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/pushwoosh/notification/a/b;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/a/d;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public c(I)Lcom/pushwoosh/notification/a/b;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/a/d;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Lcom/pushwoosh/notification/a/b;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/a/d;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object p0
.end method

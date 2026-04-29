.class public Lcom/pushwoosh/notification/LocalNotification$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/notification/LocalNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/pushwoosh/notification/LocalNotification;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/pushwoosh/notification/LocalNotification;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pushwoosh/notification/LocalNotification;-><init>(Lcom/pushwoosh/notification/LocalNotification$1;)V

    iput-object v0, p0, Lcom/pushwoosh/notification/LocalNotification$Builder;->a:Lcom/pushwoosh/notification/LocalNotification;

    return-void
.end method


# virtual methods
.method public build()Lcom/pushwoosh/notification/LocalNotification;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/LocalNotification$Builder;->a:Lcom/pushwoosh/notification/LocalNotification;

    return-object v0
.end method

.method public setBanner(Ljava/lang/String;)Lcom/pushwoosh/notification/LocalNotification$Builder;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/LocalNotification$Builder;->a:Lcom/pushwoosh/notification/LocalNotification;

    invoke-virtual {v0}, Lcom/pushwoosh/notification/LocalNotification;->b()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/pushwoosh/notification/b;->d(Landroid/os/Bundle;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDelay(I)Lcom/pushwoosh/notification/LocalNotification$Builder;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/LocalNotification$Builder;->a:Lcom/pushwoosh/notification/LocalNotification;

    invoke-static {v0, p1}, Lcom/pushwoosh/notification/LocalNotification;->a(Lcom/pushwoosh/notification/LocalNotification;I)V

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Lcom/pushwoosh/notification/LocalNotification$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/notification/LocalNotification$Builder;->a:Lcom/pushwoosh/notification/LocalNotification;

    invoke-virtual {v0}, Lcom/pushwoosh/notification/LocalNotification;->b()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-object p0
.end method

.method public setLargeIcon(Ljava/lang/String;)Lcom/pushwoosh/notification/LocalNotification$Builder;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/LocalNotification$Builder;->a:Lcom/pushwoosh/notification/LocalNotification;

    invoke-virtual {v0}, Lcom/pushwoosh/notification/LocalNotification;->b()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/pushwoosh/notification/b;->f(Landroid/os/Bundle;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLink(Ljava/lang/String;)Lcom/pushwoosh/notification/LocalNotification$Builder;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/LocalNotification$Builder;->a:Lcom/pushwoosh/notification/LocalNotification;

    invoke-virtual {v0}, Lcom/pushwoosh/notification/LocalNotification;->b()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/pushwoosh/notification/b;->c(Landroid/os/Bundle;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/pushwoosh/notification/LocalNotification$Builder;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/LocalNotification$Builder;->a:Lcom/pushwoosh/notification/LocalNotification;

    invoke-virtual {v0}, Lcom/pushwoosh/notification/LocalNotification;->b()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/pushwoosh/notification/b;->b(Landroid/os/Bundle;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSmallIcon(Ljava/lang/String;)Lcom/pushwoosh/notification/LocalNotification$Builder;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/LocalNotification$Builder;->a:Lcom/pushwoosh/notification/LocalNotification;

    invoke-virtual {v0}, Lcom/pushwoosh/notification/LocalNotification;->b()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/pushwoosh/notification/b;->e(Landroid/os/Bundle;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/pushwoosh/notification/LocalNotification$Builder;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/LocalNotification$Builder;->a:Lcom/pushwoosh/notification/LocalNotification;

    invoke-virtual {v0}, Lcom/pushwoosh/notification/LocalNotification;->b()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/pushwoosh/notification/b;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    return-object p0
.end method

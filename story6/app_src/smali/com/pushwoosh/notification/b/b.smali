.class public Lcom/pushwoosh/notification/b/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/pushwoosh/notification/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/pushwoosh/notification/b/f;

    invoke-direct {v0, p1}, Lcom/pushwoosh/notification/b/f;-><init>(Landroid/app/NotificationManager;)V

    iput-object v0, p0, Lcom/pushwoosh/notification/b/b;->a:Lcom/pushwoosh/notification/b/d;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/pushwoosh/notification/b/e;

    invoke-direct {p1}, Lcom/pushwoosh/notification/b/e;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/notification/b/b;->a:Lcom/pushwoosh/notification/b/d;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/pushwoosh/notification/PushMessage;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/pushwoosh/notification/b/a;->a(Lcom/pushwoosh/notification/PushMessage;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pushwoosh/notification/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p2, v0

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/notification/b/b;->a:Lcom/pushwoosh/notification/b/d;

    invoke-interface {v0, v1, p2, p3, p1}, Lcom/pushwoosh/notification/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pushwoosh/notification/PushMessage;)V

    return-object v1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/b/b;->a:Lcom/pushwoosh/notification/b/d;

    invoke-interface {v0, p1}, Lcom/pushwoosh/notification/b/d;->a(Ljava/lang/String;)V

    return-object p1
.end method

.method public a(Landroid/app/Notification;III)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/b/b;->a:Lcom/pushwoosh/notification/b/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/pushwoosh/notification/b/d;->a(Landroid/app/Notification;III)V

    return-void
.end method

.method public a(Landroid/app/Notification;Landroid/net/Uri;Z)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/b/b;->a:Lcom/pushwoosh/notification/b/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/pushwoosh/notification/b/d;->a(Landroid/app/Notification;Landroid/net/Uri;Z)V

    return-void
.end method

.method public a(Landroid/app/Notification;Lcom/pushwoosh/notification/VibrateType;Z)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/b/b;->a:Lcom/pushwoosh/notification/b/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/pushwoosh/notification/b/d;->a(Landroid/app/Notification;Lcom/pushwoosh/notification/VibrateType;Z)V

    return-void
.end method

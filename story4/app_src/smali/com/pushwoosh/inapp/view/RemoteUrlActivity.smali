.class public Lcom/pushwoosh/inapp/view/RemoteUrlActivity;
.super Lcom/pushwoosh/inapp/view/WebActivity;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/inapp/view/WebActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pushwoosh/inapp/view/RemoteUrlActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/pushwoosh/inapp/e/b/b;

    invoke-direct {v1, p1}, Lcom/pushwoosh/inapp/e/b/b;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    const/4 v2, 0x2

    invoke-static {v0, v1, p1, v2}, Lcom/pushwoosh/inapp/view/WebActivity;->a(Landroid/content/Intent;Lcom/pushwoosh/inapp/e/b/b;Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/pushwoosh/inapp/e/b/b;Ljava/lang/String;I)V
    .locals 0

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/RemoteUrlActivity;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/pushwoosh/inapp/view/WebActivity;->c()V

    :goto_0
    return-void
.end method

.method protected a(Lcom/pushwoosh/inapp/view/f;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inapp/view/RemoteUrlActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/pushwoosh/inapp/view/f;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

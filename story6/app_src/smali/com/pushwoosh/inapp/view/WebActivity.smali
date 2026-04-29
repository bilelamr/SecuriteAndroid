.class public abstract Lcom/pushwoosh/inapp/view/WebActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/pushwoosh/inapp/view/c;


# instance fields
.field private a:I

.field protected b:Lcom/pushwoosh/inapp/e/b/b;

.field private c:Lcom/pushwoosh/inapp/view/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method protected static a(Landroid/content/Intent;Lcom/pushwoosh/inapp/e/b/b;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1

    const-string v0, "extraInApp"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "extraSound"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "extraMode"

    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->f()Z

    move-result p1

    if-nez p1, :cond_0

    const/high16 p1, 0x30000000

    goto :goto_0

    :cond_0
    const/high16 p1, 0x10000000

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/WebActivity;->b:Lcom/pushwoosh/inapp/e/b/b;

    const-string v1, "extraInApp"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/pushwoosh/inapp/e/b/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/pushwoosh/inapp/view/WebActivity;->c:Lcom/pushwoosh/inapp/view/f;

    if-eqz v3, :cond_1

    return-void

    :cond_1
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pushwoosh/q;->j()Lcom/pushwoosh/richmedia/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pushwoosh/richmedia/a;->a()Lcom/pushwoosh/richmedia/RichMediaStyle;

    move-result-object v4

    if-eqz v0, :cond_4

    new-instance p1, Lcom/pushwoosh/inapp/view/f;

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/WebActivity;->b:Lcom/pushwoosh/inapp/e/b/b;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/e/b/b;->e()Lcom/pushwoosh/inapp/e/b/a;

    move-result-object v0

    invoke-direct {p1, p0, v0, v4, v3}, Lcom/pushwoosh/inapp/view/f;-><init>(Landroid/content/Context;Lcom/pushwoosh/inapp/e/b/a;Lcom/pushwoosh/richmedia/RichMediaStyle;Z)V

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/WebActivity;->c:Lcom/pushwoosh/inapp/view/f;

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/WebActivity;->c:Lcom/pushwoosh/inapp/view/f;

    new-instance v0, Lcom/pushwoosh/inapp/view/i;

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/WebActivity;->b:Lcom/pushwoosh/inapp/e/b/b;

    invoke-direct {v0, p0, v1}, Lcom/pushwoosh/inapp/view/i;-><init>(Lcom/pushwoosh/inapp/view/c;Lcom/pushwoosh/inapp/e/b/b;)V

    invoke-virtual {p1, v0}, Lcom/pushwoosh/inapp/view/f;->setWebViewClient(Lcom/pushwoosh/inapp/view/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/WebActivity;->c:Lcom/pushwoosh/inapp/view/f;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inapp/view/WebActivity;->a(Lcom/pushwoosh/inapp/view/f;)V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/inapp/e/b/b;

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/WebActivity;->b:Lcom/pushwoosh/inapp/e/b/b;

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/WebActivity;->b:Lcom/pushwoosh/inapp/e/b/b;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/WebActivity;->c:Lcom/pushwoosh/inapp/view/f;

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inapp/view/WebActivity;->a(Lcom/pushwoosh/inapp/view/f;)V

    :cond_5
    return-void

    :cond_6
    :try_start_2
    const-string v0, "extraSound"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extraMode"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/pushwoosh/inapp/view/WebActivity;->a:I

    new-instance p1, Lcom/pushwoosh/inapp/view/f;

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/WebActivity;->b:Lcom/pushwoosh/inapp/e/b/b;

    invoke-virtual {v1}, Lcom/pushwoosh/inapp/e/b/b;->e()Lcom/pushwoosh/inapp/e/b/a;

    move-result-object v1

    invoke-direct {p1, p0, v1, v4, v3}, Lcom/pushwoosh/inapp/view/f;-><init>(Landroid/content/Context;Lcom/pushwoosh/inapp/e/b/a;Lcom/pushwoosh/richmedia/RichMediaStyle;Z)V

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/WebActivity;->c:Lcom/pushwoosh/inapp/view/f;

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/WebActivity;->c:Lcom/pushwoosh/inapp/view/f;

    new-instance v1, Lcom/pushwoosh/inapp/view/i;

    iget-object v2, p0, Lcom/pushwoosh/inapp/view/WebActivity;->b:Lcom/pushwoosh/inapp/e/b/b;

    invoke-direct {v1, p0, v2}, Lcom/pushwoosh/inapp/view/i;-><init>(Lcom/pushwoosh/inapp/view/c;Lcom/pushwoosh/inapp/e/b/b;)V

    invoke-virtual {p1, v1}, Lcom/pushwoosh/inapp/view/f;->setWebViewClient(Lcom/pushwoosh/inapp/view/i;)V

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/WebActivity;->b:Lcom/pushwoosh/inapp/e/b/b;

    iget v1, p0, Lcom/pushwoosh/inapp/view/WebActivity;->a:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/pushwoosh/inapp/view/WebActivity;->a(Lcom/pushwoosh/inapp/e/b/b;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/WebActivity;->c:Lcom/pushwoosh/inapp/view/f;

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inapp/view/WebActivity;->a(Lcom/pushwoosh/inapp/view/f;)V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/WebActivity;->c:Lcom/pushwoosh/inapp/view/f;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lcom/pushwoosh/inapp/view/WebActivity;->a(Lcom/pushwoosh/inapp/view/f;)V

    :cond_8
    throw p1
.end method


# virtual methods
.method protected abstract a(Lcom/pushwoosh/inapp/e/b/b;Ljava/lang/String;I)V
.end method

.method protected abstract a(Lcom/pushwoosh/inapp/view/f;)V
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/WebActivity;->c:Lcom/pushwoosh/inapp/view/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/view/f;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/WebActivity;->c:Lcom/pushwoosh/inapp/view/f;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/WebActivity;->c:Lcom/pushwoosh/inapp/view/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/view/f;->d()V

    :cond_0
    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/pushwoosh/inapp/view/WebActivity;->a:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "extraInApp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/inapp/e/b/b;

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/WebActivity;->b:Lcom/pushwoosh/inapp/e/b/b;

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pushwoosh/inapp/view/WebActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/WebActivity;->c:Lcom/pushwoosh/inapp/view/f;

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/pushwoosh/inapp/view/WebActivity;->a(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/WebActivity;->b:Lcom/pushwoosh/inapp/e/b/b;

    const-string v1, "extraInApp"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

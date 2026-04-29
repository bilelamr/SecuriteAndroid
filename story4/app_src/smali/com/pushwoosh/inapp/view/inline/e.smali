.class Lcom/pushwoosh/inapp/view/inline/e;
.super Lcom/pushwoosh/inapp/view/inline/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/inapp/view/inline/e$a;
    }
.end annotation


# instance fields
.field private c:I

.field private d:I

.field private final e:Landroid/os/Handler;

.field private f:Z

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;Lcom/pushwoosh/inapp/view/inline/b;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/pushwoosh/inapp/view/inline/k;-><init>(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;Lcom/pushwoosh/inapp/view/inline/b;)V

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/pushwoosh/inapp/view/inline/e;->e:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    new-instance p2, Lcom/pushwoosh/inapp/view/inline/e$a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/pushwoosh/inapp/view/inline/e$a;-><init>(Lcom/pushwoosh/inapp/view/inline/e;Lcom/pushwoosh/inapp/view/inline/e$1;)V

    const-string v0, "pwInlineInappSizeDelegate"

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inapp/view/inline/e;I)I
    .locals 0

    iput p1, p0, Lcom/pushwoosh/inapp/view/inline/e;->c:I

    return p1
.end method

.method static synthetic a(Lcom/pushwoosh/inapp/view/inline/e;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/pushwoosh/inapp/view/inline/e;->e:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b(Lcom/pushwoosh/inapp/view/inline/e;)I
    .locals 0

    iget p0, p0, Lcom/pushwoosh/inapp/view/inline/e;->c:I

    return p0
.end method

.method static synthetic b(Lcom/pushwoosh/inapp/view/inline/e;I)I
    .locals 0

    iput p1, p0, Lcom/pushwoosh/inapp/view/inline/e;->d:I

    return p1
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/k;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:pwInlineInappSizeDelegate.resize(document.body.clientWidth, document.body.clientHeight)"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/e;->e:Landroid/os/Handler;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/pushwoosh/inapp/view/inline/e;->e:Landroid/os/Handler;

    invoke-static {p0}, Lcom/pushwoosh/inapp/view/inline/h;->a(Lcom/pushwoosh/inapp/view/inline/e;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x190

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic c(Lcom/pushwoosh/inapp/view/inline/e;)I
    .locals 0

    iget p0, p0, Lcom/pushwoosh/inapp/view/inline/e;->d:I

    return p0
.end method

.method static synthetic d(Lcom/pushwoosh/inapp/view/inline/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/inapp/view/inline/e;->b()V

    return-void
.end method

.method static synthetic e(Lcom/pushwoosh/inapp/view/inline/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/inapp/view/inline/e;->b()V

    return-void
.end method

.method static synthetic f(Lcom/pushwoosh/inapp/view/inline/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/inapp/view/inline/e;->b()V

    return-void
.end method


# virtual methods
.method protected a(IILcom/pushwoosh/inapp/view/inline/k$a;)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/k;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->getState()Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    move-result-object v0

    sget-object v1, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->c:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/pushwoosh/inapp/view/inline/e;->c:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/pushwoosh/inapp/view/inline/e;->d:I

    if-lez v1, :cond_0

    invoke-interface {p3, v0, v1}, Lcom/pushwoosh/inapp/view/inline/k$a;->a(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/k;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->getState()Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    move-result-object v0

    sget-object v1, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->b:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    if-ne v0, v1, :cond_1

    const/4 p1, 0x1

    invoke-interface {p3, p1, p1}, Lcom/pushwoosh/inapp/view/inline/k$a;->a(II)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/pushwoosh/inapp/view/inline/k;->a(IILcom/pushwoosh/inapp/view/inline/k$a;)V

    :goto_0
    return-void
.end method

.method protected a(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/pushwoosh/inapp/view/inline/k;->a(Landroid/content/res/Configuration;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/inline/k;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/pushwoosh/inapp/view/inline/e;->g:I

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/inline/k;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/pushwoosh/inapp/view/inline/e;->h:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/pushwoosh/inapp/view/inline/e;->f:Z

    :cond_0
    return-void
.end method

.method public a(Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/pushwoosh/inapp/view/inline/k;->a(Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;)V

    sget-object v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->b:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/inline/k;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->getContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    const v0, 0x3c23d70a    # 0.01f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/pushwoosh/inapp/view/inline/k;->a()V

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/inline/e;->e:Landroid/os/Handler;

    invoke-static {p0}, Lcom/pushwoosh/inapp/view/inline/g;->a(Lcom/pushwoosh/inapp/view/inline/e;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected a(ZIIII)V
    .locals 0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/pushwoosh/inapp/view/inline/e;->f:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/pushwoosh/inapp/view/inline/e;->g:I

    if-ne p4, p1, :cond_0

    iget p1, p0, Lcom/pushwoosh/inapp/view/inline/e;->h:I

    if-eq p5, p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/pushwoosh/inapp/view/inline/e;->c:I

    iput p1, p0, Lcom/pushwoosh/inapp/view/inline/e;->d:I

    iget-object p2, p0, Lcom/pushwoosh/inapp/view/inline/e;->e:Landroid/os/Handler;

    invoke-static {p0}, Lcom/pushwoosh/inapp/view/inline/f;->a(Lcom/pushwoosh/inapp/view/inline/e;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean p1, p0, Lcom/pushwoosh/inapp/view/inline/e;->f:Z

    :cond_1
    return-void
.end method

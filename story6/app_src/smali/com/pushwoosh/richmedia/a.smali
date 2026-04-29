.class public Lcom/pushwoosh/richmedia/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/pushwoosh/inapp/view/b/f;

.field private c:Lcom/pushwoosh/richmedia/e;

.field private d:Lcom/pushwoosh/richmedia/RichMediaPresentingDelegate;

.field private e:Lcom/pushwoosh/inapp/f/c;

.field private f:Lcom/pushwoosh/richmedia/RichMediaStyle;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/inapp/view/b/f;Lcom/pushwoosh/richmedia/e;Lcom/pushwoosh/inapp/f/c;Lcom/pushwoosh/richmedia/RichMediaStyle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/pushwoosh/richmedia/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/richmedia/a;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/pushwoosh/richmedia/a;->f:Lcom/pushwoosh/richmedia/RichMediaStyle;

    iput-object p1, p0, Lcom/pushwoosh/richmedia/a;->b:Lcom/pushwoosh/inapp/view/b/f;

    iput-object p2, p0, Lcom/pushwoosh/richmedia/a;->c:Lcom/pushwoosh/richmedia/e;

    iput-object p3, p0, Lcom/pushwoosh/richmedia/a;->e:Lcom/pushwoosh/inapp/f/c;

    const-class p1, Lcom/pushwoosh/inapp/event/c;

    invoke-static {p0}, Lcom/pushwoosh/richmedia/b;->a(Lcom/pushwoosh/richmedia/a;)Lcom/pushwoosh/internal/event/EventListener;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/pushwoosh/internal/event/EventBus;->subscribe(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)Lcom/pushwoosh/internal/event/Subscription;

    const-class p1, Lcom/pushwoosh/inapp/event/e;

    invoke-static {p0}, Lcom/pushwoosh/richmedia/c;->a(Lcom/pushwoosh/richmedia/a;)Lcom/pushwoosh/internal/event/EventListener;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/pushwoosh/internal/event/EventBus;->subscribe(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)Lcom/pushwoosh/internal/event/Subscription;

    const-class p1, Lcom/pushwoosh/inapp/event/d;

    invoke-static {p0}, Lcom/pushwoosh/richmedia/d;->a(Lcom/pushwoosh/richmedia/a;)Lcom/pushwoosh/internal/event/EventListener;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/pushwoosh/internal/event/EventBus;->subscribe(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)Lcom/pushwoosh/internal/event/Subscription;

    return-void
.end method

.method private a(Lcom/pushwoosh/inapp/event/c;)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/richmedia/a;->a:Ljava/lang/String;

    const-string v1, "handle close RichMedia"

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/richmedia/a;->d:Lcom/pushwoosh/richmedia/RichMediaPresentingDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pushwoosh/richmedia/a;->a:Ljava/lang/String;

    const-string v1, "try use delegate onClose"

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/event/c;->a()Lcom/pushwoosh/inapp/e/b/b;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/pushwoosh/richmedia/a;->a(Lcom/pushwoosh/inapp/e/b/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/richmedia/a;->c:Lcom/pushwoosh/richmedia/e;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/richmedia/e;->a(Lcom/pushwoosh/inapp/e/b/b;)Lcom/pushwoosh/richmedia/RichMedia;

    move-result-object p1

    iget-object v0, p0, Lcom/pushwoosh/richmedia/a;->d:Lcom/pushwoosh/richmedia/RichMediaPresentingDelegate;

    invoke-interface {v0, p1}, Lcom/pushwoosh/richmedia/RichMediaPresentingDelegate;->onClose(Lcom/pushwoosh/richmedia/RichMedia;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/pushwoosh/richmedia/a;->a:Ljava/lang/String;

    const-string v0, "resource in event is null"

    invoke-static {p1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/pushwoosh/richmedia/a;->a:Ljava/lang/String;

    const-string v0, "delegate is null"

    invoke-static {p1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/pushwoosh/inapp/event/d;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/pushwoosh/inapp/event/d;->b()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/event/d;->b()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/pushwoosh/richmedia/a;->a:Ljava/lang/String;

    const-string v1, "handle error RichMedia"

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/richmedia/a;->d:Lcom/pushwoosh/richmedia/RichMediaPresentingDelegate;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pushwoosh/richmedia/a;->a:Ljava/lang/String;

    const-string v1, "try use delegate onError"

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/event/d;->a()Lcom/pushwoosh/inapp/e/b/b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/pushwoosh/richmedia/a;->a(Lcom/pushwoosh/inapp/e/b/b;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/pushwoosh/richmedia/a;->c:Lcom/pushwoosh/richmedia/e;

    invoke-virtual {v1, v0}, Lcom/pushwoosh/richmedia/e;->a(Lcom/pushwoosh/inapp/e/b/b;)Lcom/pushwoosh/richmedia/RichMedia;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/event/d;->b()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p1

    iget-object v1, p0, Lcom/pushwoosh/richmedia/a;->d:Lcom/pushwoosh/richmedia/RichMediaPresentingDelegate;

    invoke-interface {v1, v0, p1}, Lcom/pushwoosh/richmedia/RichMediaPresentingDelegate;->onError(Lcom/pushwoosh/richmedia/RichMedia;Lcom/pushwoosh/exception/PushwooshException;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/pushwoosh/richmedia/a;->a:Ljava/lang/String;

    const-string v0, "resource in event is null"

    invoke-static {p1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/pushwoosh/richmedia/a;->a:Ljava/lang/String;

    const-string v0, "delegate is null"

    invoke-static {p1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/pushwoosh/inapp/event/e;)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/richmedia/a;->a:Ljava/lang/String;

    const-string v1, "handle present RichMedia"

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/richmedia/a;->d:Lcom/pushwoosh/richmedia/RichMediaPresentingDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pushwoosh/richmedia/a;->a:Ljava/lang/String;

    const-string v1, "try use delegate onPresent"

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/event/e;->a()Lcom/pushwoosh/inapp/e/b/b;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/pushwoosh/richmedia/a;->a(Lcom/pushwoosh/inapp/e/b/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/richmedia/a;->c:Lcom/pushwoosh/richmedia/e;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/richmedia/e;->a(Lcom/pushwoosh/inapp/e/b/b;)Lcom/pushwoosh/richmedia/RichMedia;

    move-result-object p1

    iget-object v0, p0, Lcom/pushwoosh/richmedia/a;->d:Lcom/pushwoosh/richmedia/RichMediaPresentingDelegate;

    invoke-interface {v0, p1}, Lcom/pushwoosh/richmedia/RichMediaPresentingDelegate;->onPresent(Lcom/pushwoosh/richmedia/RichMedia;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/pushwoosh/richmedia/a;->a:Ljava/lang/String;

    const-string v0, "resource in event is null"

    invoke-static {p1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/pushwoosh/richmedia/a;->a:Ljava/lang/String;

    const-string v0, "delegate is null"

    invoke-static {p1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/richmedia/a;Lcom/pushwoosh/inapp/event/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/richmedia/a;->a(Lcom/pushwoosh/inapp/event/c;)V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/richmedia/a;Lcom/pushwoosh/inapp/event/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/richmedia/a;->a(Lcom/pushwoosh/inapp/event/d;)V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/richmedia/a;Lcom/pushwoosh/inapp/event/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/richmedia/a;->a(Lcom/pushwoosh/inapp/event/e;)V

    return-void
.end method

.method private a(Lcom/pushwoosh/inapp/e/b/b;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pushwoosh/richmedia/a;->a:Ljava/lang/String;

    const-string v0, "code is empty, resource is not RichMedia, abort use delegate"

    invoke-static {p1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/pushwoosh/inapp/view/b/a/b;)Lcom/pushwoosh/richmedia/RichMedia;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/richmedia/a;->c:Lcom/pushwoosh/richmedia/e;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/richmedia/e;->a(Lcom/pushwoosh/inapp/view/b/a/b;)Lcom/pushwoosh/richmedia/RichMedia;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/pushwoosh/inapp/view/b/a/b;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/pushwoosh/richmedia/a;->d(Lcom/pushwoosh/inapp/view/b/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/richmedia/a;->d:Lcom/pushwoosh/richmedia/RichMediaPresentingDelegate;

    invoke-direct {p0, p1}, Lcom/pushwoosh/richmedia/a;->b(Lcom/pushwoosh/inapp/view/b/a/b;)Lcom/pushwoosh/richmedia/RichMedia;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pushwoosh/richmedia/RichMediaPresentingDelegate;->shouldPresent(Lcom/pushwoosh/richmedia/RichMedia;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pushwoosh/richmedia/a;->b:Lcom/pushwoosh/inapp/view/b/f;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/view/b/f;->b(Lcom/pushwoosh/inapp/view/b/a/b;)V

    :cond_1
    return-void
.end method

.method private d(Lcom/pushwoosh/inapp/view/b/a/b;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/b/a/b;->b()Lcom/pushwoosh/inapp/e/b/b;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/pushwoosh/richmedia/a;->a:Ljava/lang/String;

    const-string v0, "resource is null, abort show RichMedia"

    :goto_0
    invoke-static {p1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/b/a/b;->e()Lcom/pushwoosh/inapp/view/b/a/a;

    move-result-object p1

    sget-object v2, Lcom/pushwoosh/inapp/view/b/a/a;->a:Lcom/pushwoosh/inapp/view/b/a/a;

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/e/b/b;->f()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/pushwoosh/richmedia/a;->e:Lcom/pushwoosh/inapp/f/c;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/pushwoosh/inapp/f/c;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/pushwoosh/richmedia/a;->a:Ljava/lang/String;

    const-string v0, "resource is not downloaded, abort show RichMedia"

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private e(Lcom/pushwoosh/inapp/view/b/a/b;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/b/a/b;->e()Lcom/pushwoosh/inapp/view/b/a/a;

    move-result-object p1

    sget-object v0, Lcom/pushwoosh/inapp/view/b/a/a;->c:Lcom/pushwoosh/inapp/view/b/a/a;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a()Lcom/pushwoosh/richmedia/RichMediaStyle;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/richmedia/a;->f:Lcom/pushwoosh/richmedia/RichMediaStyle;

    return-object v0
.end method

.method public a(Lcom/pushwoosh/inapp/view/b/a/b;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/richmedia/a;->d:Lcom/pushwoosh/richmedia/RichMediaPresentingDelegate;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/pushwoosh/richmedia/a;->e(Lcom/pushwoosh/inapp/view/b/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/pushwoosh/richmedia/a;->c(Lcom/pushwoosh/inapp/view/b/a/b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/richmedia/a;->b:Lcom/pushwoosh/inapp/view/b/f;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/view/b/f;->b(Lcom/pushwoosh/inapp/view/b/a/b;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/pushwoosh/richmedia/RichMedia;)V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/richmedia/a;->a:Ljava/lang/String;

    const-string v1, "try show richMedia"

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/richmedia/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showRichMedia with content:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pushwoosh/richmedia/RichMedia;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/richmedia/a;->b:Lcom/pushwoosh/inapp/view/b/f;

    invoke-virtual {p1}, Lcom/pushwoosh/richmedia/RichMedia;->a()Lcom/pushwoosh/inapp/view/b/a/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/view/b/f;->b(Lcom/pushwoosh/inapp/view/b/a/b;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/pushwoosh/richmedia/a;->a:Ljava/lang/String;

    const-string v0, "richMedia is null"

    invoke-static {p1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/pushwoosh/richmedia/RichMediaPresentingDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/richmedia/a;->d:Lcom/pushwoosh/richmedia/RichMediaPresentingDelegate;

    return-void
.end method

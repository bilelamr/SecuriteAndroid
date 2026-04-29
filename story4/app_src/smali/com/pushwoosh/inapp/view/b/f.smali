.class public Lcom/pushwoosh/inapp/view/b/f;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/pushwoosh/inapp/view/b/a/b;)Lcom/pushwoosh/inapp/view/b/e;
    .locals 4

    invoke-static {}, Lcom/pushwoosh/inapp/view/b/f;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Incorrect state of app. Context is null"

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v0, Lcom/pushwoosh/inapp/view/b/f$1;->a:[I

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/b/a/b;->e()Lcom/pushwoosh/inapp/view/b/a/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    new-instance p1, Lcom/pushwoosh/inapp/view/b/a;

    invoke-static {}, Lcom/pushwoosh/inapp/view/b/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/pushwoosh/inapp/b;->a()Lcom/pushwoosh/inapp/f/c;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/pushwoosh/inapp/view/b/a;-><init>(Landroid/content/Context;Lcom/pushwoosh/inapp/f/c;)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/pushwoosh/inapp/view/b/d;

    invoke-static {}, Lcom/pushwoosh/inapp/view/b/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/pushwoosh/inapp/view/b/d;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/b/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/pushwoosh/inapp/view/b/g;

    invoke-static {}, Lcom/pushwoosh/inapp/view/b/f;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/b/a/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/pushwoosh/inapp/view/b/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/pushwoosh/inapp/view/b/h;

    invoke-static {}, Lcom/pushwoosh/inapp/view/b/f;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/b/a/b;->a()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/pushwoosh/inapp/view/b/h;-><init>(Landroid/content/Context;J)V

    return-object v0

    :cond_4
    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/b/a/b;->b()Lcom/pushwoosh/inapp/e/b/b;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/b/a/b;->b()Lcom/pushwoosh/inapp/e/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/pushwoosh/inapp/view/b/c;

    invoke-static {}, Lcom/pushwoosh/inapp/view/b/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/pushwoosh/inapp/view/b/c;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/pushwoosh/inapp/view/b/a;

    invoke-static {}, Lcom/pushwoosh/inapp/view/b/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/pushwoosh/inapp/b;->a()Lcom/pushwoosh/inapp/f/c;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/pushwoosh/inapp/view/b/a;-><init>(Landroid/content/Context;Lcom/pushwoosh/inapp/f/c;)V

    return-object p1
.end method

.method public b(Lcom/pushwoosh/inapp/view/b/a/b;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inapp/view/b/f;->a(Lcom/pushwoosh/inapp/view/b/a/b;)Lcom/pushwoosh/inapp/view/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/b/a/b;->b()Lcom/pushwoosh/inapp/e/b/b;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/pushwoosh/inapp/view/b/e;->a(Lcom/pushwoosh/inapp/e/b/b;)V

    :cond_0
    return-void
.end method

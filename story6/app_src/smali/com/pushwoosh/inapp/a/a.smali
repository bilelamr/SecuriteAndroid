.class public Lcom/pushwoosh/inapp/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/inapp/a/a$d;,
        Lcom/pushwoosh/inapp/a/a$f;,
        Lcom/pushwoosh/inapp/a/a$c;,
        Lcom/pushwoosh/inapp/a/a$a;,
        Lcom/pushwoosh/inapp/a/a$e;,
        Lcom/pushwoosh/inapp/a/a$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Lcom/pushwoosh/inapp/a/a$c;

.field private d:Landroid/content/SharedPreferences;

.field private e:Lcom/pushwoosh/inapp/a/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/inapp/a/a$d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Date;

.field private g:Lcom/pushwoosh/internal/utils/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;FLandroid/content/SharedPreferences;Lcom/pushwoosh/inapp/a/a$c;Lcom/pushwoosh/internal/utils/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/pushwoosh/inapp/a/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pushwoosh/inapp/a/a$d;-><init>(Lcom/pushwoosh/inapp/a/a;Lcom/pushwoosh/inapp/a/a$1;)V

    iput-object v0, p0, Lcom/pushwoosh/inapp/a/a;->e:Lcom/pushwoosh/inapp/a/a$d;

    iput-object p1, p0, Lcom/pushwoosh/inapp/a/a;->a:Ljava/lang/String;

    const p1, 0x4ca4cb80    # 8.64E7f

    mul-float p2, p2, p1

    float-to-long p1, p2

    iput-wide p1, p0, Lcom/pushwoosh/inapp/a/a;->b:J

    iput-object p3, p0, Lcom/pushwoosh/inapp/a/a;->d:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/pushwoosh/inapp/a/a;->c:Lcom/pushwoosh/inapp/a/a$c;

    iput-object p5, p0, Lcom/pushwoosh/inapp/a/a;->g:Lcom/pushwoosh/internal/utils/j;

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inapp/a/a;Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/pushwoosh/inapp/a/a$a;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p2, p3, p5, p4}, Lcom/pushwoosh/inapp/a/d;->a(Lcom/pushwoosh/inapp/a/a;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;Lcom/pushwoosh/inapp/a/a$a;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inapp/a/a;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;Lcom/pushwoosh/inapp/a/a$a;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/pushwoosh/inapp/a/a;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " timeout Exceeded"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BusinessCase"

    invoke-static {p1, p0}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x0

    invoke-static {}, Lcom/pushwoosh/inapp/b;->b()Lcom/pushwoosh/inapp/f/d;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2, p3}, Lcom/pushwoosh/inapp/f/d;->a(Ljava/lang/String;)Lcom/pushwoosh/inapp/e/b/b;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_4

    if-eqz p4, :cond_2

    new-instance p2, Lcom/pushwoosh/inapp/a/a$e;

    const-class v0, Lcom/pushwoosh/inapp/view/d;

    invoke-static {p3}, Lcom/pushwoosh/inapp/a/e;->a(Ljava/lang/String;)Lcom/pushwoosh/inapp/a/a$b;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcom/pushwoosh/inapp/a/a$e;-><init>(Lcom/pushwoosh/inapp/a/a;Ljava/lang/Class;Lcom/pushwoosh/inapp/a/a$b;)V

    new-instance v0, Lcom/pushwoosh/inapp/a/a$e;

    const-class v1, Lcom/pushwoosh/inapp/view/e;

    invoke-static {p3, p4}, Lcom/pushwoosh/inapp/a/f;->a(Ljava/lang/String;Lcom/pushwoosh/inapp/a/a$a;)Lcom/pushwoosh/inapp/a/a$b;

    move-result-object p3

    invoke-direct {v0, p0, v1, p3}, Lcom/pushwoosh/inapp/a/a$e;-><init>(Lcom/pushwoosh/inapp/a/a;Ljava/lang/Class;Lcom/pushwoosh/inapp/a/a$b;)V

    invoke-virtual {p2, v0}, Lcom/pushwoosh/inapp/a/a$e;->a(Lcom/pushwoosh/inapp/a/a$e;)V

    invoke-virtual {v0, p2}, Lcom/pushwoosh/inapp/a/a$e;->a(Lcom/pushwoosh/inapp/a/a$e;)V

    :cond_2
    new-instance p2, Lcom/pushwoosh/inapp/view/b/a/b$a;

    invoke-direct {p2}, Lcom/pushwoosh/inapp/view/b/a/b$a;-><init>()V

    invoke-virtual {p2, p1}, Lcom/pushwoosh/inapp/view/b/a/b$a;->a(Lcom/pushwoosh/inapp/e/b/b;)Lcom/pushwoosh/inapp/view/b/a/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/b/a/b$a;->a()Lcom/pushwoosh/inapp/view/b/a/b;

    move-result-object p1

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pushwoosh/q;->j()Lcom/pushwoosh/richmedia/a;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Lcom/pushwoosh/richmedia/a;->a(Lcom/pushwoosh/inapp/view/b/a/b;)V

    :cond_3
    invoke-direct {p0}, Lcom/pushwoosh/inapp/a/a;->d()V

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    sget-object p0, Lcom/pushwoosh/inapp/a/h;->c:Lcom/pushwoosh/inapp/a/h;

    invoke-interface {p4, p0}, Lcom/pushwoosh/inapp/a/a$a;->a(Lcom/pushwoosh/inapp/a/h;)V

    :cond_5
    :goto_0
    return-void
.end method

.method static synthetic a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/pushwoosh/inapp/a/a$a;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Lcom/pushwoosh/inapp/a/h;->c:Lcom/pushwoosh/inapp/a/h;

    invoke-interface {p1, p0}, Lcom/pushwoosh/inapp/a/a$a;->a(Lcom/pushwoosh/inapp/a/h;)V

    :cond_1
    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/pushwoosh/inapp/a/a$a;Lcom/pushwoosh/inapp/view/e;)Z
    .locals 0

    invoke-virtual {p2}, Lcom/pushwoosh/inapp/view/e;->a()Lcom/pushwoosh/inapp/e/b/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/pushwoosh/inapp/a/h;->c:Lcom/pushwoosh/inapp/a/h;

    invoke-interface {p1, p0}, Lcom/pushwoosh/inapp/a/a$a;->a(Lcom/pushwoosh/inapp/a/h;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Ljava/lang/String;Lcom/pushwoosh/inapp/view/d;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/d;->a()Lcom/pushwoosh/inapp/e/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private b()Z
    .locals 6

    iget-wide v0, p0, Lcom/pushwoosh/inapp/a/a;->b:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inapp/a/a;->f:Ljava/util/Date;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/pushwoosh/inapp/a/a;->c()Ljava/util/Date;

    :cond_1
    iget-object v0, p0, Lcom/pushwoosh/inapp/a/a;->f:Ljava/util/Date;

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/pushwoosh/inapp/a/a;->g:Lcom/pushwoosh/internal/utils/j;

    invoke-virtual {v0}, Lcom/pushwoosh/internal/utils/j;->b()J

    move-result-wide v0

    iget-object v3, p0, Lcom/pushwoosh/inapp/a/a;->f:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v0, v3

    iget-wide v3, p0, Lcom/pushwoosh/inapp/a/a;->b:J

    cmp-long v5, v0, v3

    if-gez v5, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method private c()Ljava/util/Date;
    .locals 5

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/a;->d:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/pushwoosh/inapp/a/a;->a:Ljava/lang/String;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/pushwoosh/inapp/a/a;->f:Ljava/util/Date;

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/inapp/a/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/pushwoosh/inapp/a/a;->g:Lcom/pushwoosh/internal/utils/j;

    invoke-virtual {v2}, Lcom/pushwoosh/internal/utils/j;->b()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/pushwoosh/inapp/a/a$a;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trigger "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pushwoosh/inapp/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[BusinessCase]"

    invoke-static {v1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/a;->c:Lcom/pushwoosh/inapp/a/a$c;

    invoke-interface {v0}, Lcom/pushwoosh/inapp/a/a$c;->a()Z

    move-result v0

    const-string v1, "BusinessCase"

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/pushwoosh/inapp/a/h;->b:Lcom/pushwoosh/inapp/a/h;

    invoke-interface {p1, v0}, Lcom/pushwoosh/inapp/a/a$a;->a(Lcom/pushwoosh/inapp/a/h;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " condition not satisfied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/pushwoosh/inapp/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    sget-object v0, Lcom/pushwoosh/inapp/a/h;->a:Lcom/pushwoosh/inapp/a/h;

    invoke-interface {p1, v0}, Lcom/pushwoosh/inapp/a/a$a;->a(Lcom/pushwoosh/inapp/a/h;)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " trigger cap exceeded"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v4, "Looper is null. Using MainLooper instead, which will cause StrictMode policy violation"

    invoke-static {v1, v4}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v1, Landroid/os/Handler;

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    :goto_2
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v3, p1, v0}, Lcom/pushwoosh/inapp/a/b;->a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/pushwoosh/inapp/a/a$a;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0xfa0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/pushwoosh/inapp/a/a;->e:Lcom/pushwoosh/inapp/a/a$d;

    invoke-static {p0, v1, v0, v3, p1}, Lcom/pushwoosh/inapp/a/c;->a(Lcom/pushwoosh/inapp/a/a;Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/pushwoosh/inapp/a/a$a;)Lcom/pushwoosh/inapp/a/a$f;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/pushwoosh/inapp/a/a$d;->a(Lcom/pushwoosh/inapp/a/a$f;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/a;->e:Lcom/pushwoosh/inapp/a/a$d;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/a/a$d;->a(Ljava/lang/Object;)V

    return-void
.end method

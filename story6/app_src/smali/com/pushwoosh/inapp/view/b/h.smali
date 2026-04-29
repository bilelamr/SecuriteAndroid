.class Lcom/pushwoosh/inapp/view/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inapp/view/b/e;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:J

.field private c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/b/h;->c:Landroid/os/Handler;

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/b/h;->a:Landroid/content/Context;

    iput-wide p2, p0, Lcom/pushwoosh/inapp/view/b/h;->b:J

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inapp/view/b/h;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/pushwoosh/inapp/view/b/h;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/pushwoosh/inapp/e/b/b;)V
    .locals 3

    const-string v0, "[InApp]RichMediaViewStrategy"

    if-nez p1, :cond_0

    const-string p1, "resource is empty"

    invoke-static {v0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "presenting richMedia with code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/b/h;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->b(Landroid/content/Context;Lcom/pushwoosh/inapp/e/b/b;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/b/h;->c:Landroid/os/Handler;

    invoke-static {p0, p1}, Lcom/pushwoosh/inapp/view/b/i;->a(Lcom/pushwoosh/inapp/view/b/h;Landroid/content/Intent;)Ljava/lang/Runnable;

    move-result-object p1

    iget-wide v1, p0, Lcom/pushwoosh/inapp/view/b/h;->b:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

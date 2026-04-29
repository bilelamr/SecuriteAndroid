.class Lcom/pushwoosh/inapp/view/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inapp/view/b/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/inapp/view/b/a$a;,
        Lcom/pushwoosh/inapp/view/b/a$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/pushwoosh/inapp/f/c;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/pushwoosh/inapp/f/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/b/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/pushwoosh/inapp/view/b/a;->b:Lcom/pushwoosh/inapp/f/c;

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inapp/view/b/a;)Lcom/pushwoosh/inapp/f/c;
    .locals 0

    iget-object p0, p0, Lcom/pushwoosh/inapp/view/b/a;->b:Lcom/pushwoosh/inapp/f/c;

    return-object p0
.end method

.method static synthetic a(Lcom/pushwoosh/inapp/view/b/a;Lcom/pushwoosh/inapp/e/b/b;)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/b/a;->b:Lcom/pushwoosh/inapp/f/c;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pushwoosh/inapp/f/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/pushwoosh/inapp/view/b/a;->a:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->a(Landroid/content/Context;Lcom/pushwoosh/inapp/e/b/b;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p0, "[InApp]InAppDefaultViewStrategy"

    const-string p1, "resource is not downloaded, abort show inApp"

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/pushwoosh/inapp/view/b/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/pushwoosh/inapp/view/b/a;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/pushwoosh/inapp/e/b/b;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "[InApp]InAppDefaultViewStrategy"

    const-string v0, "resource is empty"

    invoke-static {p1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/pushwoosh/inapp/view/b/a$b;

    invoke-static {p0, p1}, Lcom/pushwoosh/inapp/view/b/b;->a(Lcom/pushwoosh/inapp/view/b/a;Lcom/pushwoosh/inapp/e/b/b;)Lcom/pushwoosh/inapp/view/b/a$a;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/pushwoosh/inapp/view/b/a$b;-><init>(Lcom/pushwoosh/inapp/view/b/a;Lcom/pushwoosh/inapp/e/b/b;Lcom/pushwoosh/inapp/view/b/a$a;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

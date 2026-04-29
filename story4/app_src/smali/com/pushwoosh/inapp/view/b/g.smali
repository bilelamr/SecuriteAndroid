.class Lcom/pushwoosh/inapp/view/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inapp/view/b/e;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/b/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/pushwoosh/inapp/view/b/g;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/pushwoosh/inapp/e/b/b;)V
    .locals 3

    const-string v0, "[InApp]RichMediaLockScreenViewStrategy"

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

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/b/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/b/g;->b:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->a(Landroid/content/Context;Lcom/pushwoosh/inapp/e/b/b;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

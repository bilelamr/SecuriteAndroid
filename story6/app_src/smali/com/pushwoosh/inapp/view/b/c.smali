.class Lcom/pushwoosh/inapp/view/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inapp/view/b/e;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/b/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/pushwoosh/inapp/e/b/b;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "InAppRequiredViewStrategy"

    const-string v0, "resource is empty"

    invoke-static {p1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inapp/view/b/c;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->a(Landroid/content/Context;Lcom/pushwoosh/inapp/e/b/b;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

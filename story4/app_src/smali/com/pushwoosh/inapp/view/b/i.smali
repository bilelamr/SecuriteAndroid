.class final synthetic Lcom/pushwoosh/inapp/view/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/pushwoosh/inapp/view/b/h;

.field private final b:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inapp/view/b/h;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/b/i;->a:Lcom/pushwoosh/inapp/view/b/h;

    iput-object p2, p0, Lcom/pushwoosh/inapp/view/b/i;->b:Landroid/content/Intent;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inapp/view/b/h;Landroid/content/Intent;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/view/b/i;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/inapp/view/b/i;-><init>(Lcom/pushwoosh/inapp/view/b/h;Landroid/content/Intent;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/b/i;->a:Lcom/pushwoosh/inapp/view/b/h;

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/b/i;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/pushwoosh/inapp/view/b/h;->a(Lcom/pushwoosh/inapp/view/b/h;Landroid/content/Intent;)V

    return-void
.end method

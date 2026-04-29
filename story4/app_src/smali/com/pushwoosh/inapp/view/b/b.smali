.class final synthetic Lcom/pushwoosh/inapp/view/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inapp/view/b/a$a;


# instance fields
.field private final a:Lcom/pushwoosh/inapp/view/b/a;

.field private final b:Lcom/pushwoosh/inapp/e/b/b;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inapp/view/b/a;Lcom/pushwoosh/inapp/e/b/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/b/b;->a:Lcom/pushwoosh/inapp/view/b/a;

    iput-object p2, p0, Lcom/pushwoosh/inapp/view/b/b;->b:Lcom/pushwoosh/inapp/e/b/b;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inapp/view/b/a;Lcom/pushwoosh/inapp/e/b/b;)Lcom/pushwoosh/inapp/view/b/a$a;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/view/b/b;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/inapp/view/b/b;-><init>(Lcom/pushwoosh/inapp/view/b/a;Lcom/pushwoosh/inapp/e/b/b;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/b/b;->a:Lcom/pushwoosh/inapp/view/b/a;

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/b/b;->b:Lcom/pushwoosh/inapp/e/b/b;

    invoke-static {v0, v1}, Lcom/pushwoosh/inapp/view/b/a;->a(Lcom/pushwoosh/inapp/view/b/a;Lcom/pushwoosh/inapp/e/b/b;)V

    return-void
.end method

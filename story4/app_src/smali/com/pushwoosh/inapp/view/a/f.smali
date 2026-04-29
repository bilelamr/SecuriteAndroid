.class final synthetic Lcom/pushwoosh/inapp/view/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/function/Callback;


# instance fields
.field private final a:Lcom/pushwoosh/inapp/view/a/e;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inapp/view/a/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/a/f;->a:Lcom/pushwoosh/inapp/view/a/e;

    iput-object p2, p0, Lcom/pushwoosh/inapp/view/a/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/pushwoosh/inapp/view/a/f;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inapp/view/a/e;Ljava/lang/String;Ljava/lang/String;)Lcom/pushwoosh/function/Callback;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/view/a/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/pushwoosh/inapp/view/a/f;-><init>(Lcom/pushwoosh/inapp/view/a/e;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public process(Lcom/pushwoosh/function/Result;)V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/a/f;->a:Lcom/pushwoosh/inapp/view/a/e;

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/a/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/pushwoosh/inapp/view/a/f;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/pushwoosh/inapp/view/a/e;->a(Lcom/pushwoosh/inapp/view/a/e;Ljava/lang/String;Ljava/lang/String;Lcom/pushwoosh/function/Result;)V

    return-void
.end method

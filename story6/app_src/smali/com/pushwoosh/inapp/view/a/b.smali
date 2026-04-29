.class final synthetic Lcom/pushwoosh/inapp/view/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/pushwoosh/inapp/view/a/a;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inapp/view/a/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/a/b;->a:Lcom/pushwoosh/inapp/view/a/a;

    iput-object p2, p0, Lcom/pushwoosh/inapp/view/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inapp/view/a/a;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/view/a/b;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/inapp/view/a/b;-><init>(Lcom/pushwoosh/inapp/view/a/a;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/a/b;->a:Lcom/pushwoosh/inapp/view/a/a;

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/a/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/pushwoosh/inapp/view/a/a;->b(Lcom/pushwoosh/inapp/view/a/a;Ljava/lang/String;)V

    return-void
.end method

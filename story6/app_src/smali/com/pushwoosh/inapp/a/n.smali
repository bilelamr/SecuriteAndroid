.class final synthetic Lcom/pushwoosh/inapp/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/pushwoosh/inapp/a/a;

.field private final b:Lcom/pushwoosh/inapp/a/a$a;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inapp/a/a;Lcom/pushwoosh/inapp/a/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/a/n;->a:Lcom/pushwoosh/inapp/a/a;

    iput-object p2, p0, Lcom/pushwoosh/inapp/a/n;->b:Lcom/pushwoosh/inapp/a/a$a;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inapp/a/a;Lcom/pushwoosh/inapp/a/a$a;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/a/n;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/inapp/a/n;-><init>(Lcom/pushwoosh/inapp/a/a;Lcom/pushwoosh/inapp/a/a$a;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/n;->a:Lcom/pushwoosh/inapp/a/a;

    iget-object v1, p0, Lcom/pushwoosh/inapp/a/n;->b:Lcom/pushwoosh/inapp/a/a$a;

    invoke-static {v0, v1}, Lcom/pushwoosh/inapp/a/i;->a(Lcom/pushwoosh/inapp/a/a;Lcom/pushwoosh/inapp/a/a$a;)V

    return-void
.end method

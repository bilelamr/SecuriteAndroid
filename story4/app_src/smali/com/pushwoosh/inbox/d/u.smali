.class final synthetic Lcom/pushwoosh/inbox/d/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/pushwoosh/inbox/d/t;

.field private final b:Lcom/pushwoosh/function/Result;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inbox/d/t;Lcom/pushwoosh/function/Result;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/d/u;->a:Lcom/pushwoosh/inbox/d/t;

    iput-object p2, p0, Lcom/pushwoosh/inbox/d/u;->b:Lcom/pushwoosh/function/Result;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inbox/d/t;Lcom/pushwoosh/function/Result;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inbox/d/u;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/inbox/d/u;-><init>(Lcom/pushwoosh/inbox/d/t;Lcom/pushwoosh/function/Result;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/u;->a:Lcom/pushwoosh/inbox/d/t;

    iget-object v1, p0, Lcom/pushwoosh/inbox/d/u;->b:Lcom/pushwoosh/function/Result;

    invoke-static {v0, v1}, Lcom/pushwoosh/inbox/d/t;->a(Lcom/pushwoosh/inbox/d/t;Lcom/pushwoosh/function/Result;)V

    return-void
.end method

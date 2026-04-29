.class final synthetic Lcom/pushwoosh/inbox/d/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inbox/internal/b/c;


# instance fields
.field private final a:Lcom/pushwoosh/inbox/d/b;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inbox/d/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/d/l;->a:Lcom/pushwoosh/inbox/d/b;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inbox/d/b;)Lcom/pushwoosh/inbox/internal/b/c;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inbox/d/l;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inbox/d/l;-><init>(Lcom/pushwoosh/inbox/d/b;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/l;->a:Lcom/pushwoosh/inbox/d/b;

    check-cast p1, Lcom/pushwoosh/function/Result;

    invoke-static {v0, p1}, Lcom/pushwoosh/inbox/d/b;->a(Lcom/pushwoosh/inbox/d/b;Lcom/pushwoosh/function/Result;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    return-object p1
.end method

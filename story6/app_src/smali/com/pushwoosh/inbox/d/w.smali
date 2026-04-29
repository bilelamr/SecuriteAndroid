.class final synthetic Lcom/pushwoosh/inbox/d/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/function/Callback;


# instance fields
.field private final a:Lcom/pushwoosh/inbox/d/v;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inbox/d/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/d/w;->a:Lcom/pushwoosh/inbox/d/v;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inbox/d/v;)Lcom/pushwoosh/function/Callback;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inbox/d/w;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inbox/d/w;-><init>(Lcom/pushwoosh/inbox/d/v;)V

    return-object v0
.end method


# virtual methods
.method public process(Lcom/pushwoosh/function/Result;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/w;->a:Lcom/pushwoosh/inbox/d/v;

    invoke-static {v0, p1}, Lcom/pushwoosh/inbox/d/v;->a(Lcom/pushwoosh/inbox/d/v;Lcom/pushwoosh/function/Result;)V

    return-void
.end method

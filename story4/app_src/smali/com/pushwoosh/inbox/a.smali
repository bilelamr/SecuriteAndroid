.class final synthetic Lcom/pushwoosh/inbox/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/function/Callback;


# instance fields
.field private final a:Lcom/pushwoosh/inbox/internal/b/a;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inbox/internal/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/a;->a:Lcom/pushwoosh/inbox/internal/b/a;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inbox/internal/b/a;)Lcom/pushwoosh/function/Callback;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inbox/a;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inbox/a;-><init>(Lcom/pushwoosh/inbox/internal/b/a;)V

    return-object v0
.end method


# virtual methods
.method public process(Lcom/pushwoosh/function/Result;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/a;->a:Lcom/pushwoosh/inbox/internal/b/a;

    invoke-static {v0, p1}, Lcom/pushwoosh/inbox/PushwooshInbox;->lambda$performAction$0(Lcom/pushwoosh/inbox/internal/b/a;Lcom/pushwoosh/function/Result;)V

    return-void
.end method

.class final synthetic Lcom/pushwoosh/inbox/d/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/pushwoosh/inbox/data/InboxMessage;

.field private final b:Lcom/pushwoosh/function/Callback;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inbox/data/InboxMessage;Lcom/pushwoosh/function/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/d/i;->a:Lcom/pushwoosh/inbox/data/InboxMessage;

    iput-object p2, p0, Lcom/pushwoosh/inbox/d/i;->b:Lcom/pushwoosh/function/Callback;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inbox/data/InboxMessage;Lcom/pushwoosh/function/Callback;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inbox/d/i;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/inbox/d/i;-><init>(Lcom/pushwoosh/inbox/data/InboxMessage;Lcom/pushwoosh/function/Callback;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/i;->a:Lcom/pushwoosh/inbox/data/InboxMessage;

    iget-object v1, p0, Lcom/pushwoosh/inbox/d/i;->b:Lcom/pushwoosh/function/Callback;

    invoke-static {v0, v1}, Lcom/pushwoosh/inbox/d/b;->a(Lcom/pushwoosh/inbox/data/InboxMessage;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

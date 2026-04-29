.class final synthetic Lcom/pushwoosh/inbox/d/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/pushwoosh/inbox/d/b;

.field private final b:Ljava/util/Map;

.field private final c:Lcom/pushwoosh/function/Callback;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inbox/d/b;Ljava/util/Map;Lcom/pushwoosh/function/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/d/q;->a:Lcom/pushwoosh/inbox/d/b;

    iput-object p2, p0, Lcom/pushwoosh/inbox/d/q;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/pushwoosh/inbox/d/q;->c:Lcom/pushwoosh/function/Callback;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inbox/d/b;Ljava/util/Map;Lcom/pushwoosh/function/Callback;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inbox/d/q;

    invoke-direct {v0, p0, p1, p2}, Lcom/pushwoosh/inbox/d/q;-><init>(Lcom/pushwoosh/inbox/d/b;Ljava/util/Map;Lcom/pushwoosh/function/Callback;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/q;->a:Lcom/pushwoosh/inbox/d/b;

    iget-object v1, p0, Lcom/pushwoosh/inbox/d/q;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/pushwoosh/inbox/d/q;->c:Lcom/pushwoosh/function/Callback;

    invoke-static {v0, v1, v2}, Lcom/pushwoosh/inbox/d/b;->a(Lcom/pushwoosh/inbox/d/b;Ljava/util/Map;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

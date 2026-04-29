.class final synthetic Lcom/pushwoosh/repository/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/function/Callback;


# instance fields
.field private final a:Lcom/pushwoosh/repository/s;

.field private final b:Lcom/pushwoosh/function/Callback;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/repository/s;Lcom/pushwoosh/function/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/repository/w;->a:Lcom/pushwoosh/repository/s;

    iput-object p2, p0, Lcom/pushwoosh/repository/w;->b:Lcom/pushwoosh/function/Callback;

    return-void
.end method

.method public static a(Lcom/pushwoosh/repository/s;Lcom/pushwoosh/function/Callback;)Lcom/pushwoosh/function/Callback;
    .locals 1

    new-instance v0, Lcom/pushwoosh/repository/w;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/repository/w;-><init>(Lcom/pushwoosh/repository/s;Lcom/pushwoosh/function/Callback;)V

    return-object v0
.end method


# virtual methods
.method public process(Lcom/pushwoosh/function/Result;)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/repository/w;->a:Lcom/pushwoosh/repository/s;

    iget-object v1, p0, Lcom/pushwoosh/repository/w;->b:Lcom/pushwoosh/function/Callback;

    invoke-static {v0, v1, p1}, Lcom/pushwoosh/repository/s;->a(Lcom/pushwoosh/repository/s;Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/function/Result;)V

    return-void
.end method

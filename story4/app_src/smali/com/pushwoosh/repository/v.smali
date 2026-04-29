.class final synthetic Lcom/pushwoosh/repository/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/function/Callback;


# instance fields
.field private final a:Lcom/pushwoosh/repository/s;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/repository/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/repository/v;->a:Lcom/pushwoosh/repository/s;

    return-void
.end method

.method public static a(Lcom/pushwoosh/repository/s;)Lcom/pushwoosh/function/Callback;
    .locals 1

    new-instance v0, Lcom/pushwoosh/repository/v;

    invoke-direct {v0, p0}, Lcom/pushwoosh/repository/v;-><init>(Lcom/pushwoosh/repository/s;)V

    return-object v0
.end method


# virtual methods
.method public process(Lcom/pushwoosh/function/Result;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/v;->a:Lcom/pushwoosh/repository/s;

    invoke-static {v0, p1}, Lcom/pushwoosh/repository/s;->a(Lcom/pushwoosh/repository/s;Lcom/pushwoosh/function/Result;)V

    return-void
.end method

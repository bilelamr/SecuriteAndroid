.class final synthetic Lcom/pushwoosh/repository/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/function/Callback;


# instance fields
.field private final a:Lcom/pushwoosh/repository/i;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/repository/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/repository/l;->a:Lcom/pushwoosh/repository/i;

    return-void
.end method

.method public static a(Lcom/pushwoosh/repository/i;)Lcom/pushwoosh/function/Callback;
    .locals 1

    new-instance v0, Lcom/pushwoosh/repository/l;

    invoke-direct {v0, p0}, Lcom/pushwoosh/repository/l;-><init>(Lcom/pushwoosh/repository/i;)V

    return-object v0
.end method


# virtual methods
.method public process(Lcom/pushwoosh/function/Result;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/l;->a:Lcom/pushwoosh/repository/i;

    invoke-static {v0, p1}, Lcom/pushwoosh/repository/i;->c(Lcom/pushwoosh/repository/i;Lcom/pushwoosh/function/Result;)V

    return-void
.end method

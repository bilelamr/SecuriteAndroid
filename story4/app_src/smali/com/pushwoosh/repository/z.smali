.class final synthetic Lcom/pushwoosh/repository/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/function/Callback;


# instance fields
.field private final a:Lcom/pushwoosh/repository/y;

.field private final b:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/repository/y;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/repository/z;->a:Lcom/pushwoosh/repository/y;

    iput-object p2, p0, Lcom/pushwoosh/repository/z;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/pushwoosh/repository/y;Ljava/util/List;)Lcom/pushwoosh/function/Callback;
    .locals 1

    new-instance v0, Lcom/pushwoosh/repository/z;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/repository/z;-><init>(Lcom/pushwoosh/repository/y;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public process(Lcom/pushwoosh/function/Result;)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/repository/z;->a:Lcom/pushwoosh/repository/y;

    iget-object v1, p0, Lcom/pushwoosh/repository/z;->b:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/pushwoosh/repository/y;->a(Lcom/pushwoosh/repository/y;Ljava/util/List;Lcom/pushwoosh/function/Result;)V

    return-void
.end method

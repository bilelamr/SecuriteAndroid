.class final synthetic Lcom/pushwoosh/inapp/e/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/function/Callback;


# instance fields
.field private final a:Lcom/pushwoosh/function/Callback;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/function/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/e/f;->a:Lcom/pushwoosh/function/Callback;

    return-void
.end method

.method public static a(Lcom/pushwoosh/function/Callback;)Lcom/pushwoosh/function/Callback;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/e/f;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inapp/e/f;-><init>(Lcom/pushwoosh/function/Callback;)V

    return-object v0
.end method


# virtual methods
.method public process(Lcom/pushwoosh/function/Result;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/f;->a:Lcom/pushwoosh/function/Callback;

    invoke-static {v0, p1}, Lcom/pushwoosh/inapp/e/c;->b(Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/function/Result;)V

    return-void
.end method

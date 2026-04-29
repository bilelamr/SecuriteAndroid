.class final synthetic Lcom/pushwoosh/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/function/Callback;


# instance fields
.field private final a:Lcom/pushwoosh/GDPRManager;

.field private final b:Lcom/pushwoosh/function/Callback;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/GDPRManager;Lcom/pushwoosh/function/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/i;->a:Lcom/pushwoosh/GDPRManager;

    iput-object p2, p0, Lcom/pushwoosh/i;->b:Lcom/pushwoosh/function/Callback;

    return-void
.end method

.method public static a(Lcom/pushwoosh/GDPRManager;Lcom/pushwoosh/function/Callback;)Lcom/pushwoosh/function/Callback;
    .locals 1

    new-instance v0, Lcom/pushwoosh/i;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/i;-><init>(Lcom/pushwoosh/GDPRManager;Lcom/pushwoosh/function/Callback;)V

    return-object v0
.end method


# virtual methods
.method public process(Lcom/pushwoosh/function/Result;)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/i;->a:Lcom/pushwoosh/GDPRManager;

    iget-object v1, p0, Lcom/pushwoosh/i;->b:Lcom/pushwoosh/function/Callback;

    invoke-static {v0, v1, p1}, Lcom/pushwoosh/GDPRManager;->a(Lcom/pushwoosh/GDPRManager;Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/function/Result;)V

    return-void
.end method

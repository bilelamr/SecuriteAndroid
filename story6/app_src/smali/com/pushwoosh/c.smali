.class final synthetic Lcom/pushwoosh/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/function/Callback;


# instance fields
.field private final a:Lcom/pushwoosh/GDPRManager;

.field private final b:Z

.field private final c:Lcom/pushwoosh/function/Callback;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/GDPRManager;ZLcom/pushwoosh/function/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/c;->a:Lcom/pushwoosh/GDPRManager;

    iput-boolean p2, p0, Lcom/pushwoosh/c;->b:Z

    iput-object p3, p0, Lcom/pushwoosh/c;->c:Lcom/pushwoosh/function/Callback;

    return-void
.end method

.method public static a(Lcom/pushwoosh/GDPRManager;ZLcom/pushwoosh/function/Callback;)Lcom/pushwoosh/function/Callback;
    .locals 1

    new-instance v0, Lcom/pushwoosh/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/pushwoosh/c;-><init>(Lcom/pushwoosh/GDPRManager;ZLcom/pushwoosh/function/Callback;)V

    return-object v0
.end method


# virtual methods
.method public process(Lcom/pushwoosh/function/Result;)V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/c;->a:Lcom/pushwoosh/GDPRManager;

    iget-boolean v1, p0, Lcom/pushwoosh/c;->b:Z

    iget-object v2, p0, Lcom/pushwoosh/c;->c:Lcom/pushwoosh/function/Callback;

    invoke-static {v0, v1, v2, p1}, Lcom/pushwoosh/GDPRManager;->a(Lcom/pushwoosh/GDPRManager;ZLcom/pushwoosh/function/Callback;Lcom/pushwoosh/function/Result;)V

    return-void
.end method

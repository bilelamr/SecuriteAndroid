.class final synthetic Lcom/pushwoosh/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/function/Callback;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/b;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/pushwoosh/function/Callback;
    .locals 1

    new-instance v0, Lcom/pushwoosh/b;

    invoke-direct {v0, p0}, Lcom/pushwoosh/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public process(Lcom/pushwoosh/function/Result;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/b;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/pushwoosh/DeepLinkActivity;->a(Landroid/content/Context;Lcom/pushwoosh/function/Result;)V

    return-void
.end method

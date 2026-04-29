.class final synthetic Lcom/pushwoosh/inapp/view/inline/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/function/Callback;


# instance fields
.field private final a:Lcom/pushwoosh/inapp/view/inline/c;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inapp/view/inline/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/inline/d;->a:Lcom/pushwoosh/inapp/view/inline/c;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inapp/view/inline/c;)Lcom/pushwoosh/function/Callback;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/view/inline/d;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inapp/view/inline/d;-><init>(Lcom/pushwoosh/inapp/view/inline/c;)V

    return-object v0
.end method


# virtual methods
.method public process(Lcom/pushwoosh/function/Result;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/d;->a:Lcom/pushwoosh/inapp/view/inline/c;

    invoke-static {v0, p1}, Lcom/pushwoosh/inapp/view/inline/c;->a(Lcom/pushwoosh/inapp/view/inline/c;Lcom/pushwoosh/function/Result;)V

    return-void
.end method

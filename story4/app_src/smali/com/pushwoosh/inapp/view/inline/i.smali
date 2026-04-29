.class final synthetic Lcom/pushwoosh/inapp/view/inline/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/pushwoosh/inapp/view/inline/e$a;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inapp/view/inline/e$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/inline/i;->a:Lcom/pushwoosh/inapp/view/inline/e$a;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inapp/view/inline/e$a;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/view/inline/i;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inapp/view/inline/i;-><init>(Lcom/pushwoosh/inapp/view/inline/e$a;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/i;->a:Lcom/pushwoosh/inapp/view/inline/e$a;

    invoke-static {v0}, Lcom/pushwoosh/inapp/view/inline/e$a;->lambda$resize$0(Lcom/pushwoosh/inapp/view/inline/e$a;)V

    return-void
.end method

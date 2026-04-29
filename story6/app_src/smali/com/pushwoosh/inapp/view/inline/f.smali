.class final synthetic Lcom/pushwoosh/inapp/view/inline/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/pushwoosh/inapp/view/inline/e;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inapp/view/inline/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/inline/f;->a:Lcom/pushwoosh/inapp/view/inline/e;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inapp/view/inline/e;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/view/inline/f;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inapp/view/inline/f;-><init>(Lcom/pushwoosh/inapp/view/inline/e;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/f;->a:Lcom/pushwoosh/inapp/view/inline/e;

    invoke-static {v0}, Lcom/pushwoosh/inapp/view/inline/e;->d(Lcom/pushwoosh/inapp/view/inline/e;)V

    return-void
.end method

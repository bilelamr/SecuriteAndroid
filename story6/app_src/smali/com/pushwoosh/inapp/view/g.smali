.class final synthetic Lcom/pushwoosh/inapp/view/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/pushwoosh/inapp/view/f;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inapp/view/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/g;->a:Lcom/pushwoosh/inapp/view/f;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inapp/view/f;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/view/g;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inapp/view/g;-><init>(Lcom/pushwoosh/inapp/view/f;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/g;->a:Lcom/pushwoosh/inapp/view/f;

    invoke-static {v0}, Lcom/pushwoosh/inapp/view/f;->a(Lcom/pushwoosh/inapp/view/f;)V

    return-void
.end method

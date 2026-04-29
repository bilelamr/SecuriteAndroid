.class final synthetic Lcom/pushwoosh/inapp/view/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/pushwoosh/inapp/view/c;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inapp/view/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/j;->a:Lcom/pushwoosh/inapp/view/c;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inapp/view/c;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/view/j;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inapp/view/j;-><init>(Lcom/pushwoosh/inapp/view/c;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/j;->a:Lcom/pushwoosh/inapp/view/c;

    invoke-interface {v0}, Lcom/pushwoosh/inapp/view/c;->c()V

    return-void
.end method

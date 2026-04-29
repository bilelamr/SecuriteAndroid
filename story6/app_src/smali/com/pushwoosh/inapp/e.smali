.class final synthetic Lcom/pushwoosh/inapp/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inapp/c$a;


# instance fields
.field private final a:Lcom/pushwoosh/inapp/c;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inapp/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/e;->a:Lcom/pushwoosh/inapp/c;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inapp/c;)Lcom/pushwoosh/inapp/c$a;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/e;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inapp/e;-><init>(Lcom/pushwoosh/inapp/c;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/e;->a:Lcom/pushwoosh/inapp/c;

    invoke-static {v0}, Lcom/pushwoosh/inapp/c;->b(Lcom/pushwoosh/inapp/c;)V

    return-void
.end method

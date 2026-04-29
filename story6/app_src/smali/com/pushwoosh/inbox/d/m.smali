.class final synthetic Lcom/pushwoosh/inbox/d/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inbox/d/s;


# instance fields
.field private final a:Lcom/pushwoosh/inbox/e/a;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inbox/e/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/d/m;->a:Lcom/pushwoosh/inbox/e/a;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inbox/e/a;)Lcom/pushwoosh/inbox/d/s;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inbox/d/m;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inbox/d/m;-><init>(Lcom/pushwoosh/inbox/e/a;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/m;->a:Lcom/pushwoosh/inbox/e/a;

    invoke-interface {v0}, Lcom/pushwoosh/inbox/e/a;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

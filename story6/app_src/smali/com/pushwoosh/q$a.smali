.class public Lcom/pushwoosh/q$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/pushwoosh/internal/utils/d;

.field private b:Lcom/pushwoosh/internal/registrar/PushRegistrar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/q$a;)Lcom/pushwoosh/internal/utils/d;
    .locals 0

    iget-object p0, p0, Lcom/pushwoosh/q$a;->a:Lcom/pushwoosh/internal/utils/d;

    return-object p0
.end method

.method static synthetic b(Lcom/pushwoosh/q$a;)Lcom/pushwoosh/internal/registrar/PushRegistrar;
    .locals 0

    iget-object p0, p0, Lcom/pushwoosh/q$a;->b:Lcom/pushwoosh/internal/registrar/PushRegistrar;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/pushwoosh/internal/registrar/PushRegistrar;)Lcom/pushwoosh/q$a;
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/q$a;->b:Lcom/pushwoosh/internal/registrar/PushRegistrar;

    return-object p0
.end method

.method public a(Lcom/pushwoosh/internal/utils/d;)Lcom/pushwoosh/q$a;
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/q$a;->a:Lcom/pushwoosh/internal/utils/d;

    return-object p0
.end method

.method public a()Lcom/pushwoosh/q;
    .locals 2

    new-instance v0, Lcom/pushwoosh/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pushwoosh/q;-><init>(Lcom/pushwoosh/q$a;Lcom/pushwoosh/q$1;)V

    invoke-static {v0}, Lcom/pushwoosh/q;->a(Lcom/pushwoosh/q;)Lcom/pushwoosh/q;

    invoke-static {}, Lcom/pushwoosh/q;->s()Lcom/pushwoosh/q;

    move-result-object v0

    return-object v0
.end method

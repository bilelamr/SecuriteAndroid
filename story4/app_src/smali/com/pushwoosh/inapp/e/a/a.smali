.class public Lcom/pushwoosh/inapp/e/a/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pushwoosh/inapp/e/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pushwoosh/inapp/e/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inapp/e/a/a;->a:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inapp/e/a/a;->b:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pushwoosh/inapp/e/b/b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/pushwoosh/inapp/e/b/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/e/a/a;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/pushwoosh/inapp/e/a/a;->b:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/pushwoosh/inapp/e/a/a;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/e/a/a;

    invoke-direct {v0}, Lcom/pushwoosh/inapp/e/a/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pushwoosh/inapp/e/b/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/a/a;->a:Ljava/util/List;

    return-object v0
.end method

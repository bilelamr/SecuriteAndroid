.class public Lcom/pushwoosh/internal/checker/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/pushwoosh/internal/checker/a;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pushwoosh/internal/checker/Checker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pushwoosh/internal/checker/a;

    invoke-direct {v0}, Lcom/pushwoosh/internal/checker/a;-><init>()V

    sput-object v0, Lcom/pushwoosh/internal/checker/a;->a:Lcom/pushwoosh/internal/checker/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/internal/checker/a;->b:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/pushwoosh/internal/checker/a;
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/checker/a;->a:Lcom/pushwoosh/internal/checker/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/pushwoosh/internal/checker/Checker;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/checker/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Z
    .locals 4

    iget-object v0, p0, Lcom/pushwoosh/internal/checker/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pushwoosh/internal/checker/Checker;

    if-eqz v2, :cond_0

    invoke-interface {v3}, Lcom/pushwoosh/internal/checker/Checker;->check()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    return v2
.end method

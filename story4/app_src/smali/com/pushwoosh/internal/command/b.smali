.class public Lcom/pushwoosh/internal/command/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/command/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pushwoosh/internal/command/a<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pushwoosh/internal/command/CommandParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/internal/command/CommandParams<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/pushwoosh/internal/command/CommandParams;->getParams()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/q;->h()Lcom/pushwoosh/repository/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pushwoosh/repository/s;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v0, p1}, Lcom/pushwoosh/repository/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/facebook/common/internal/Suppliers;
.super Ljava/lang/Object;
.source "Suppliers.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/facebook/common/internal/Suppliers$2;

    invoke-direct {v0}, Lcom/facebook/common/internal/Suppliers$2;-><init>()V

    .line 36
    new-instance v0, Lcom/facebook/common/internal/Suppliers$3;

    invoke-direct {v0}, Lcom/facebook/common/internal/Suppliers$3;-><init>()V

    return-void
.end method

.method public static of(Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/facebook/common/internal/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/facebook/common/internal/Suppliers$1;

    invoke-direct {v0, p0}, Lcom/facebook/common/internal/Suppliers$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

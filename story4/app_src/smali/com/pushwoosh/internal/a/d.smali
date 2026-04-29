.class public Lcom/pushwoosh/internal/a/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/util/Random;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/internal/a/d;->a:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/pushwoosh/internal/a/d;->a:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    return-object v0
.end method

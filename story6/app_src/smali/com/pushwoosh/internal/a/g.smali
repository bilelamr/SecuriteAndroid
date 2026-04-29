.class public Lcom/pushwoosh/internal/a/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/pushwoosh/internal/a/f;

.field private b:Lcom/pushwoosh/internal/a/a;

.field private c:Lcom/pushwoosh/internal/a/c;

.field private d:Lcom/pushwoosh/internal/a/d;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/internal/a/f;Lcom/pushwoosh/internal/a/a;Lcom/pushwoosh/internal/a/c;Lcom/pushwoosh/internal/a/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/internal/a/g;->a:Lcom/pushwoosh/internal/a/f;

    iput-object p2, p0, Lcom/pushwoosh/internal/a/g;->b:Lcom/pushwoosh/internal/a/a;

    iput-object p3, p0, Lcom/pushwoosh/internal/a/g;->c:Lcom/pushwoosh/internal/a/c;

    iput-object p4, p0, Lcom/pushwoosh/internal/a/g;->d:Lcom/pushwoosh/internal/a/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/internal/a/g;->d:Lcom/pushwoosh/internal/a/d;

    invoke-virtual {v0}, Lcom/pushwoosh/internal/a/d;->a()[B

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/internal/a/g;->d:Lcom/pushwoosh/internal/a/d;

    invoke-virtual {v1}, Lcom/pushwoosh/internal/a/d;->a()[B

    move-result-object v1

    iget-object v2, p0, Lcom/pushwoosh/internal/a/g;->a:Lcom/pushwoosh/internal/a/f;

    iget-object v3, p0, Lcom/pushwoosh/internal/a/g;->c:Lcom/pushwoosh/internal/a/c;

    invoke-virtual {v3}, Lcom/pushwoosh/internal/a/c;->a()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v3

    const-string v4, "PKCS1Padding"

    invoke-virtual {v2, v0, v3, v4}, Lcom/pushwoosh/internal/a/f;->a([BLjava/security/PublicKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pushwoosh/internal/a/g;->b:Lcom/pushwoosh/internal/a/a;

    invoke-virtual {v3, v0, v1, p1}, Lcom/pushwoosh/internal/a/a;->a([B[BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.class Lcom/pushwoosh/inapp/e/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/pushwoosh/inapp/f/d;

.field private final b:Lcom/pushwoosh/inapp/f/c;


# direct methods
.method constructor <init>(Lcom/pushwoosh/inapp/f/d;Lcom/pushwoosh/inapp/f/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/e/b;->a:Lcom/pushwoosh/inapp/f/d;

    iput-object p2, p0, Lcom/pushwoosh/inapp/e/b;->b:Lcom/pushwoosh/inapp/f/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/pushwoosh/inapp/e/b/b;)Z
    .locals 6

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/b;->a:Lcom/pushwoosh/inapp/f/d;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pushwoosh/inapp/f/d;->a(Ljava/lang/String;)Lcom/pushwoosh/inapp/e/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/inapp/e/b;->b:Lcom/pushwoosh/inapp/f/c;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/pushwoosh/inapp/f/c;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/e/b/b;->d()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->d()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

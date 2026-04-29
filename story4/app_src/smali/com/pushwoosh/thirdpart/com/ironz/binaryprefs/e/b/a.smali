.class public final Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/b;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "values"

    invoke-direct {p0, p2, p1, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/a;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/a;->a:Ljava/io/File;

    const-string v0, "backup"

    invoke-direct {p0, p2, p1, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/a;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/a;->b:Ljava/io/File;

    const-string v0, "lock"

    invoke-direct {p0, p2, p1, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/a;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/a;->c:Ljava/io/File;

    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/a;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d/a;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const-string p1, "Can\'t create preferences directory in %s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d/a;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-object p1
.end method

.method private b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "preferences"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/a;->a:Ljava/io/File;

    return-object v0
.end method

.method public b()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/a;->b:Ljava/io/File;

    return-object v0
.end method

.method public c()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/a;->c:Ljava/io/File;

    return-object v0
.end method

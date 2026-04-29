.class public Lcom/pushwoosh/inapp/view/b/a/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/inapp/view/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/pushwoosh/inapp/e/b/b;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/pushwoosh/inapp/view/b/a/a;

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/b/a/b$a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pushwoosh/inapp/view/b/a/b$a;->c:Z

    sget-object v0, Lcom/pushwoosh/inapp/view/b/a/a;->a:Lcom/pushwoosh/inapp/view/b/a/a;

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/b/a/b$a;->d:Lcom/pushwoosh/inapp/view/b/a/a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pushwoosh/inapp/view/b/a/b$a;->e:J

    return-void
.end method


# virtual methods
.method public a(J)Lcom/pushwoosh/inapp/view/b/a/b$a;
    .locals 0

    iput-wide p1, p0, Lcom/pushwoosh/inapp/view/b/a/b$a;->e:J

    return-object p0
.end method

.method public a(Lcom/pushwoosh/inapp/e/b/b;)Lcom/pushwoosh/inapp/view/b/a/b$a;
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/b/a/b$a;->a:Lcom/pushwoosh/inapp/e/b/b;

    return-object p0
.end method

.method a(Lcom/pushwoosh/inapp/view/b/a/a;)Lcom/pushwoosh/inapp/view/b/a/b$a;
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/b/a/b$a;->d:Lcom/pushwoosh/inapp/view/b/a/a;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/pushwoosh/inapp/view/b/a/b$a;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/pushwoosh/inapp/e/b/b;->a(Ljava/lang/String;)Lcom/pushwoosh/inapp/e/b/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pushwoosh/inapp/view/b/a/b$a;->a(Lcom/pushwoosh/inapp/e/b/b;)Lcom/pushwoosh/inapp/view/b/a/b$a;

    move-result-object v0

    sget-object v1, Lcom/pushwoosh/inapp/view/b/a/a;->b:Lcom/pushwoosh/inapp/view/b/a/a;

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inapp/view/b/a/b$a;->a(Lcom/pushwoosh/inapp/view/b/a/a;)Lcom/pushwoosh/inapp/view/b/a/b$a;

    move-result-object p1
    :try_end_0
    .catch Lcom/pushwoosh/inapp/b/a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t parse richMedia: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public a(Z)Lcom/pushwoosh/inapp/view/b/a/b$a;
    .locals 0

    iput-boolean p1, p0, Lcom/pushwoosh/inapp/view/b/a/b$a;->c:Z

    return-object p0
.end method

.method public a()Lcom/pushwoosh/inapp/view/b/a/b;
    .locals 9

    new-instance v8, Lcom/pushwoosh/inapp/view/b/a/b;

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/b/a/b$a;->a:Lcom/pushwoosh/inapp/e/b/b;

    iget-object v2, p0, Lcom/pushwoosh/inapp/view/b/a/b$a;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/pushwoosh/inapp/view/b/a/b$a;->c:Z

    iget-object v4, p0, Lcom/pushwoosh/inapp/view/b/a/b$a;->d:Lcom/pushwoosh/inapp/view/b/a/a;

    iget-wide v5, p0, Lcom/pushwoosh/inapp/view/b/a/b$a;->e:J

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/pushwoosh/inapp/view/b/a/b;-><init>(Lcom/pushwoosh/inapp/e/b/b;Ljava/lang/String;ZLcom/pushwoosh/inapp/view/b/a/a;JLcom/pushwoosh/inapp/view/b/a/b$1;)V

    return-object v8
.end method

.method public b(Ljava/lang/String;)Lcom/pushwoosh/inapp/view/b/a/b$a;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/pushwoosh/inapp/e/b/b;

    invoke-direct {v0, p1}, Lcom/pushwoosh/inapp/e/b/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pushwoosh/inapp/view/b/a/b$a;->a(Lcom/pushwoosh/inapp/e/b/b;)Lcom/pushwoosh/inapp/view/b/a/b$a;

    move-result-object p1

    sget-object v0, Lcom/pushwoosh/inapp/view/b/a/a;->c:Lcom/pushwoosh/inapp/view/b/a/a;

    invoke-virtual {p1, v0}, Lcom/pushwoosh/inapp/view/b/a/b$a;->a(Lcom/pushwoosh/inapp/view/b/a/a;)Lcom/pushwoosh/inapp/view/b/a/b$a;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lcom/pushwoosh/inapp/view/b/a/b$a;
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/b/a/b$a;->b:Ljava/lang/String;

    return-object p0
.end method

.class public Lcom/pushwoosh/repository/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/pushwoosh/repository/b;->c:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/repository/b;->e:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pushwoosh/repository/b;->a:I

    iput p2, p0, Lcom/pushwoosh/repository/b;->b:I

    iput-object p3, p0, Lcom/pushwoosh/repository/b;->c:Ljava/lang/String;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/repository/b;->e:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;JLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pushwoosh/repository/b;->a:I

    iput p2, p0, Lcom/pushwoosh/repository/b;->b:I

    iput-object p3, p0, Lcom/pushwoosh/repository/b;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/pushwoosh/repository/b;->d:J

    iput-object p6, p0, Lcom/pushwoosh/repository/b;->e:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(IJLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pushwoosh/repository/b;->a:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/pushwoosh/repository/b;->b:I

    const-string p1, ""

    iput-object p1, p0, Lcom/pushwoosh/repository/b;->c:Ljava/lang/String;

    iput-wide p2, p0, Lcom/pushwoosh/repository/b;->d:J

    iput-object p4, p0, Lcom/pushwoosh/repository/b;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/pushwoosh/repository/b;->d:J

    return-wide v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/b;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/pushwoosh/repository/b;->a:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/pushwoosh/repository/b;->b:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    const-class v2, Lcom/pushwoosh/repository/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lcom/pushwoosh/repository/b;

    iget v2, p0, Lcom/pushwoosh/repository/b;->a:I

    iget v3, p1, Lcom/pushwoosh/repository/b;->a:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lcom/pushwoosh/repository/b;->b:I

    iget v3, p1, Lcom/pushwoosh/repository/b;->b:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Lcom/pushwoosh/repository/b;->d:J

    iget-wide v4, p1, Lcom/pushwoosh/repository/b;->d:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lcom/pushwoosh/repository/b;->c:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/pushwoosh/repository/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/pushwoosh/repository/b;->c:Ljava/lang/String;

    if-eqz v2, :cond_6

    :goto_0
    return v1

    :cond_6
    iget-object v2, p0, Lcom/pushwoosh/repository/b;->e:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/pushwoosh/repository/b;->e:Landroid/os/Bundle;

    if-eqz v2, :cond_7

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_7
    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_9
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 7

    iget v0, p0, Lcom/pushwoosh/repository/b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/pushwoosh/repository/b;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/pushwoosh/repository/b;->c:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/pushwoosh/repository/b;->d:J

    const/16 v1, 0x20

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/pushwoosh/repository/b;->e:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

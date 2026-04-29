.class public Lcom/pushwoosh/inapp/e/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/pushwoosh/inapp/e/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:Lcom/pushwoosh/inapp/e/b/a;

.field private final f:Z

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 12

    sget-object v6, Lcom/pushwoosh/inapp/e/b/a;->a:Lcom/pushwoosh/inapp/e/b/a;

    const-string v1, ""

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v11}, Lcom/pushwoosh/inapp/e/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/pushwoosh/inapp/e/b/a;Ljava/util/Map;ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/pushwoosh/inapp/e/b/a;Ljava/util/Map;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/pushwoosh/inapp/e/b/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p10, :cond_0

    invoke-virtual {p10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p8, 0x1

    :cond_0
    iput-boolean p8, p0, Lcom/pushwoosh/inapp/e/b/b;->f:Z

    iput-object p1, p0, Lcom/pushwoosh/inapp/e/b/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/pushwoosh/inapp/e/b/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/pushwoosh/inapp/e/b/b;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/pushwoosh/inapp/e/b/b;->d:J

    iput-object p6, p0, Lcom/pushwoosh/inapp/e/b/b;->e:Lcom/pushwoosh/inapp/e/b/a;

    invoke-static {p7}, Lcom/pushwoosh/inapp/e/b/c;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/inapp/e/b/b;->j:Ljava/util/Map;

    iput p9, p0, Lcom/pushwoosh/inapp/e/b/b;->g:I

    iput-object p10, p0, Lcom/pushwoosh/inapp/e/b/b;->h:Ljava/lang/String;

    iput-object p11, p0, Lcom/pushwoosh/inapp/e/b/b;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 12

    sget-object v6, Lcom/pushwoosh/inapp/e/b/a;->a:Lcom/pushwoosh/inapp/e/b/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v8, p2

    invoke-direct/range {v0 .. v11}, Lcom/pushwoosh/inapp/e/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/pushwoosh/inapp/e/b/a;Ljava/util/Map;ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "hash"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "updated"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v0, "layout"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pushwoosh/inapp/e/b/a;->a(Ljava/lang/String;)Lcom/pushwoosh/inapp/e/b/a;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    const/4 v0, 0x0

    const-string v1, "required"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v1, "priority"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v0, "businessCase"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "gdpr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/pushwoosh/inapp/e/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/pushwoosh/inapp/e/b/a;Ljava/util/Map;ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/pushwoosh/inapp/e/b/b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pushwoosh/inapp/b/a;
        }
    .end annotation

    invoke-static {p0}, Lcom/pushwoosh/inapp/e/b/c;->a(Ljava/lang/String;)Lcom/pushwoosh/inapp/e/b/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/pushwoosh/inapp/e/b/b;)I
    .locals 3

    iget-boolean v0, p0, Lcom/pushwoosh/inapp/e/b/b;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/pushwoosh/inapp/e/b/b;->f:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/pushwoosh/inapp/e/b/b;->f:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/pushwoosh/inapp/e/b/b;->f:Z

    if-nez v0, :cond_4

    :cond_1
    iget v0, p1, Lcom/pushwoosh/inapp/e/b/b;->g:I

    iget v2, p0, Lcom/pushwoosh/inapp/e/b/b;->g:I

    sub-int/2addr v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/b/b;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    :cond_3
    :goto_0
    return v0

    :cond_4
    iget-boolean p1, p0, Lcom/pushwoosh/inapp/e/b/b;->f:Z

    if-eqz p1, :cond_5

    const/4 p1, -0x1

    return p1

    :cond_5
    return v1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/pushwoosh/inapp/e/b/c;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/inapp/e/b/b;->j:Ljava/util/Map;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/b/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/pushwoosh/inapp/e/b/b;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inapp/e/b/b;->a(Lcom/pushwoosh/inapp/e/b/b;)I

    move-result p1

    return p1
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/pushwoosh/inapp/e/b/b;->d:J

    return-wide v0
.end method

.method public e()Lcom/pushwoosh/inapp/e/b/a;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/b/b;->e:Lcom/pushwoosh/inapp/e/b/a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_e

    const-class v2, Lcom/pushwoosh/inapp/e/b/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_5

    :cond_1
    check-cast p1, Lcom/pushwoosh/inapp/e/b/b;

    iget-wide v2, p0, Lcom/pushwoosh/inapp/e/b/b;->d:J

    iget-wide v4, p1, Lcom/pushwoosh/inapp/e/b/b;->d:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lcom/pushwoosh/inapp/e/b/b;->f:Z

    iget-boolean v3, p1, Lcom/pushwoosh/inapp/e/b/b;->f:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lcom/pushwoosh/inapp/e/b/b;->g:I

    iget v3, p1, Lcom/pushwoosh/inapp/e/b/b;->g:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lcom/pushwoosh/inapp/e/b/b;->a:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/pushwoosh/inapp/e/b/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/pushwoosh/inapp/e/b/b;->a:Ljava/lang/String;

    if-eqz v2, :cond_6

    :goto_0
    return v1

    :cond_6
    iget-object v2, p0, Lcom/pushwoosh/inapp/e/b/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lcom/pushwoosh/inapp/e/b/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_7
    iget-object v2, p1, Lcom/pushwoosh/inapp/e/b/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_1
    return v1

    :cond_8
    iget-object v2, p0, Lcom/pushwoosh/inapp/e/b/b;->h:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v3, p1, Lcom/pushwoosh/inapp/e/b/b;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_2

    :cond_9
    iget-object v2, p1, Lcom/pushwoosh/inapp/e/b/b;->h:Ljava/lang/String;

    if-eqz v2, :cond_a

    :goto_2
    return v1

    :cond_a
    iget-object v2, p0, Lcom/pushwoosh/inapp/e/b/b;->i:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v3, p1, Lcom/pushwoosh/inapp/e/b/b;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_3

    :cond_b
    iget-object v2, p1, Lcom/pushwoosh/inapp/e/b/b;->i:Ljava/lang/String;

    if-eqz v2, :cond_c

    :goto_3
    return v1

    :cond_c
    iget-object v2, p0, Lcom/pushwoosh/inapp/e/b/b;->e:Lcom/pushwoosh/inapp/e/b/a;

    iget-object p1, p1, Lcom/pushwoosh/inapp/e/b/b;->e:Lcom/pushwoosh/inapp/e/b/a;

    if-ne v2, p1, :cond_d

    goto :goto_4

    :cond_d
    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_e
    :goto_5
    return v1
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pushwoosh/inapp/e/b/b;->f:Z

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/pushwoosh/inapp/e/b/b;->g:I

    return v0
.end method

.method public h()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/pushwoosh/inapp/e/b/b;->j:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/b/b;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/pushwoosh/inapp/e/b/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/pushwoosh/inapp/e/b/b;->i:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/pushwoosh/inapp/e/b/b;->d:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/pushwoosh/inapp/e/b/b;->e:Lcom/pushwoosh/inapp/e/b/a;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/pushwoosh/inapp/e/b/b;->f:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/pushwoosh/inapp/e/b/b;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/b/b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/b/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/b/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public l()Z
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/b/b;->a:Ljava/lang/String;

    const-string v1, "r-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.class public final Lcom/pushwoosh/tags/Tags;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/tags/Tags$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendList(Ljava/lang/String;Ljava/util/List;)Lcom/pushwoosh/tags/TagsBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/pushwoosh/tags/TagsBundle;"
        }
    .end annotation

    new-instance v0, Lcom/pushwoosh/tags/TagsBundle$Builder;

    invoke-direct {v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/pushwoosh/tags/TagsBundle$Builder;->appendList(Ljava/lang/String;Ljava/util/List;)Lcom/pushwoosh/tags/TagsBundle$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/pushwoosh/tags/TagsBundle$Builder;->build()Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p0

    return-object p0
.end method

.method public static booleanTag(Ljava/lang/String;Z)Lcom/pushwoosh/tags/TagsBundle;
    .locals 1

    new-instance v0, Lcom/pushwoosh/tags/TagsBundle$Builder;

    invoke-direct {v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/pushwoosh/tags/TagsBundle$Builder;->putBoolean(Ljava/lang/String;Z)Lcom/pushwoosh/tags/TagsBundle$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/pushwoosh/tags/TagsBundle$Builder;->build()Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p0

    return-object p0
.end method

.method public static dateTag(Ljava/lang/String;Ljava/util/Date;)Lcom/pushwoosh/tags/TagsBundle;
    .locals 1

    new-instance v0, Lcom/pushwoosh/tags/TagsBundle$Builder;

    invoke-direct {v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/pushwoosh/tags/TagsBundle$Builder;->putDate(Ljava/lang/String;Ljava/util/Date;)Lcom/pushwoosh/tags/TagsBundle$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/pushwoosh/tags/TagsBundle$Builder;->build()Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lcom/pushwoosh/tags/TagsBundle;
    .locals 1

    invoke-static {}, Lcom/pushwoosh/tags/Tags$a;->a()Lcom/pushwoosh/tags/TagsBundle;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/pushwoosh/tags/TagsBundle;
    .locals 1

    new-instance v0, Lcom/pushwoosh/tags/TagsBundle$Builder;

    invoke-direct {v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/pushwoosh/tags/TagsBundle$Builder;->putAll(Lorg/json/JSONObject;)Lcom/pushwoosh/tags/TagsBundle$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/pushwoosh/tags/TagsBundle$Builder;->build()Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p0

    return-object p0
.end method

.method public static incrementInt(Ljava/lang/String;I)Lcom/pushwoosh/tags/TagsBundle;
    .locals 1

    new-instance v0, Lcom/pushwoosh/tags/TagsBundle$Builder;

    invoke-direct {v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/pushwoosh/tags/TagsBundle$Builder;->incrementInt(Ljava/lang/String;I)Lcom/pushwoosh/tags/TagsBundle$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/pushwoosh/tags/TagsBundle$Builder;->build()Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p0

    return-object p0
.end method

.method public static intTag(Ljava/lang/String;I)Lcom/pushwoosh/tags/TagsBundle;
    .locals 1

    new-instance v0, Lcom/pushwoosh/tags/TagsBundle$Builder;

    invoke-direct {v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/pushwoosh/tags/TagsBundle$Builder;->putInt(Ljava/lang/String;I)Lcom/pushwoosh/tags/TagsBundle$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/pushwoosh/tags/TagsBundle$Builder;->build()Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p0

    return-object p0
.end method

.method public static listTag(Ljava/lang/String;Ljava/util/List;)Lcom/pushwoosh/tags/TagsBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/pushwoosh/tags/TagsBundle;"
        }
    .end annotation

    new-instance v0, Lcom/pushwoosh/tags/TagsBundle$Builder;

    invoke-direct {v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/pushwoosh/tags/TagsBundle$Builder;->putList(Ljava/lang/String;Ljava/util/List;)Lcom/pushwoosh/tags/TagsBundle$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/pushwoosh/tags/TagsBundle$Builder;->build()Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p0

    return-object p0
.end method

.method public static longTag(Ljava/lang/String;J)Lcom/pushwoosh/tags/TagsBundle;
    .locals 1

    new-instance v0, Lcom/pushwoosh/tags/TagsBundle$Builder;

    invoke-direct {v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/pushwoosh/tags/TagsBundle$Builder;->putLong(Ljava/lang/String;J)Lcom/pushwoosh/tags/TagsBundle$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/pushwoosh/tags/TagsBundle$Builder;->build()Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p0

    return-object p0
.end method

.method public static removeTag(Ljava/lang/String;)Lcom/pushwoosh/tags/TagsBundle;
    .locals 1

    new-instance v0, Lcom/pushwoosh/tags/TagsBundle$Builder;

    invoke-direct {v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/pushwoosh/tags/TagsBundle$Builder;->remove(Ljava/lang/String;)Lcom/pushwoosh/tags/TagsBundle$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/pushwoosh/tags/TagsBundle$Builder;->build()Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p0

    return-object p0
.end method

.method public static stringTag(Ljava/lang/String;Ljava/lang/String;)Lcom/pushwoosh/tags/TagsBundle;
    .locals 1

    new-instance v0, Lcom/pushwoosh/tags/TagsBundle$Builder;

    invoke-direct {v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/pushwoosh/tags/TagsBundle$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/pushwoosh/tags/TagsBundle$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/pushwoosh/tags/TagsBundle$Builder;->build()Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p0

    return-object p0
.end method

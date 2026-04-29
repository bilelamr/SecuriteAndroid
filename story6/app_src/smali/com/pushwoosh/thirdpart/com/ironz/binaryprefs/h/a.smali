.class public final Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/h/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/h/a;->a:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/content/SharedPreferences;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e;->a()Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;

    move-result-object p2

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, p2, v2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/h/a;->a(Ljava/util/Map;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return-void
.end method

.method private a(Ljava/util/Map;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, p3, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;

    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    invoke-interface {p2, p3, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;->a(Ljava/lang/String;Ljava/util/Set;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, p3, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;->a(Ljava/lang/String;I)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;

    :cond_2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, p3, v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;->a(Ljava/lang/String;J)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;

    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p2, p3, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;->a(Ljava/lang/String;F)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;

    :cond_4
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p2, p3, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;->a(Ljava/lang/String;Z)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f;

    :cond_5
    return-void
.end method


# virtual methods
.method public a(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e;)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/h/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-direct {p0, v1, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/h/a;->a(Landroid/content/SharedPreferences;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

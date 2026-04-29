.class public Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/preference/PreferenceValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/pushwoosh/internal/preference/PreferenceValue;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->b:Ljava/lang/String;

    iput p3, p0, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->d:I

    const/4 p3, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    if-nez p3, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iput-object p2, p0, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->c:Ljava/util/ArrayList;

    goto :goto_2

    :cond_1
    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p4, :cond_2

    new-array p4, v0, [Ljava/lang/Class;

    const-class v0, Ljava/util/ArrayList;

    aput-object v0, p4, p2

    invoke-static {p3, p4}, Lcom/pushwoosh/internal/utils/h;->a(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/util/ArrayList;

    aput-object v2, v1, p2

    aput-object p4, v1, v0

    invoke-static {p3, v1}, Lcom/pushwoosh/internal/utils/h;->a(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-static {p2}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->c:Ljava/util/ArrayList;

    :goto_2
    iput-object p1, p0, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method private a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "Incorrect state of the app preferences is null"

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->c:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/pushwoosh/internal/utils/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public add(Ljava/io/Serializable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->d:I

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0}, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public get()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->c:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public remove(Ljava/io/Serializable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public replaceAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

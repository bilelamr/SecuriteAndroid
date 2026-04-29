.class Lcom/pushwoosh/internal/platform/utils/a$d$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/internal/platform/utils/a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pushwoosh/internal/platform/utils/a$d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/internal/platform/utils/a$d$b;->a:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pushwoosh/internal/platform/utils/a$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/utils/a$d$b;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->deviceId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->set(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/internal/platform/utils/a$d$b;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/pushwoosh/internal/platform/utils/a$d$b;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pushwoosh/internal/platform/utils/a$d$a;

    invoke-interface {v1, p1}, Lcom/pushwoosh/internal/platform/utils/a$d$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/pushwoosh/internal/platform/utils/a$d;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/pushwoosh/internal/platform/utils/a$d$a;)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/internal/platform/utils/a$d$b;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/pushwoosh/internal/platform/utils/a$d$b;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/pushwoosh/internal/platform/utils/a$d$b;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/internal/platform/utils/a$d$b;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pushwoosh/internal/platform/utils/a$d$b;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/internal/platform/utils/a$d$b;->a(Ljava/lang/String;)V

    return-void
.end method

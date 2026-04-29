.class Lcom/pushwoosh/internal/platform/utils/a$d;
.super Lcom/pushwoosh/internal/platform/utils/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/internal/platform/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/internal/platform/utils/a$d$a;,
        Lcom/pushwoosh/internal/platform/utils/a$d$b;
    }
.end annotation


# instance fields
.field private c:Ljava/util/concurrent/CountDownLatch;

.field private d:Lcom/pushwoosh/internal/platform/utils/a$d$b;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/utils/a$f;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/pushwoosh/internal/platform/utils/a$d;->c:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pushwoosh/internal/platform/utils/a$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/utils/a$d;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->f()Lcom/pushwoosh/internal/utils/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/pushwoosh/internal/utils/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ProviderInfo;

    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method static synthetic a(Lcom/pushwoosh/internal/platform/utils/a$d;)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/internal/platform/utils/a$d;->d:Lcom/pushwoosh/internal/platform/utils/a$d$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/pushwoosh/internal/platform/utils/a$d;->d:Lcom/pushwoosh/internal/platform/utils/a$d$b;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/internal/platform/utils/a$d;Landroid/os/Handler;Lcom/pushwoosh/internal/platform/utils/a$f$a;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-interface {p2, p3}, Lcom/pushwoosh/internal/platform/utils/a$f$a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/pushwoosh/internal/platform/utils/a$d;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iput-object v0, p0, Lcom/pushwoosh/internal/platform/utils/a$d;->d:Lcom/pushwoosh/internal/platform/utils/a$d$b;

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/pushwoosh/internal/platform/utils/a$d;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Z
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/internal/platform/utils/a$d;->d:Lcom/pushwoosh/internal/platform/utils/a$d$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static e()Ljava/lang/String;
    .locals 15

    const-string v0, "hwid"

    const-string v1, "."

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v5}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/pushwoosh/internal/platform/utils/a$d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v7, Lcom/pushwoosh/PushwooshSharedDataProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ProviderInfo;

    iget-object v8, v7, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v10, Lcom/pushwoosh/PushwooshSharedDataProvider;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v7, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pushwoosh/internal/platform/utils/GeneralUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    if-lez v8, :cond_3

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v9, :cond_3

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v8

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v8

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_4
    :goto_1
    return-object v2

    :catch_1
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_3
    return-object v2
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/utils/a$d;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/pushwoosh/internal/platform/utils/a$d;->a(Lcom/pushwoosh/internal/platform/utils/a$f$a;)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/pushwoosh/internal/platform/utils/a$d;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->deviceId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v2
.end method

.method protected a(Lcom/pushwoosh/internal/platform/utils/a$f$a;)V
    .locals 5

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/utils/a$d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/internal/platform/utils/a$d;->d:Lcom/pushwoosh/internal/platform/utils/a$d$b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/pushwoosh/internal/platform/utils/b;->a(Lcom/pushwoosh/internal/platform/utils/a$f$a;)Lcom/pushwoosh/internal/platform/utils/a$d$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/pushwoosh/internal/platform/utils/a$d$b;->a(Lcom/pushwoosh/internal/platform/utils/a$d$a;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/pushwoosh/internal/platform/utils/c;->a(Lcom/pushwoosh/internal/platform/utils/a$d;Landroid/os/Handler;Lcom/pushwoosh/internal/platform/utils/a$f$a;)Lcom/pushwoosh/internal/platform/utils/a$d$a;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pushwoosh/repository/RegistrationPrefs;->deviceId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p1, v2}, Lcom/pushwoosh/internal/platform/utils/a$d$a;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v2, Lcom/pushwoosh/internal/platform/utils/a$d$b;

    invoke-direct {v2, v1}, Lcom/pushwoosh/internal/platform/utils/a$d$b;-><init>(Lcom/pushwoosh/internal/platform/utils/a$1;)V

    iput-object v2, p0, Lcom/pushwoosh/internal/platform/utils/a$d;->d:Lcom/pushwoosh/internal/platform/utils/a$d$b;

    iget-object v2, p0, Lcom/pushwoosh/internal/platform/utils/a$d;->d:Lcom/pushwoosh/internal/platform/utils/a$d$b;

    invoke-virtual {v2, p1}, Lcom/pushwoosh/internal/platform/utils/a$d$b;->a(Lcom/pushwoosh/internal/platform/utils/a$d$a;)V

    invoke-static {p0}, Lcom/pushwoosh/internal/platform/utils/d;->a(Lcom/pushwoosh/internal/platform/utils/a$d;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/pushwoosh/internal/platform/utils/a$d;->d:Lcom/pushwoosh/internal/platform/utils/a$d$b;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-interface {p1, v1}, Lcom/pushwoosh/internal/platform/utils/a$d$a;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

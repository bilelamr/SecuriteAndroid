.class Lcom/pushwoosh/internal/crash/d;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()I
    .locals 7

    invoke-static {}, Lcom/pushwoosh/internal/crash/d;->e()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    array-length v3, v0

    if-lez v3, :cond_3

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/pushwoosh/internal/crash/d;->d()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "SdkCrashAnalytics"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "ConfirmedFilenames"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-eqz v3, :cond_4

    const/4 v4, 0x2

    array-length v5, v0

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v6, v0, v2

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    return v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/pushwoosh/internal/crash/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/pushwoosh/internal/crash/f;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/pushwoosh/internal/crash/f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/pushwoosh/internal/crash/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/pushwoosh/internal/crash/f;Z)V

    invoke-static {p3}, Lcom/pushwoosh/internal/crash/d;->a(Lcom/pushwoosh/internal/crash/f;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/pushwoosh/internal/crash/f;Z)V
    .locals 5

    if-eqz p0, :cond_3

    sget-wide v0, Lcom/pushwoosh/internal/crash/d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/pushwoosh/internal/crash/d;->d:J

    :cond_0
    sput-object p1, Lcom/pushwoosh/internal/crash/d;->c:Ljava/lang/String;

    invoke-static {p2}, Lcom/pushwoosh/internal/crash/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/pushwoosh/internal/crash/d;->b:Ljava/lang/String;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/pushwoosh/internal/crash/d;->a:Ljava/lang/ref/WeakReference;

    sget-object p0, Lcom/pushwoosh/internal/crash/d;->b:Ljava/lang/String;

    if-nez p0, :cond_1

    const-string p0, ""

    sput-object p0, Lcom/pushwoosh/internal/crash/d;->b:Ljava/lang/String;

    :cond_1
    if-eqz p4, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/pushwoosh/internal/crash/f;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-static {p3, p0}, Lcom/pushwoosh/internal/crash/d;->d(Lcom/pushwoosh/internal/crash/f;Z)V

    :cond_3
    return-void
.end method

.method public static a(Lcom/pushwoosh/internal/crash/f;)V
    .locals 2

    new-instance v0, Lcom/pushwoosh/internal/crash/d$1;

    invoke-direct {v0, p0}, Lcom/pushwoosh/internal/crash/d$1;-><init>(Lcom/pushwoosh/internal/crash/f;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/internal/crash/f;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/crash/d;->c(Lcom/pushwoosh/internal/crash/f;Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pushwoosh/internal/crash/d;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "SdkCrashAnalytics"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RETRY_COUNT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/pushwoosh/internal/crash/d;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const-string v2, "SdkCrashAnalytics"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RETRY_COUNT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lt v0, p1, :cond_1

    invoke-static {p0}, Lcom/pushwoosh/internal/crash/d;->b(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/pushwoosh/internal/crash/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2, p0, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/pushwoosh/internal/crash/f;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/crash/d;->b(Ljava/lang/String;Lcom/pushwoosh/internal/crash/f;)V

    return-void
.end method

.method static synthetic a([Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/pushwoosh/internal/crash/d;->b([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/pushwoosh/internal/crash/h;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/pushwoosh/internal/crash/f;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/crash/d;->d(Lcom/pushwoosh/internal/crash/f;Z)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pushwoosh/internal/crash/d;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    invoke-static {}, Lcom/pushwoosh/internal/crash/h;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".user"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    invoke-static {}, Lcom/pushwoosh/internal/crash/h;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".contact"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    invoke-static {}, Lcom/pushwoosh/internal/crash/h;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".description"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/pushwoosh/internal/crash/f;)V
    .locals 9

    const-string v0, "Transmission succeeded"

    const-string v1, "Transmission failed, will retry on next register() call"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/pushwoosh/internal/crash/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transmitting crash data: \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pushwoosh/internal/crash/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/pushwoosh/internal/crash/h;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".description"

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pushwoosh/internal/crash/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "raw"

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "description"

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "version"

    const-string v6, "5.20.0"

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/pushwoosh/internal/crash/i;

    invoke-static {}, Lcom/pushwoosh/internal/crash/d;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/pushwoosh/internal/crash/i;-><init>(Ljava/lang/String;)V

    const-string v6, "POST"

    invoke-virtual {v5, v6}, Lcom/pushwoosh/internal/crash/i;->a(Ljava/lang/String;)Lcom/pushwoosh/internal/crash/i;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/pushwoosh/internal/crash/i;->a(Ljava/util/Map;)Lcom/pushwoosh/internal/crash/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pushwoosh/internal/crash/i;->a()Ljava/net/HttpURLConnection;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xca

    if-eq v5, v6, :cond_0

    const/16 v6, 0xc9

    if-ne v5, v6, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/pushwoosh/internal/crash/a;->b(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/pushwoosh/internal/crash/d;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    :goto_0
    invoke-virtual {p1}, Lcom/pushwoosh/internal/crash/f;->g()V

    invoke-static {p0}, Lcom/pushwoosh/internal/crash/d;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lcom/pushwoosh/internal/crash/a;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    :goto_1
    invoke-virtual {p1}, Lcom/pushwoosh/internal/crash/f;->h()V

    invoke-virtual {p1}, Lcom/pushwoosh/internal/crash/f;->i()I

    move-result p1

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/crash/d;->a(Ljava/lang/String;I)V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    const-string v5, "Failed to transmit crash data"

    invoke-static {v5, v2}, Lcom/pushwoosh/internal/crash/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0}, Lcom/pushwoosh/internal/crash/a;->b(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/pushwoosh/internal/crash/d;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_6
    invoke-static {v1}, Lcom/pushwoosh/internal/crash/a;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    return-void

    :goto_3
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v0}, Lcom/pushwoosh/internal/crash/a;->b(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/pushwoosh/internal/crash/d;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/pushwoosh/internal/crash/f;->g()V

    invoke-static {p0}, Lcom/pushwoosh/internal/crash/d;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    invoke-static {v1}, Lcom/pushwoosh/internal/crash/a;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/pushwoosh/internal/crash/f;->h()V

    invoke-virtual {p1}, Lcom/pushwoosh/internal/crash/f;->i()I

    move-result p1

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/crash/d;->a(Ljava/lang/String;I)V

    :cond_a
    :goto_4
    goto :goto_6

    :goto_5
    throw v2

    :goto_6
    goto :goto_5
.end method

.method private static b([Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pushwoosh/internal/crash/d;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "SdkCrashAnalytics"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ConfirmedFilenames"

    const-string v2, ","

    invoke-static {v2, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/pushwoosh/internal/crash/d;->e()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/pushwoosh/internal/crash/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "api/2/apps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pushwoosh/internal/crash/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/crashes/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pushwoosh/internal/crash/d;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_4

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read content of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/pushwoosh/internal/crash/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_3
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_3
    throw p0

    :cond_4
    :goto_4
    return-object v1
.end method

.method private static c(Lcom/pushwoosh/internal/crash/f;Z)V
    .locals 1

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/crash/d;->d(Lcom/pushwoosh/internal/crash/f;Z)V

    invoke-static {}, Lcom/pushwoosh/internal/platform/utils/GeneralUtils;->isNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/pushwoosh/internal/crash/f;->h()V

    :cond_0
    new-instance v0, Lcom/pushwoosh/internal/crash/d$2;

    invoke-direct {v0, p1, p0}, Lcom/pushwoosh/internal/crash/d$2;-><init>(ZLcom/pushwoosh/internal/crash/f;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static d()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/crash/d;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static d(Lcom/pushwoosh/internal/crash/f;Z)V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current handler class = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pushwoosh/internal/crash/a;->b(Ljava/lang/String;)V

    :cond_0
    instance-of v1, v0, Lcom/pushwoosh/internal/crash/g;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/pushwoosh/internal/crash/g;

    invoke-virtual {v0, p0}, Lcom/pushwoosh/internal/crash/g;->a(Lcom/pushwoosh/internal/crash/f;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/pushwoosh/internal/crash/g;

    invoke-direct {v1, v0, p0, p1}, Lcom/pushwoosh/internal/crash/g;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/pushwoosh/internal/crash/f;Z)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :goto_0
    return-void
.end method

.method private static e()[Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pushwoosh/internal/crash/d;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/pushwoosh/internal/crash/h;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Looking for exceptions in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pushwoosh/internal/crash/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/pushwoosh/internal/crash/e;->a()Ljava/io/FilenameFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "Can\'t search for exception as file path is null."

    invoke-static {v0}, Lcom/pushwoosh/internal/crash/a;->b(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

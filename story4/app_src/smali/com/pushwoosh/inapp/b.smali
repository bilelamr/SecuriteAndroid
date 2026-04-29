.class public Lcom/pushwoosh/inapp/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/pushwoosh/inapp/f/c;

.field private static final b:Lcom/pushwoosh/inapp/e/a/c;

.field private static final c:Lcom/pushwoosh/inapp/c/b;

.field private static volatile d:Lcom/pushwoosh/inapp/f/d;

.field private static final e:Ljava/lang/Object;

.field private static volatile f:Lcom/pushwoosh/inapp/e/c;

.field private static final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/pushwoosh/inapp/f/a;

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pushwoosh/inapp/f/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pushwoosh/inapp/b;->a:Lcom/pushwoosh/inapp/f/c;

    new-instance v0, Lcom/pushwoosh/inapp/e/a/c;

    invoke-static {}, Lcom/pushwoosh/inapp/b;->a()Lcom/pushwoosh/inapp/f/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pushwoosh/inapp/e/a/c;-><init>(Lcom/pushwoosh/inapp/f/c;)V

    sput-object v0, Lcom/pushwoosh/inapp/b;->b:Lcom/pushwoosh/inapp/e/a/c;

    new-instance v0, Lcom/pushwoosh/inapp/c/b;

    invoke-static {}, Lcom/pushwoosh/inapp/b;->a()Lcom/pushwoosh/inapp/f/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pushwoosh/inapp/c/b;-><init>(Lcom/pushwoosh/inapp/f/c;)V

    sput-object v0, Lcom/pushwoosh/inapp/b;->c:Lcom/pushwoosh/inapp/c/b;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/pushwoosh/inapp/b;->e:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/pushwoosh/inapp/b;->g:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/pushwoosh/inapp/f/c;
    .locals 1

    sget-object v0, Lcom/pushwoosh/inapp/b;->a:Lcom/pushwoosh/inapp/f/c;

    return-object v0
.end method

.method public static b()Lcom/pushwoosh/inapp/f/d;
    .locals 3

    sget-object v0, Lcom/pushwoosh/inapp/b;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/pushwoosh/inapp/b;->d:Lcom/pushwoosh/inapp/f/d;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Lcom/pushwoosh/inapp/f/b;

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/pushwoosh/inapp/f/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/pushwoosh/inapp/b;->d:Lcom/pushwoosh/inapp/f/d;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/pushwoosh/inapp/b;->d:Lcom/pushwoosh/inapp/f/d;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static c()Lcom/pushwoosh/inapp/e/c;
    .locals 9

    sget-object v0, Lcom/pushwoosh/inapp/b;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/pushwoosh/inapp/b;->f:Lcom/pushwoosh/inapp/e/c;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Lcom/pushwoosh/inapp/e/c;

    invoke-static {}, Lcom/pushwoosh/internal/network/NetworkModule;->getRequestManager()Lcom/pushwoosh/internal/network/RequestManager;

    move-result-object v3

    invoke-static {}, Lcom/pushwoosh/inapp/b;->b()Lcom/pushwoosh/inapp/f/d;

    move-result-object v4

    invoke-static {}, Lcom/pushwoosh/inapp/b;->d()Lcom/pushwoosh/inapp/e/a/c;

    move-result-object v5

    invoke-static {}, Lcom/pushwoosh/inapp/b;->e()Lcom/pushwoosh/inapp/c/b;

    move-result-object v6

    invoke-static {}, Lcom/pushwoosh/inapp/b;->a()Lcom/pushwoosh/inapp/f/c;

    move-result-object v7

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v8

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/pushwoosh/inapp/e/c;-><init>(Lcom/pushwoosh/internal/network/RequestManager;Lcom/pushwoosh/inapp/f/d;Lcom/pushwoosh/inapp/e/a/c;Lcom/pushwoosh/inapp/c/b;Lcom/pushwoosh/inapp/f/c;Lcom/pushwoosh/repository/RegistrationPrefs;)V

    sput-object v1, Lcom/pushwoosh/inapp/b;->f:Lcom/pushwoosh/inapp/e/c;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/pushwoosh/inapp/b;->f:Lcom/pushwoosh/inapp/e/c;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static d()Lcom/pushwoosh/inapp/e/a/c;
    .locals 1

    sget-object v0, Lcom/pushwoosh/inapp/b;->b:Lcom/pushwoosh/inapp/e/a/c;

    return-object v0
.end method

.method private static e()Lcom/pushwoosh/inapp/c/b;
    .locals 1

    sget-object v0, Lcom/pushwoosh/inapp/b;->c:Lcom/pushwoosh/inapp/c/b;

    return-object v0
.end method

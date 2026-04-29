.class public Lcom/pushwoosh/inbox/internal/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/pushwoosh/inbox/d/b;

.field private static final b:Ljava/lang/Object;

.field private static volatile c:Lcom/pushwoosh/inbox/e/a;

.field private static final d:Ljava/lang/Object;

.field private static e:Lcom/pushwoosh/inbox/e/b/b;

.field private static f:Lcom/pushwoosh/internal/network/RequestManager;

.field private static g:Lcom/pushwoosh/internal/command/CommandApplayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/pushwoosh/inbox/internal/b;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/pushwoosh/inbox/internal/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/pushwoosh/inbox/d/b;
    .locals 5

    sget-object v0, Lcom/pushwoosh/inbox/internal/b;->a:Lcom/pushwoosh/inbox/d/b;

    if-nez v0, :cond_3

    sget-object v0, Lcom/pushwoosh/inbox/internal/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/pushwoosh/inbox/internal/b;->a:Lcom/pushwoosh/inbox/d/b;

    if-nez v1, :cond_2

    sget-object v1, Lcom/pushwoosh/inbox/internal/b;->f:Lcom/pushwoosh/internal/network/RequestManager;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/pushwoosh/inbox/internal/b;->g:Lcom/pushwoosh/internal/command/CommandApplayer;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/pushwoosh/inbox/d/b;

    sget-object v2, Lcom/pushwoosh/inbox/internal/b;->f:Lcom/pushwoosh/internal/network/RequestManager;

    invoke-static {}, Lcom/pushwoosh/inbox/internal/b;->b()Lcom/pushwoosh/inbox/e/a;

    move-result-object v3

    sget-object v4, Lcom/pushwoosh/inbox/internal/b;->g:Lcom/pushwoosh/internal/command/CommandApplayer;

    invoke-direct {v1, v2, v3, v4}, Lcom/pushwoosh/inbox/d/b;-><init>(Lcom/pushwoosh/internal/network/RequestManager;Lcom/pushwoosh/inbox/e/a;Lcom/pushwoosh/internal/command/CommandApplayer;)V

    sput-object v1, Lcom/pushwoosh/inbox/internal/b;->a:Lcom/pushwoosh/inbox/d/b;

    const/4 v1, 0x0

    sput-object v1, Lcom/pushwoosh/inbox/internal/b;->f:Lcom/pushwoosh/internal/network/RequestManager;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incorrect state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incorrect state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_1
    sget-object v0, Lcom/pushwoosh/inbox/internal/b;->a:Lcom/pushwoosh/inbox/d/b;

    return-object v0
.end method

.method public static a(Lcom/pushwoosh/inbox/e/b/b;Lcom/pushwoosh/internal/network/RequestManager;Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;)V
    .locals 1

    sput-object p0, Lcom/pushwoosh/inbox/internal/b;->e:Lcom/pushwoosh/inbox/e/b/b;

    sput-object p1, Lcom/pushwoosh/inbox/internal/b;->f:Lcom/pushwoosh/internal/network/RequestManager;

    new-instance p0, Lcom/pushwoosh/internal/command/CommandApplayer;

    invoke-direct {p0}, Lcom/pushwoosh/internal/command/CommandApplayer;-><init>()V

    sput-object p0, Lcom/pushwoosh/inbox/internal/b;->g:Lcom/pushwoosh/internal/command/CommandApplayer;

    const-string p0, "pwInbox"

    invoke-interface {p2, p0}, Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;->providePrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {}, Lcom/pushwoosh/Pushwoosh;->getInstance()Lcom/pushwoosh/Pushwoosh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/Pushwoosh;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "appId"

    if-nez p0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/pushwoosh/inbox/internal/b;->e:Lcom/pushwoosh/inbox/e/b/b;

    invoke-virtual {p0}, Lcom/pushwoosh/inbox/e/b/b;->a()V

    :cond_2
    return-void
.end method

.method private static b()Lcom/pushwoosh/inbox/e/a;
    .locals 3

    sget-object v0, Lcom/pushwoosh/inbox/internal/b;->c:Lcom/pushwoosh/inbox/e/a;

    if-nez v0, :cond_2

    sget-object v0, Lcom/pushwoosh/inbox/internal/b;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/pushwoosh/inbox/internal/b;->c:Lcom/pushwoosh/inbox/e/a;

    if-nez v1, :cond_1

    sget-object v1, Lcom/pushwoosh/inbox/internal/b;->e:Lcom/pushwoosh/inbox/e/b/b;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/pushwoosh/inbox/e/b/a;

    sget-object v2, Lcom/pushwoosh/inbox/internal/b;->e:Lcom/pushwoosh/inbox/e/b/b;

    invoke-direct {v1, v2}, Lcom/pushwoosh/inbox/e/b/a;-><init>(Lcom/pushwoosh/inbox/e/b/b;)V

    sput-object v1, Lcom/pushwoosh/inbox/internal/b;->c:Lcom/pushwoosh/inbox/e/a;

    const/4 v1, 0x0

    sput-object v1, Lcom/pushwoosh/inbox/internal/b;->e:Lcom/pushwoosh/inbox/e/b/b;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incorrect state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    sget-object v0, Lcom/pushwoosh/inbox/internal/b;->c:Lcom/pushwoosh/inbox/e/a;

    return-object v0
.end method

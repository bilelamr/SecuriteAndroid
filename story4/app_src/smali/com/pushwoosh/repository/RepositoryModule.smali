.class public Lcom/pushwoosh/repository/RepositoryModule;
.super Ljava/lang/Object;


# static fields
.field private static localNotificationStorage:Lcom/pushwoosh/repository/m;

.field private static lockScreenMediaStorage:Lcom/pushwoosh/repository/n;

.field private static notificationPreferences:Lcom/pushwoosh/repository/p;

.field private static pushBundleStorage:Lcom/pushwoosh/repository/q;

.field private static registrationPreferences:Lcom/pushwoosh/repository/RegistrationPrefs;

.field private static requestStorage:Lcom/pushwoosh/internal/network/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createLocalNotificationStorage()V
    .locals 3

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Incorrect state of app. Context is null"

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Lcom/pushwoosh/repository/c;

    invoke-direct {v1, v0}, Lcom/pushwoosh/repository/c;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/pushwoosh/repository/m;

    invoke-direct {v2, v1}, Lcom/pushwoosh/repository/m;-><init>(Lcom/pushwoosh/repository/c;)V

    sput-object v2, Lcom/pushwoosh/repository/RepositoryModule;->localNotificationStorage:Lcom/pushwoosh/repository/m;

    new-instance v1, Lcom/pushwoosh/j;

    invoke-direct {v1, v0}, Lcom/pushwoosh/j;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static getLocalNotificationStorage()Lcom/pushwoosh/repository/m;
    .locals 1

    sget-object v0, Lcom/pushwoosh/repository/RepositoryModule;->localNotificationStorage:Lcom/pushwoosh/repository/m;

    return-object v0
.end method

.method public static getLockScreenMediaStorage()Lcom/pushwoosh/repository/n;
    .locals 1

    sget-object v0, Lcom/pushwoosh/repository/RepositoryModule;->lockScreenMediaStorage:Lcom/pushwoosh/repository/n;

    return-object v0
.end method

.method public static getNotificationPreferences()Lcom/pushwoosh/repository/p;
    .locals 1

    sget-object v0, Lcom/pushwoosh/repository/RepositoryModule;->notificationPreferences:Lcom/pushwoosh/repository/p;

    return-object v0
.end method

.method public static getPushBundleStorage()Lcom/pushwoosh/repository/q;
    .locals 1

    sget-object v0, Lcom/pushwoosh/repository/RepositoryModule;->pushBundleStorage:Lcom/pushwoosh/repository/q;

    return-object v0
.end method

.method public static getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;
    .locals 1

    sget-object v0, Lcom/pushwoosh/repository/RepositoryModule;->registrationPreferences:Lcom/pushwoosh/repository/RegistrationPrefs;

    return-object v0
.end method

.method public static getRequestStorage()Lcom/pushwoosh/internal/network/f;
    .locals 1

    sget-object v0, Lcom/pushwoosh/repository/RepositoryModule;->requestStorage:Lcom/pushwoosh/internal/network/f;

    return-object v0
.end method

.method public static init(Lcom/pushwoosh/internal/utils/d;Lcom/pushwoosh/internal/utils/k;Lcom/pushwoosh/repository/d;)V
    .locals 1

    invoke-static {p0}, Lcom/pushwoosh/repository/RepositoryModule;->migratePrefsIfNeeded(Lcom/pushwoosh/internal/utils/d;)V

    sget-object v0, Lcom/pushwoosh/repository/RepositoryModule;->notificationPreferences:Lcom/pushwoosh/repository/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/pushwoosh/repository/p;

    invoke-direct {v0, p0}, Lcom/pushwoosh/repository/p;-><init>(Lcom/pushwoosh/internal/utils/d;)V

    sput-object v0, Lcom/pushwoosh/repository/RepositoryModule;->notificationPreferences:Lcom/pushwoosh/repository/p;

    :cond_0
    sget-object v0, Lcom/pushwoosh/repository/RepositoryModule;->registrationPreferences:Lcom/pushwoosh/repository/RegistrationPrefs;

    if-nez v0, :cond_1

    new-instance v0, Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-direct {v0, p0, p2}, Lcom/pushwoosh/repository/RegistrationPrefs;-><init>(Lcom/pushwoosh/internal/utils/d;Lcom/pushwoosh/repository/d;)V

    sput-object v0, Lcom/pushwoosh/repository/RepositoryModule;->registrationPreferences:Lcom/pushwoosh/repository/RegistrationPrefs;

    :cond_1
    sget-object p0, Lcom/pushwoosh/repository/RepositoryModule;->localNotificationStorage:Lcom/pushwoosh/repository/m;

    if-nez p0, :cond_2

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->createLocalNotificationStorage()V

    :cond_2
    sget-object p0, Lcom/pushwoosh/repository/RepositoryModule;->requestStorage:Lcom/pushwoosh/internal/network/f;

    if-nez p0, :cond_3

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p2, Lcom/pushwoosh/internal/network/f;

    invoke-direct {p2, p0, p1}, Lcom/pushwoosh/internal/network/f;-><init>(Landroid/content/Context;Lcom/pushwoosh/internal/utils/k;)V

    sput-object p2, Lcom/pushwoosh/repository/RepositoryModule;->requestStorage:Lcom/pushwoosh/internal/network/f;

    :cond_3
    sget-object p0, Lcom/pushwoosh/repository/RepositoryModule;->lockScreenMediaStorage:Lcom/pushwoosh/repository/n;

    if-nez p0, :cond_4

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Lcom/pushwoosh/repository/LockScreenMediaStorageImpl;

    invoke-direct {p1, p0}, Lcom/pushwoosh/repository/LockScreenMediaStorageImpl;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/pushwoosh/repository/RepositoryModule;->lockScreenMediaStorage:Lcom/pushwoosh/repository/n;

    :cond_4
    sget-object p0, Lcom/pushwoosh/repository/RepositoryModule;->pushBundleStorage:Lcom/pushwoosh/repository/q;

    if-nez p0, :cond_5

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Lcom/pushwoosh/repository/PushBundleStorageImpl;

    invoke-direct {p1, p0}, Lcom/pushwoosh/repository/PushBundleStorageImpl;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/pushwoosh/repository/RepositoryModule;->pushBundleStorage:Lcom/pushwoosh/repository/q;

    :cond_5
    return-void
.end method

.method private static migratePrefsIfNeeded(Lcom/pushwoosh/internal/utils/d;)V
    .locals 4

    const-string v0, "Migrate prefs if needed"

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;)V

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getPrefsMigration()Lcom/pushwoosh/internal/platform/prefs/migration/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/pushwoosh/internal/platform/prefs/d;->c()Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start migration with prevPrefsProvider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lcom/pushwoosh/repository/RegistrationPrefs;->provideMigrationScheme(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;)Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/pushwoosh/repository/p;->a(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;)Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Lcom/pushwoosh/internal/utils/d;->m()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pushwoosh/internal/Plugin;

    invoke-interface {v3, v1}, Lcom/pushwoosh/internal/Plugin;->getPrefsMigrationSchemes(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;)Ljava/util/Collection;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v0, v2}, Lcom/pushwoosh/internal/platform/prefs/migration/b;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public static setLocalNotificationStorage(Lcom/pushwoosh/repository/m;)V
    .locals 0

    sput-object p0, Lcom/pushwoosh/repository/RepositoryModule;->localNotificationStorage:Lcom/pushwoosh/repository/m;

    return-void
.end method

.method public static setNotificationPreferences(Lcom/pushwoosh/repository/p;)V
    .locals 0

    sput-object p0, Lcom/pushwoosh/repository/RepositoryModule;->notificationPreferences:Lcom/pushwoosh/repository/p;

    return-void
.end method

.method public static setRegistrationPreferences(Lcom/pushwoosh/repository/RegistrationPrefs;)V
    .locals 0

    sput-object p0, Lcom/pushwoosh/repository/RepositoryModule;->registrationPreferences:Lcom/pushwoosh/repository/RegistrationPrefs;

    return-void
.end method

.method public static setRequestStorage(Lcom/pushwoosh/internal/network/f;)V
    .locals 0

    sput-object p0, Lcom/pushwoosh/repository/RepositoryModule;->requestStorage:Lcom/pushwoosh/internal/network/f;

    return-void
.end method

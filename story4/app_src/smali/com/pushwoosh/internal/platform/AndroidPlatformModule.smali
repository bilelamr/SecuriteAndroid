.class public final Lcom/pushwoosh/internal/platform/AndroidPlatformModule;
.super Ljava/lang/Object;


# static fields
.field public static final NULL_CONTEXT_MESSAGE:Ljava/lang/String; = "Incorrect state of app. Context is null"

.field private static final a:Lcom/pushwoosh/internal/platform/AndroidPlatformModule;


# instance fields
.field private b:Lcom/pushwoosh/internal/platform/b/b;

.field private c:Lcom/pushwoosh/internal/platform/a/a;

.field private d:Lcom/pushwoosh/internal/platform/d/b;

.field private e:Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;

.field private f:Lcom/pushwoosh/internal/platform/c/b;

.field private g:Lcom/pushwoosh/internal/platform/a;

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/pushwoosh/internal/platform/prefs/migration/b;

.field private j:Lcom/pushwoosh/internal/utils/j;

.field private k:Lcom/pushwoosh/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;

    invoke-direct {v0}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;-><init>()V

    sput-object v0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->a:Lcom/pushwoosh/internal/platform/AndroidPlatformModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/pushwoosh/internal/utils/j;

    invoke-direct {v0}, Lcom/pushwoosh/internal/utils/j;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->j:Lcom/pushwoosh/internal/utils/j;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->h:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/pushwoosh/internal/platform/prefs/d;->b()Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->e:Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;

    invoke-static {}, Lcom/pushwoosh/internal/platform/prefs/d;->a()Lcom/pushwoosh/internal/platform/prefs/migration/b;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->i:Lcom/pushwoosh/internal/platform/prefs/migration/b;

    new-instance v0, Lcom/pushwoosh/internal/platform/b/a;

    invoke-direct {v0, p1}, Lcom/pushwoosh/internal/platform/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->b:Lcom/pushwoosh/internal/platform/b/b;

    new-instance v0, Lcom/pushwoosh/internal/platform/a/b;

    invoke-direct {v0, p1}, Lcom/pushwoosh/internal/platform/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->c:Lcom/pushwoosh/internal/platform/a/a;

    new-instance v0, Lcom/pushwoosh/internal/platform/d/a;

    invoke-direct {v0, p1}, Lcom/pushwoosh/internal/platform/d/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->d:Lcom/pushwoosh/internal/platform/d/b;

    new-instance v0, Lcom/pushwoosh/internal/platform/c/a;

    invoke-direct {v0, p1}, Lcom/pushwoosh/internal/platform/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->f:Lcom/pushwoosh/internal/platform/c/b;

    new-instance v0, Lcom/pushwoosh/internal/platform/a;

    invoke-direct {v0, p1}, Lcom/pushwoosh/internal/platform/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->g:Lcom/pushwoosh/internal/platform/a;

    new-instance v0, Lcom/pushwoosh/m;

    iget-object v1, p0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->b:Lcom/pushwoosh/internal/platform/b/b;

    invoke-interface {v1}, Lcom/pushwoosh/internal/platform/b/b;->e()Landroid/app/NotificationManager;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/pushwoosh/m;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;)V

    iput-object v0, p0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->k:Lcom/pushwoosh/m;

    return-void
.end method

.method private static a()Z
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->a:Lcom/pushwoosh/internal/platform/AndroidPlatformModule;

    iget-object v0, v0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getAppInfoProvider()Lcom/pushwoosh/internal/platform/a/a;
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->a:Lcom/pushwoosh/internal/platform/AndroidPlatformModule;

    iget-object v0, v0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->c:Lcom/pushwoosh/internal/platform/a/a;

    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->a:Lcom/pushwoosh/internal/platform/AndroidPlatformModule;

    iget-object v0, v0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->h:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :goto_0
    return-object v0
.end method

.method public static getApplicationOpenDetector()Lcom/pushwoosh/internal/platform/a;
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->a:Lcom/pushwoosh/internal/platform/AndroidPlatformModule;

    iget-object v0, v0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->g:Lcom/pushwoosh/internal/platform/a;

    return-object v0
.end method

.method public static getInstance()Lcom/pushwoosh/internal/platform/AndroidPlatformModule;
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->a:Lcom/pushwoosh/internal/platform/AndroidPlatformModule;

    return-object v0
.end method

.method public static getManagerProvider()Lcom/pushwoosh/internal/platform/b/b;
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->a:Lcom/pushwoosh/internal/platform/AndroidPlatformModule;

    iget-object v0, v0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->b:Lcom/pushwoosh/internal/platform/b/b;

    return-object v0
.end method

.method public static getPrefsMigration()Lcom/pushwoosh/internal/platform/prefs/migration/b;
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->a:Lcom/pushwoosh/internal/platform/AndroidPlatformModule;

    iget-object v0, v0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->i:Lcom/pushwoosh/internal/platform/prefs/migration/b;

    return-object v0
.end method

.method public static getPrefsProvider()Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->a:Lcom/pushwoosh/internal/platform/AndroidPlatformModule;

    iget-object v0, v0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->e:Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;

    return-object v0
.end method

.method public static getReceiverProvider()Lcom/pushwoosh/internal/platform/c/b;
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->a:Lcom/pushwoosh/internal/platform/AndroidPlatformModule;

    iget-object v0, v0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->f:Lcom/pushwoosh/internal/platform/c/b;

    return-object v0
.end method

.method public static getResourceProvider()Lcom/pushwoosh/internal/platform/d/b;
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->a:Lcom/pushwoosh/internal/platform/AndroidPlatformModule;

    iget-object v0, v0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->d:Lcom/pushwoosh/internal/platform/d/b;

    return-object v0
.end method

.method public static getTimeProvide()Lcom/pushwoosh/internal/utils/j;
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->a:Lcom/pushwoosh/internal/platform/AndroidPlatformModule;

    iget-object v0, v0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->j:Lcom/pushwoosh/internal/utils/j;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->init(Landroid/content/Context;Z)V

    return-void
.end method

.method public static init(Landroid/content/Context;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object p1, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->a:Lcom/pushwoosh/internal/platform/AndroidPlatformModule;

    invoke-direct {p1, p0}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPermissionController()Lcom/pushwoosh/m;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->k:Lcom/pushwoosh/m;

    return-object v0
.end method

.method public getTimeProvider()Lcom/pushwoosh/internal/utils/j;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->j:Lcom/pushwoosh/internal/utils/j;

    return-object v0
.end method
